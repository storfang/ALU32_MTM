module mtm_Alu_deserializer (

  input wire clk,
  input wire rst_n,
  input wire sin,

  output reg [31:0] A,
  output reg [31:0] B,
  output reg [7:0] CTL
);

localparam IDLE = 3'b000,
           LOAD = 3'b001,
           LOAD_DATA = 3'b010,
           STOP = 3'b011,
           SEND = 3'b100,
           ERROR = 3'b101;

reg [3:0] bit_counter_nxt = 0,
          bit_counter;
reg [4:0] byte_counter_nxt = 0,
          byte_counter;

reg [2:0] state_nxt = IDLE,
          state;

reg [3:0] CRC;
reg [71:0]  OUT_NXT = 72'b111111111111111111111111111111111111111111111111111111111111111111111111,
            OUT;

always @(posedge clk)
    begin
      if (!rst_n)
        begin
          state <= IDLE;
          bit_counter_nxt <= 0;
          byte_counter_nxt <= 0;
          OUT_NXT <= 72'b111111111111111111111111111111111111111111111111111111111111111111111111;
        end
      else
        begin
          state <= state_nxt;
          bit_counter <= bit_counter_nxt;
          byte_counter <= byte_counter_nxt;
          OUT <= OUT_NXT;
        end
    end

always @*
    begin
      case(state)
        IDLE:
          begin
          A = 32'b11111111111111111111111111111111;
          B = 32'b11111111111111111111111111111111;
          CTL = 8'b11111111;
          $display("idle   %d", sin);
            if (sin == 0)
              begin
                state_nxt = LOAD;
              end
            else
              begin
                state_nxt = IDLE;
              end
          end
      LOAD:
          begin
          $display("load, %d%d", sin, byte_counter);
            if (byte_counter != 8 && sin == 0)
              begin
                state_nxt = LOAD_DATA;
              end
            else if (byte_counter == 8 && sin == 1)
              begin
                state_nxt = LOAD_DATA;
              end
            else
              begin
                state_nxt = ERROR;
              end
          end
      LOAD_DATA:
          begin
          $display("load data, %d  %d     %b", bit_counter, sin, OUT);
            OUT_NXT = {OUT,sin};
            if (bit_counter == 7)
              begin
                state_nxt = STOP;
                bit_counter_nxt = 0;
              end
            else if (bit_counter == 0 && byte_counter == 8 && sin != 0 )
              begin
                state_nxt = ERROR;
              end
            else
              begin
                state_nxt = LOAD_DATA;
                bit_counter_nxt = bit_counter +1;
              end
          end
      STOP:
          begin
          if(sin == 1)
            begin
              if (byte_counter == 8)
                begin
                  state_nxt = SEND;
                  byte_counter_nxt = 0;
                end
              else
                begin
                  state_nxt = IDLE;
                  byte_counter_nxt = byte_counter +1;
                end
            end
          else
            begin
              state_nxt = ERROR;
            end
          end
      SEND:

        begin

          bit_counter_nxt = 0;
          CRC = makeCRC({OUT[71:40],OUT[39:8],1'b1,OUT[6:4]},4'b0000);
          $display("send data   %b %b", CRC, OUT);
          if (CRC == OUT[3:0])
            begin
              state_nxt = IDLE;
              B = OUT[71:40];
              A = OUT[39:8];
              CTL = OUT[7:0];
              byte_counter_nxt = 0;
            end
          else
            begin
              byte_counter_nxt = 15;
              state_nxt = ERROR;
            end

        end
     ERROR:
        begin
        $display("error data");
          state_nxt = IDLE;
          byte_counter_nxt = 0;
          bit_counter_nxt = 0;
          OUT_NXT = 72'b111111111111111111111111111111111111111111111111111111111111111111111111;
          if (byte_counter != 15)
            begin
              CTL = 8'b11001001;  // data error
            end
          else
            begin
              CTL = 8'b10100101; // crc error
            end
          end
      endcase
    end

    function [3:0] makeCRC;
      // polynomial: x^4 + x^1 + 1
      // data width: 68
      // convention: the first serial bit is D[67]

        input [67:0] Data;
        input [3:0] crc;
        reg [67:0] d;
        reg [3:0] c;
        reg [3:0] newcrc;
        begin
          d = Data;
          c = crc;

          newcrc[0] = d[66] ^ d[64] ^ d[63] ^ d[60] ^ d[56] ^ d[55] ^ d[54] ^ d[53] ^ d[51] ^ d[49] ^ d[48] ^ d[45] ^ d[41] ^ d[40] ^ d[39] ^ d[38] ^ d[36] ^ d[34] ^ d[33] ^ d[30] ^ d[26] ^ d[25] ^ d[24] ^ d[23] ^ d[21] ^ d[19] ^ d[18] ^ d[15] ^ d[11] ^ d[10] ^ d[9] ^ d[8] ^ d[6] ^ d[4] ^ d[3] ^ d[0] ^ c[0] ^ c[2];
          newcrc[1] = d[67] ^ d[66] ^ d[65] ^ d[63] ^ d[61] ^ d[60] ^ d[57] ^ d[53] ^ d[52] ^ d[51] ^ d[50] ^ d[48] ^ d[46] ^ d[45] ^ d[42] ^ d[38] ^ d[37] ^ d[36] ^ d[35] ^ d[33] ^ d[31] ^ d[30] ^ d[27] ^ d[23] ^ d[22] ^ d[21] ^ d[20] ^ d[18] ^ d[16] ^ d[15] ^ d[12] ^ d[8] ^ d[7] ^ d[6] ^ d[5] ^ d[3] ^ d[1] ^ d[0] ^ c[1] ^ c[2] ^ c[3];
          newcrc[2] = d[67] ^ d[66] ^ d[64] ^ d[62] ^ d[61] ^ d[58] ^ d[54] ^ d[53] ^ d[52] ^ d[51] ^ d[49] ^ d[47] ^ d[46] ^ d[43] ^ d[39] ^ d[38] ^ d[37] ^ d[36] ^ d[34] ^ d[32] ^ d[31] ^ d[28] ^ d[24] ^ d[23] ^ d[22] ^ d[21] ^ d[19] ^ d[17] ^ d[16] ^ d[13] ^ d[9] ^ d[8] ^ d[7] ^ d[6] ^ d[4] ^ d[2] ^ d[1] ^ c[0] ^ c[2] ^ c[3];
          newcrc[3] = d[67] ^ d[65] ^ d[63] ^ d[62] ^ d[59] ^ d[55] ^ d[54] ^ d[53] ^ d[52] ^ d[50] ^ d[48] ^ d[47] ^ d[44] ^ d[40] ^ d[39] ^ d[38] ^ d[37] ^ d[35] ^ d[33] ^ d[32] ^ d[29] ^ d[25] ^ d[24] ^ d[23] ^ d[22] ^ d[20] ^ d[18] ^ d[17] ^ d[14] ^ d[10] ^ d[9] ^ d[8] ^ d[7] ^ d[5] ^ d[3] ^ d[2] ^ c[1] ^ c[3];
          makeCRC = newcrc;
        end
endfunction


endmodule

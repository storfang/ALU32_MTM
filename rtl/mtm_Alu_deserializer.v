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

reg [3:0] bit_counter_nxt,
          bit_counter;
reg [4:0] byte_counter_nxt,
          byte_counter;

reg       crc_error_nxt,
          crc_error;

reg       op_error_nxt,
          op_error;

reg [31:0] A_nxt,
           B_nxt;

reg [7:0]  CTL_nxt;

reg [2:0] state_nxt = IDLE,
          state;

reg [3:0] CRC;
reg [71:0]  Buff_nxt,
            Buff;

always @(posedge clk)
    begin
      if (!rst_n)
        begin
          state <= IDLE;
          bit_counter <= 0;
          byte_counter <= 0;
          crc_error <= 0;
          op_error <= 0;
          Buff <= 72'b111111111111111111111111111111111111111111111111111111111111111111111111;
          A <= 32'b11111111111111111111111111111111;
          B <= 32'b11111111111111111111111111111111;
          CTL <= 8'b11111111;
        end
      else
        begin
          state <= state_nxt;
          bit_counter <= bit_counter_nxt;
          byte_counter <= byte_counter_nxt;
          Buff <= Buff_nxt;
          crc_error <= crc_error_nxt;
          op_error <= op_error_nxt;
          A <= A_nxt;
          B <= B_nxt;
          CTL <= CTL_nxt;
        end
    end

always @*
    begin
    state_nxt = state;
    bit_counter_nxt = bit_counter;
    byte_counter_nxt = byte_counter;
    Buff_nxt = Buff;
    crc_error_nxt = crc_error;
    op_error_nxt = op_error;
    A_nxt = A;
    B_nxt = B;
    CTL_nxt = CTL;
      case(state)
        IDLE:
          begin
          A_nxt = 32'b11111111111111111111111111111111;
          B_nxt = 32'b11111111111111111111111111111111;
          CTL_nxt = 8'b11111111;
          //$display("idle   %d", sin);
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
          //$display("load, %d%d", sin, byte_counter);
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
          //$display("load data, %d  %d     %b", bit_counter, sin, Buff);
            Buff_nxt = {Buff,sin};
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
          byte_counter_nxt = 0;
          bit_counter_nxt = 0;
          CRC = makeCRC({Buff[71:40],Buff[39:8],1'b1,Buff[6:4]},4'b0000);
          //$display("send data   %b %b", CRC, Buff);
          if (CRC == Buff[3:0])
            begin
              if (Buff[6:4]==3'b000 || Buff[6:4]==3'b001 || Buff[6:4]==3'b100 || Buff[6:4]==3'b101)
               begin
                state_nxt = IDLE;
                B_nxt = Buff[71:40];
                A_nxt = Buff[39:8];
                CTL_nxt = Buff[7:0];
                //$display("send data   CTL = %b POWINNO = %b", CTL_nxt, Buff[7:0]);
               end
              else
               begin
                op_error_nxt = 1;
                state_nxt = ERROR;
               end
            end
          else
            begin
              crc_error_nxt = 1;
              state_nxt = ERROR;
            end

        end
     ERROR:
        begin
        //$display("error data");
          crc_error_nxt = 0;
          op_error_nxt = 0;
          state_nxt = IDLE;
          byte_counter_nxt = 0;
          bit_counter_nxt = 0;
          Buff_nxt = 72'b111111111111111111111111111111111111111111111111111111111111111111111111;
          if (crc_error == 0 && op_error == 0)
            begin
              CTL_nxt = 8'b11001001;  // data error
            end
          else if (crc_error == 1)
            begin
              CTL_nxt = 8'b10100101; // crc error
            end
          else if (op_error == 1)
            begin
              CTL_nxt = 8'b10010011;
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

module mtm_Alu_serializer(
  input  wire clk,
  input  wire rst_n,
  input wire [31:0] C,
  input wire [7:0] CTL_out,

  output reg sout
);

localparam IDLE = 3'b000,
           START_BIT = 3'b001,
           PACKET_BIT = 3'b010,
           DATA = 3'b011,
           STOP_BIT = 3'b100;

reg [7:0] bit_counter_nxt,
          bit_counter;

reg [7:0] byte_counter_nxt,
          byte_counter;

reg [2:0] state_nxt,
          state;

reg [31:0] C_buff_nxt,
           C_buff;

reg [7:0]  CTL_buff_nxt,
           CTL_buff;

reg sout_nxt;



always @(posedge clk)
    begin
      if (!rst_n)
        begin
          state <= IDLE;
          bit_counter <= 0;
          byte_counter <= 0;
          C_buff <= 0;
          CTL_buff <= 0;
          sout <= 1;
        end
      else
        begin
          state <= state_nxt;
          bit_counter <= bit_counter_nxt;
          byte_counter <= byte_counter_nxt;
          C_buff <= C_buff_nxt;
          CTL_buff <= CTL_buff_nxt;
          sout <= sout_nxt;
        end
end

always @*
    begin
    state_nxt = state;
    bit_counter_nxt = bit_counter;
    byte_counter_nxt = byte_counter;
    C_buff_nxt = C_buff;
    CTL_buff_nxt = CTL_buff;
    sout_nxt = sout;
      case(state)
        IDLE:
         begin
         //$display("idle, A = %b  CTL = %b  CTL 7 = %b", C, CTL_out, CTL_out[7]);
          sout_nxt = 1;
          if (CTL_out[7] == 0)
            begin
            //$display("jestem w 1 ifie");
              state_nxt = START_BIT;
              byte_counter_nxt = 5;
              C_buff_nxt = C;
              CTL_buff_nxt = CTL_out;
            end
          else if (CTL_out == 8'b11001001 || CTL_out == 8'b10010011 || CTL_out == 8'b10100101)
            begin
            //$display("jestem w 2 ifie");
              state_nxt = START_BIT;
              byte_counter_nxt = 1;
              C_buff_nxt = C;
              CTL_buff_nxt = CTL_out;
            end
          else
            begin
              //$display("jestem tu");
              state_nxt = IDLE;
              bit_counter_nxt = 0;
              byte_counter_nxt = 0;
            end
         end
        START_BIT:
          begin
          //$display("start bit");

            state_nxt = PACKET_BIT;
            sout_nxt = 0;
          end
        PACKET_BIT:
         begin
         //$display("packet bit");

          if (byte_counter == 1)
            begin
              sout_nxt = 1;
            end
          else
            begin
              sout_nxt = 0;
            end
          state_nxt = DATA;
          bit_counter_nxt = 0;
         end
        DATA:
         begin
         //$display("start bit, byte = %d  bit = %d", byte_counter, bit_counter);

          if (byte_counter == 1)
            begin
              sout_nxt = CTL_buff[7 - bit_counter];
            end
          else
            begin
              sout_nxt = C_buff[ ((byte_counter - 1)  * 8) - bit_counter - 1];
            end
          if (bit_counter == 7)
            begin
              state_nxt = STOP_BIT;
              byte_counter_nxt = byte_counter - 1;
            end
          else
            begin
              bit_counter_nxt = bit_counter + 1;
              state_nxt = DATA;
            end
         end
        STOP_BIT:
          begin
          //$display("STOP bit   %d", byte_counter);

            sout_nxt = 1;
            if (byte_counter == 0)
              begin
                state_nxt = IDLE;
              end
            else
              begin
                state_nxt = START_BIT;
              end
          end
      endcase
  end


endmodule

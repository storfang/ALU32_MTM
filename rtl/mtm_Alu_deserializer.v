module mtm_Alu_deserializer (

  input wire clk,
  input wire rst_n,
  input wire sin,

  output reg [31:0] A,
  output reg [31:0] B,
  output reg [7:0] CTL
);

localparam IDLE = 2'd0,
           LOAD = 2'd1,
           LOAD_DATA = 2'd2,
           LOAD_CMD = 2'd3;

reg [3:0] bit_counter_nxt = 0,
          bit_counter,
          byte_counter_nxt = 0,
          byte_counter;


reg [1:0] state_nxt = IDLE,
          state;

reg [3:0] CRC;
reg [11:0] OUT;

always @(posedge clk)
    begin
      if (!rst_n)
        begin
          state = IDLE;
          bit_counter = 0;
          CTL = 8'b11111111;
          OUT = 11'b11111111111;
        end
      else
        begin
          state = state_nxt;
          bit_counter = bit_counter_nxt;
        end
    end

always @*
    begin
      case(state)
        IDLE:
          begin
            if (sin == 0)
              begin
                OUT =  {OUT, sin};
                state_nxt = LOAD;
              end
            else
              begin
                state_nxt = IDLE;
              end
          end
      LOAD:
          begin
            OUT =  {OUT, sin};
            if (byte_counter == 0)
              begin
                if (sin == 0)
                  begin
                    state_nxt = LOAD_DATA;
                  end
                else
                  begin
                    state_nxt = ERROR;
                  end
              end
            else

          end
      LOAD_DATA:
          begin



          end






      endcase
    end



endmodule

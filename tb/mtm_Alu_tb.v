
/******************************************************************************
 * (C) Copyright 2019 AGH UST All Rights Reserved
 *
 * MODULE:    mtm_Alu tb
 * PROJECT:   PPCU_VLSI
 * AUTHORS: Mateusz Oleszkowicz, Mikołaj Jarosławski
 * DATE: 07.09.2019
 * ------------------------------------------------------------------------------
 * This module (TB) provides test patterns for the ALU, reads data from the ALU and 
 * verifies if the operation result is correct.
 * 
 * The TB must include:
 * - task send_byte to send a CMD or CTL command to the ALU
 * - task send_calculation_data that will send 9 bytes to the ALU for given
 *   operands and operation
 * - procedural block for capturing the input data from the ALU
 * - task compare to compare the result from the ALU and the expected data.
 * 
 * The test vectors must provide at least:
 * - sending max (0xFFFF) and min (0) data with all the ALU operations (AND OR, ADD,SUB)
 * - sending 1000 random valid data
 * - sending invalid data (wrong number of DATA packets before CTL packet)
 * - sending data with CRC error
 * 
 * The testbench should print final PASS/FAIL text information.
 */

module mtm_Alu_tb (
    output reg clk,
    output reg rst_n,
    output reg sin,
    input wire sout
) ;


reg [67:0] data;

reg [54:0] out,
		   out_nxt;
reg [31:0] A, 	
		   B;
		   
reg [7:0] CTL;

reg [2:0] OP;

reg pass,
	passes;

localparam
	AND = 3'b000,
	OR = 3'b001,
	ADD = 3'b100,
	SUB = 3'b101;	
				
integer send_byte_counter,
		program_counter,
		send_data_counter,
		frame_counter,
		program_counter_nxt,
		frame_counter_nxt;


task send_byte;
	input [7:0] byte;
	input [1:0] C;
	begin
		for(send_byte_counter=11;send_byte_counter>0;send_byte_counter=send_byte_counter-1) 
		begin
			@(posedge clk); 
			begin
			if (C == 0) 
			  begin
				  if (send_byte_counter == 11 || send_byte_counter == 10) #2sin = 0;
				  else if (send_byte_counter == 1) #2sin = 1;
				  else #2sin = byte[send_byte_counter-2];
			  end
			if (C == 1) 
				begin
				  if (send_byte_counter == 11 ) #2sin = 0;
				  else if (send_byte_counter == 1 || send_byte_counter == 10) #2sin = 1;
				  else #2sin = byte[send_byte_counter-2];
				end
		    end
		end
	end
endtask

task send_calculation_data;

	input [71:0] byte; 
	
	begin
	
	for(send_data_counter=0;send_data_counter<9;send_data_counter=send_data_counter+1) 
		begin
		@(posedge clk); 
			begin
				if (send_data_counter==0) send_byte(byte[31:24],0);
				else if (send_data_counter==1) send_byte(byte[23:16],0);
				else if (send_data_counter==2) send_byte(byte[15:8],0);
				else if (send_data_counter==3) send_byte(byte[7:0],0);
				else if (send_data_counter==4) send_byte(byte[63:56],0);
				else if (send_data_counter==5) send_byte(byte[55:48],0);
				else if (send_data_counter==6) send_byte(byte[47:40],0);
				else if (send_data_counter==7) send_byte(byte[39:32],0);
				else if (send_data_counter==8) send_byte(byte[71:64],1);
			end
		end
	end
endtask

function [3:0] nextCRC4_D68;
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
    nextCRC4_D68 = newcrc;
end
endfunction

task compare;

  input [31:0] result;
  input [31:0] A;
  input [31:0] B;
  input [7:0] CTL;
  
  output ret;
  
  reg [31:0] C;
  
  begin
    case(CTL[6:4])
		AND: C = A & B;
		OR: C = A | B;
		ADD: C = A + B;
		SUB: C = A - B;
    endcase
	
  ret = C == result;
  end
  
endtask


task valid_data;

  input [2:0] OP;
  
  output pass;
  
  reg [31:0] A;
  reg [31:0] B;
  reg [7:0] CTL;
  reg [67:0] data;
  reg [39:0] result;
  
  begin
    A = $urandom;
    B = $urandom;
    CTL = {1'b0,OP,4'b0000};
    data = {A,B,1'b1,OP};
    CTL[3:0] = nextCRC4_D68(data,4'b0000);
    send_calculation_data({CTL,B,A});
    #20000 compare({out[52:45],out[41:34],out[30:23],out[19:12]},A,B,CTL,pass);
  end
endtask

task corner_cases;
  
  output passes;
  
  reg [31:0] A;
  reg [31:0] B;
  reg [7:0] CTL;
  reg [67:0] data;
  reg [39:0] result;
  reg pass;
  
  begin
    passes = 1;
    A=32'b11111111111111111111111111111111;
    B=32'b11111111111111111111111111111111;
    CTL = 8'b00000000;
    data = {A,B,1'b1,CTL[6:4]};
    CTL[3:0] = nextCRC4_D68(data,4'b0000);
    send_calculation_data({CTL,B,A});
    #20000 compare({out[52:45],out[41:34],out[30:23],out[19:12]},A,B,CTL,pass);
    passes = passes & pass;
    CTL = 8'b00010000;
    data = {A,B,1'b1,CTL[6:4]};
    CTL[3:0] = nextCRC4_D68(data,4'b0000);
    send_calculation_data({CTL,B,A});
    #20000 compare({out[52:45],out[41:34],out[30:23],out[19:12]},A,B,CTL,pass);
    passes = passes & pass;
    CTL = 8'b01000000;
    data = {A,B,1'b1,CTL[6:4]};
    CTL[3:0] = nextCRC4_D68(data,4'b0000);
    send_calculation_data({CTL,B,A});
    #20000 compare({out[52:45],out[41:34],out[30:23],out[19:12]},A,B,CTL,pass);
    passes = passes & pass;
    CTL = 8'b01010000;
    data = {A,B,1'b1,CTL[6:4]};
    CTL[3:0] = nextCRC4_D68(data,4'b0000);
    send_calculation_data({CTL,B,A});
    #20000 compare({out[52:45],out[41:34],out[30:23],out[19:12]},A,B,CTL,pass);
    passes = passes & pass;
    A=32'b00000000000000000000000000000000;
    B=32'b00000000000000000000000000000000;
    CTL = 8'b00000000;
    data = {A,B,1'b1,CTL[6:4]};
    CTL[3:0] = nextCRC4_D68(data,4'b0000);
    send_calculation_data({CTL,B,A});
    #20000 compare({out[52:45],out[41:34],out[30:23],out[19:12]},A,B,CTL,pass);
    passes = passes & pass;
    CTL = 8'b00010000;
    data = {A,B,1'b1,CTL[6:4]};
    CTL[3:0] = nextCRC4_D68(data,4'b0000);
    send_calculation_data({CTL,B,A});
    #20000 compare({out[52:45],out[41:34],out[30:23],out[19:12]},A,B,CTL,pass);
    passes = passes & pass;
    CTL = 8'b01000000;
    data = {A,B,1'b1,CTL[6:4]};
    CTL[3:0] = nextCRC4_D68(data,4'b0000);
    send_calculation_data({CTL,B,A});
    #20000 compare({out[52:45],out[41:34],out[30:23],out[19:12]},A,B,CTL,pass);
    passes = passes & pass;
    CTL = 8'b01010000;
    data = {A,B,1'b1,CTL[6:4]};
    CTL[3:0] = nextCRC4_D68(data,4'b0000);
    send_calculation_data({CTL,B,A});
    #20000 compare({out[52:45],out[41:34],out[30:23],out[19:12]},A,B,CTL,pass);
    passes = passes & pass;
end
endtask


always
  #50  clk =  ! clk;
  
 always @(*) begin
if (frame_counter > 0 && frame_counter < 55) begin
  out_nxt[frame_counter-1] = sout;
  frame_counter_nxt = frame_counter - 1;
end
else if (frame_counter == 0) begin
  frame_counter_nxt = 56;
  end
else if (sout == 0) begin
  frame_counter_nxt = 54;
  out_nxt[54] = 0;
end
program_counter_nxt = program_counter + 1;
end

always @(posedge clk) begin
program_counter = program_counter_nxt;
out = out_nxt;
frame_counter = frame_counter_nxt;
end


integer random_counter;

initial begin
  sin = 1; clk = 0; send_byte_counter = 0; program_counter = 0; send_data_counter = 0; frame_counter = 0; random_counter = 0; passes = 1;
  out=54'b111111111111111111111111111111111111111111111111111111;
  out_nxt=54'b111111111111111111111111111111111111111111111111111111;
  rst_n = 0;  
  #400 
  rst_n = 1;

  #1000$display("****************************TEST_START****************************");
  #1000$display("sending max (0xFFFF) and min (0) data with all the ALU operations (AND OR, ADD,SUB)");
  #1000corner_cases(pass);
  if (pass)
    $display("PASS_CORNER");
  else
    $display("FAIL_CORNER");

  #400 $display("sending 1000 random valid data");
  while (random_counter < 1000)
    begin
      if (random_counter < 250)
        OP = AND;
      else if (500 < random_counter > 250)
        OP = OR;
      else if (750 < random_counter > 500)
        OP = ADD;
      else if (1000 < random_counter > 750)
        OP = SUB;
      #1000 random_counter = random_counter + 1;
      valid_data(OP,pass);
      passes = passes & pass;
    end
  if (passes)
    $display("PASS_ALL_RANDOM");
  else
    $display("FAIL_RANDOM");
	
	
  $display("sending data with CRC error");
  A = 5;
  B = 2;
  CTL = 8'b01000000;
  send_calculation_data({CTL,B,A});
  #15000 pass = {out[52:45]} == 8'b10100101;
  if (pass)
    $display("PASS_CRC_ERROR");
  else
  $display("FAIL_CRC_ERROR");


  A = 10 ;
  B = 10;
  CTL = 8'b00101010;
  send_calculation_data({CTL,B,A});
  #10000 $display("sending wrong OP code");
  if (out[52:45] == 8'b10010011) begin
    $display("PASS_OP_ERROR");
  end
  else
    $display("FAIL_OP_ERROR");

  send_byte(8'b01010000,0);
  send_byte(8'b01010000,1);
  #10000 $display("sending invalid data (wrong number of DATA packets before CTL packet)");
  if (out[52:45] == 8'b11001001) begin
    $display("PASS_DATA_ERROR");
  end
  else
    $display("FAIL_DATA_ERROR");
	
	#1000$display("****************************TEST_END****************************");
  $finish;
end


endmodule

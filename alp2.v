module ds;
assign a1 = 1; //right most bit
assign a2 = 0;
assign a3 = 0;
assign a4 = 0;    //left number
assign a5 = 0;
assign a6 = 0;
assign a7 = 0;
assign a8 = 0; //left most bit

assign a9 = 1;  //right most bit
assign a10 = 1;
assign a11 = 1;
assign a12 = 1;
assign a13 = 1;    //right number
assign a14 = 1;
assign a15 = 1;
assign a16 = 0; //left most bit

wire [8:0] X;
wire [40:0] A;
wire [11:0] B;
wire [8:1] Z;
wire M;
wire g;

assign g = 1;
assign X[0] = 0; //set 1 if wont minus
assign M = 0; //set 1 if wont minus

and b01 (B[0] , X[0] ,g);
xor a01 (A[2] ,a9,M);
and a02 (A[0] ,a1 ,g);
or al1 (X[1] ,A[3] ,A[4] ,A[5]);
and t1 (A[3] ,A[0] , A[2]);
and t2 (A[4] ,A[0] ,B[0]);
and t3 (A[5] ,A[2] ,B[0]);
xor c01 (Z[1] ,B[0] ,A[2] ,A[0]); //exit


and b02 (B[1] , X[1] ,g);
xor a03 (A[7] ,a10,M);
and a04 (A[6] ,a2 ,g);
or al2 (X[2] ,A[8] ,A[9] ,A[10]);
and t4 (A[8] ,A[7] , A[6]);
and t5 (A[9] ,A[6] ,B[1]);
and t6 (A[10] ,A[7] ,B[1]);
xor c02 (Z[2] ,B[1] ,A[7] ,A[6]); //exit

and b03 (B[2] , X[2] ,g);
xor a05 (A[12] ,a11,M);
and a06(A[11] ,a3 ,g);
or al3 (X[3] ,A[13] ,A[14] ,A[15]);
and t7 (A[13] ,A[11] , A[12]);
and t8 (A[14] ,A[11] ,B[2]);
and t9 (A[15] ,A[12] ,B[2]);
xor c03 (Z[3] ,B[2] ,A[12] ,A[11]); //exit

and b04 (B[3] , X[3] ,g);
xor a07 (A[17] ,a12,M);
and a08 (A[16] ,a4 ,g);
or al4 (X[4] ,A[18] ,A[19] ,A[20]);
and t10 (A[18] ,A[16], A[17]);
and t11 (A[19] ,A[16] ,B[3]);
and t12 (A[20] ,A[17] ,B[3]);
xor c04 (Z[4] ,B[3] ,A[17] ,A[16]); //exit

and b05 (B[4] , X[4] ,g);
xor a09 (A[22] ,a13,M);
and a010 (A[21] ,a5 ,g);
or al5 (X[5] ,A[23] ,A[24] ,A[25]);
and t13 (A[23] ,A[21] , A[22]);
and t14 (A[24] ,A[21] ,B[4]);
and t15 (A[25] ,A[22] ,B[4]);
xor c05 (Z[5] ,B[4] ,A[22] ,A[21]); //exit
 
and b06 (B[5] , X[5] ,g);
xor a011 (A[27] ,a14,M);
and a012 (A[26] ,a6 ,g);
or al6 (X[6] ,A[28] ,A[29] ,A[30]);
and t16 (A[28] ,A[26] , A[27]);
and t17 (A[29] ,A[26] ,B[5]);
and t18 (A[30] ,A[27] ,B[5]);
xor c06 (Z[6] ,B[5] ,A[27] ,A[26]); //exit

and b07 (B[6] , X[6] ,g);
xor a013 (A[32] ,a15,M);
and a014 (A[31] ,a7 ,g);
or al7 (X[7] ,A[33] ,A[34] ,A[35]);
and t19 (A[33] ,A[31] , A[32]);
and t20 (A[34] ,A[31] ,B[6]);
and t21 (A[35] ,A[32] ,B[6]);
xor c07 (Z[7] ,B[6] ,A[32] ,A[31]); //exit

and b08 (B[7] , X[7] ,g);
xor a015 (A[37],a16,M);
and a016 (A[36] ,a8 ,g);
or al8 (X[8] ,A[38] ,A[39] ,A[40]);
and t22 (A[38] ,A[36] , A[37]);
and t23 (A[39] ,A[36] ,B[7]);
and t24 (A[40] ,A[37] ,B[7]);
xor c08 (Z[8] ,B[7] ,A[37] ,A[36]); //exit

initial begin
#1;
$display("Z = %d", Z);
end
endmodule
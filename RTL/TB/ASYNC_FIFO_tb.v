module ASYNC_FIFO_TB;

parameter	WIDTH = 8;
parameter	DEPTH = 8;


reg			W_CLK;
reg			W_RST;
reg			W_INC;
reg			R_CLK;
reg			R_RST;
reg			R_INC;
reg	[WIDTH-1:0]	WR_DATA;

wire			FULL;
wire			EMPTY;
wire	[WIDTH-1:0]	RD_DATA;

localparam WR_CLK = 10;
localparam RD_CLK = 25;
integer i;
integer j;

ASYNC_FIFO #(.Width_FIFO(WIDTH),.Depth_FIFO(DEPTH)) DUT (
.W_CLK(W_CLK),.W_RST(W_RST),.W_INC(W_INC),
.R_CLK(R_CLK),.R_RST(R_RST),.R_INC(R_INC),
.WR_DATA(WR_DATA),.FULL(FULL),.EMPTY(EMPTY),
.RD_DATA(RD_DATA)

);

always
begin
#(WR_CLK/2.0) W_CLK = ~W_CLK;
end


always
begin
#(RD_CLK/2.0)	R_CLK = ~R_CLK ;
end

//reg	[WIDTH-1:0]	DATA	[0:DEPTH-1];

initial
begin

//$readmemh("DATA.txt",DATA) ;

W_CLK = 'b0;
W_RST = 'b0;
R_CLK = 'b0;
R_RST = 'b0;
W_INC = 'b0;
R_INC = 'b0;



#(10);
W_RST = 'b1;
R_RST = 'b1;


for (i=0;i<8;i=i+1) 
begin
	W_INC = 1;
	WR_DATA = i**2;
	#(WR_CLK);
	W_INC = 0;
	#(WR_CLK);
end
end


initial 
begin
#50;
for (j=0 ; j<3 ; j=j+1) begin
	R_INC  =1;
	#(RD_CLK);
	R_INC = 0;
	#(RD_CLK);
end

#750;

for (j=0;j<3;j=j+1) begin
	R_INC =1;
	#(RD_CLK);
	//R_INC = 0;
	//#(RD_CLK);
end
end

initial
begin

#(2000*(WR_CLK));
$stop;

end

 



endmodule

class Bus;
rand bit[15:0] addr;
rand bit[31:0] data;
endclass
module r_c;
initial begin
Bus bus = new;
repeat (10)
begin
//if (bus.randomize() == 1) // Randomize variables inside the Bus class
$display ("addr = %d, data = %d\n", bus.addr, bus.data);
//else
//$display ("Randomization failed\n");
end
end
endmodule

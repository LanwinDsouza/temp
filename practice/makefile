all: clean compile simulate

compile:
	vlib work;
	vlog *.sv \
	-timescale 1ns/1ns \
	-l covtest.log

simulate:
	vsim \
	work.tb \
	-voptargs=+acc=npr \
	-c -do "log -r \*; run -all; exit"
	gtkwave dump.vcd

clean:
	rm -rf transcript *.vcd *.wlf work/ *.log

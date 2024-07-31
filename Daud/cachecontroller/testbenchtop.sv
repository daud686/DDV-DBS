module tb;
    logic clk;
    logic reset;

    // Instantiate the interface
    cache_controller_if ifc(clk, reset);

    // DUT instance
    cache_controller dut (
        .clk(ifc.clk),
        .reset(ifc.reset),
        .read(ifc.read),
        .write(ifc.write),
        .flush(ifc.flush),
        .address(ifc.address),
        .write_data(ifc.write_data),
        .read_data(ifc.read_data),
        .hit(ifc.hit),
        .miss(ifc.miss),
        .ready(ifc.ready),
        .mem_read(ifc.mem_read),
        .mem_write(ifc.mem_write),
        .mem_address(ifc.mem_address),
        .mem_write_data(ifc.mem_write_data),
        .mem_read_data(ifc.mem_read_data)
    );

    // Test instance
    cache_controller_test test;

    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;

        // Start the test
        test = new();
        test.run();
    end

    always #5 clk = ~clk; // Clock generation
endmodule

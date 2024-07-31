interface cache_controller_if(input logic clk, input logic reset);
    logic read;
    logic write;
    logic flush;
    logic [31:0] address;
    logic [31:0] write_data;
    logic [31:0] read_data;
    logic hit;
    logic miss;
    logic ready;
    logic mem_read;
    logic mem_write;
    logic [31:0] mem_address;
    logic [31:0] mem_write_data;
    logic [31:0] mem_read_data;

    modport DUT (input clk, reset, read, write, flush, address, write_data, mem_read_data,
                 output read_data, hit, miss, ready, mem_read, mem_write, mem_address, mem_write_data);
    modport TB (output clk, reset, read, write, flush, address, write_data, mem_read_data,
                input read_data, hit, miss, ready, mem_read, mem_write, mem_address, mem_write_data);
endinterface

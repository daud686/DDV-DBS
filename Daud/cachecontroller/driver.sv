class cache_controller_driver;
    virtual cache_controller_if.TB vif;

    function new(virtual cache_controller_if.TB vif);
        this.vif = vif;
    endfunction

    task write(input logic [31:0] addr, input logic [31:0] data);
        vif.address <= addr;
        vif.write_data <= data;
        vif.write <= 1;
        wait (vif.ready);
        vif.write <= 0;
    endtask

    task read(input logic [31:0] addr);
        vif.address <= addr;
        vif.read <= 1;
        wait (vif.ready);
        vif.read <= 0;
    endtask

    task flush();
        vif.flush <= 1;
        wait (vif.ready);
        vif.flush <= 0;
    endtask
endclass

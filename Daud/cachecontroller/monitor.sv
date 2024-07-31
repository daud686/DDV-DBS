class cache_controller_monitor;
    virtual cache_controller_if.TB vif;

    function new(virtual cache_controller_if.TB vif);
        this.vif = vif;
    endfunction

    task monitor();
        forever begin
            @(posedge vif.clk);
            // Capture output signals
        end
    endtask
endclass

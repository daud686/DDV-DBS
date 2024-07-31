class cache_controller_env;
    cache_controller_driver driver;
    cache_controller_monitor monitor;
    cache_controller_scoreboard scoreboard;

    virtual cache_controller_if.TB vif;

    function new(virtual cache_controller_if.TB vif);
        this.vif = vif;
        driver = new(vif);
        monitor = new(vif);
        scoreboard = new();
    endfunction

    task run();
        fork
            monitor.monitor();
            // Add other tasks as needed
        join_none
    endtask
endclass

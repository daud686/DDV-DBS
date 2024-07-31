class cache_controller_test;
    cache_controller_env env;

    function new();
        env = new();
    endfunction

    task run();
        env.run();

        // Write some data
        env.driver.write(32'h0000_0000, 32'hDEAD_BEEF);
        // Read the data
        env.driver.read(32'h0000_0000);

        // Add more test scenarios
    endtask
endclass

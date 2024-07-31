class cache_controller_scoreboard;
    function new();
    endfunction

    task compare(input logic [31:0] expected_data, input logic [31:0] actual_data);
        if (expected_data !== actual_data) begin
            $display("Mismatch: Expected %0d, Got %0d", expected_data, actual_data);
        end
    endtask
endclass

module decoder_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [15:0] one_hot;

  // Instantiate the decoder module
  decoder uut (
    .binary(binary),
    .one_hot(one_hot)
  );
initial begin

  $timeformat(-9, 0, "ns", 6);   // time format(nano_second£¬0£¬"ns"£¬min_widith=6)
  $monitor("Time = %t, Binary = %4b, One-Hot = %16b",
             $time, binary, one_hot);  //display every case
  
  binary = 4'b0000;             // initial variable
  $display("Starting the testbench");

    for (int i = 0 ; i<16 ; i++) begin
     binary=i;
  
     #10;
     end                  // try all posssible numbers


  $display("Testbench completed.");
  $finish;
end


  
endmodule

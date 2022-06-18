pragma circom 2.0.3;　//the pragma instruction is used to specify the compiler version.

template Multiplier2(){ // the reserved keyword "template" defines the shape of a new circuit
   signal input in1;  // In this circuit, we have two input signals in1, in2 and an output signal out
   signal input in2;
   signal output out;
   out <== in1 * in2;// "<==" is to set that the value of out is the result of multiplying the values of in1 and in2
   log(out); // print the value of output signal
}

component main {public [in1,in2]} = Multiplier2();// make template instantiate as main component

// give run-time-value to inputs
/* 
INPUT = { 
   "in1": "5", 
   "in2": "4545"
}*/

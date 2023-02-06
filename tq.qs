operation TwoQubits () : Unit {
    using (qubits = Qubit[2]) {
        H(qubits[0]);
        CNOT(qubits[0], qubits[1]);
        Measure(qubits[0]);
        Measure(qubits[1]);
    }
}

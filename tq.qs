operation TwoQubits() : (Result, Result) {
    using (qubits = Qubit[2]) {
        H(qubits[0]);
        CNOT(qubits[0], qubits[1]);
        let result1 = M(qubits[0]);
        let result2 = M(qubits[1]);
        ResetAll(qubits);
        return (result1, result2);
    }
}
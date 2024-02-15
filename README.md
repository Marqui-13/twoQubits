# Two Qubits Quantum Operation

This repository showcases a fundamental quantum computing operation, `TwoQubits`, designed to demonstrate entanglement and superposition, two of the core principles of quantum mechanics. The operation initializes an array of two qubits, applies a Hadamard gate to the first qubit to generate a superposition, then uses a Controlled-NOT (CNOT) gate to entangle both qubits. Finally, it measures the states of both qubits.

## Prerequisites

To use the `TwoQubits` operation, you must have the following installed:

- Quantum Development Kit
- A quantum simulator or access to quantum hardware

For installation guidance, refer to the [Quantum Development Kit documentation](https://docs.microsoft.com/quantum/).

## Installation

To get started, clone this repository to your local environment:


git clone https://github.com/Marqui-13/twoQubits.git


## Usage

Navigate to the cloned repository's directory, and execute the operation with the Quantum Development Kit:


dotnet run --project yourProjectName


## Code Overview

The core of this demonstration is the `TwoQubits` operation:


operation TwoQubits () : Unit {
    using (qubits = Qubit[2]) {
        H(qubits[0]);
        CNOT(qubits[0], qubits[1]);
        Measure(qubits[0]);
        Measure(qubits[1]);
    }
}


This operation highlights how quantum gates can be used to manipulate qubit states, demonstrating entanglement between two qubits.

## Contributing

We welcome contributions to enhance the operation or improve the documentation. Feel free to fork the repository, make changes, and submit pull requests.

## License

This project is distributed under the MIT License. See the LICENSE.md file for more information.

## Acknowledgments

- Thanks to the Quantum Development Kit for providing the tools necessary to create and simulate quantum operations.
- Appreciation to the quantum computing community for its valuable insights and resources.


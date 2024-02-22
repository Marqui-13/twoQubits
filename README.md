# Two Qubits Quantum Operation

This repository showcases the `TwoQubits` quantum computing operation, designed to demonstrate entanglement and superposition, foundational principles of quantum mechanics. The operation creates a superposition of the first qubit using a Hadamard gate and entangles it with the second qubit using a Controlled-NOT (CNOT) gate, followed by measuring both qubits' states and resetting them.

## Prerequisites

To use the `TwoQubits` operation, ensure you have the following installed:

- Quantum Development Kit (QDK)
- A quantum simulator or access to quantum hardware targets

For installation guidance, refer to the [Quantum Development Kit documentation](https://docs.microsoft.com/quantum/).

## Installation

Clone this repository to your local environment:

git clone https://github.com/Marqui-13/twoQubits.git

## Usage

### Q# Standalone

Navigate to the repository's directory, and execute the operation with the Quantum Development Kit:

dotnet run --project yourProjectName

### Integrated with Python using `qsharp` Package

For those utilizing an Azure Quantum notebook or any Jupyter notebook, you can run the `TwoQubits` operation directly from Python:

1. Define Your Q# Operation in a `.qs` file:

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

2. Run in Python using the `qsharp` package:

    import qsharp
    from Quantum.MyProject import TwoQubits

    result = TwoQubits.simulate()
    print(f"Measurement results: {result}")

Replace `Quantum.MyProject` with the appropriate namespace where your `TwoQubits` operation is defined.

### Interpreting the Results

After running the operation, the measurements of the qubits will be output. Due to the nature of quantum computation, the output can be probabilistic. The specific outcome depends on the quantum state of the qubits at measurement:

	•	If the first qubit is measured as 0: The second qubit will also be measured as 0 due to entanglement (assuming perfect conditions).
	•	If the first qubit is measured as 1: The second qubit will be measured as 1, for the same reason.

### Additional Considerations

	•	Result Analysis: You might want to analyze the results statistically by running the operation multiple times due to quantum randomness.

This is a high-level overview of running a quantum operation with the Microsoft QDK. For more detailed instructions, including environment setup, writing drivers in different languages, and advanced execution options, refer to the official Microsoft Quantum documentation.

### Code Overview

The `TwoQubits` operation manipulates qubit states through quantum gates, demonstrating quantum entanglement and superposition. It concludes with resetting the qubits to their initial state:

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

This simple operation highlights how quantum gates can be used to manipulate qubit states, demonstrating entanglement between two qubits.

## Additional Notes

- Result Interpretation: Results are probabilistic, reflecting the quantum state of the qubits at measurement. They are directly accessible in Python, facilitating further analysis.
- Further Analysis: Utilize Python libraries like `matplotlib` for visualization and `numpy` for numerical analysis to explore the outcomes of your quantum operations.

## Contributing

Contributions are welcome to enhance the operation or documentation. Fork the repository, make your changes, and submit a pull request.

## License

Distributed under the MIT License. See `LICENSE.md` for more information.

## Acknowledgments

- Thanks to the Quantum Development Kit for the simulation tools.
- Appreciation to the quantum computing community for ongoing support and resources.
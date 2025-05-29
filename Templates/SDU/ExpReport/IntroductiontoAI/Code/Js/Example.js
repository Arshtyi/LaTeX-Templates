class SimpleNeuralNetwork {
    constructor(inputSize, hiddenSize, outputSize) {
        this.weightsInputHidden = Array.from({ length: inputSize }, () =>
            Array.from({ length: hiddenSize }, () => Math.random() * 2 - 1)
        );
        this.weightsHiddenOutput = Array.from({ length: hiddenSize }, () =>
            Array.from({ length: outputSize }, () => Math.random() * 2 - 1)
        );
        this.learningRate = 0.1;
    }
    sigmoid(x) {
        return 1 / (1 + Math.exp(-x));
    }
    feedForward(inputs) {
        this.hiddenOutputs = Array(this.weightsInputHidden[0].length).fill(0);
        for (let i = 0; i < this.weightsInputHidden.length; i++) {
            for (let j = 0; j < this.weightsInputHidden[0].length; j++) {
                this.hiddenOutputs[j] +=
                    inputs[i] * this.weightsInputHidden[i][j];
            }
        }
        this.hiddenOutputs = this.hiddenOutputs.map(this.sigmoid);
        this.finalOutputs = Array(this.weightsHiddenOutput[0].length).fill(0);
        for (let i = 0; i < this.weightsHiddenOutput.length; i++) {
            for (let j = 0; j < this.weightsHiddenOutput[0].length; j++) {
                this.finalOutputs[j] +=
                    this.hiddenOutputs[i] * this.weightsHiddenOutput[i][j];
            }
        }
        return this.finalOutputs.map(this.sigmoid);
    }
    train(inputs, targets) {
        const outputs = this.feedForward(inputs);
        const outputErrors = targets.map((t, i) => t - outputs[i]);
        for (let i = 0; i < this.weightsHiddenOutput.length; i++) {
            for (let j = 0; j < this.weightsHiddenOutput[0].length; j++) {
                this.weightsHiddenOutput[i][j] +=
                    this.learningRate *
                    outputErrors[j] *
                    outputs[j] *
                    (1 - outputs[j]) *
                    this.hiddenOutputs[i];
            }
        }
    }
    predict(inputs) {
        const outputs = this.feedForward(inputs);
        return outputs.indexOf(Math.max(...outputs));
    }
}

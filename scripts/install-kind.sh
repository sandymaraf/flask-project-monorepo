#!/bin/bash

echo "Installing kind..."

if command -v kind &> /dev/null
then
    echo "kind already installed"
else
    brew install kind
fi

echo "Installing kubectl..."

if command -v kubectl &> /dev/null
then
    echo "kubectl already installed"
else
    brew install kubectl
fi

echo "Done"
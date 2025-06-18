#!/bin/bash
set -e

echo "🚀 Starting post-creation setup for Confyn Dev Environment..."

# Update package lists
sudo apt-get update

# Install necessary tools and language servers
echo "📦 Installing Language Servers (Go, TypeScript)..."
go install golang.org/x/tools/gopls@latest
sudo npm install -g typescript-language-server typescript

# Install Python dependencies if a requirements file is found
if [ -f "/workspace/requirements.txt" ]; then
    echo "🐍 Installing Python dependencies from requirements.txt..."
    pip install -r /workspace/requirements.txt
fi

# Install Python dependencies if a poetry project is found
if [ -f "/workspace/poetry.lock" ]; then
    echo "🐍 Installing Python dependencies with Poetry..."
    # Tell poetry to create the virtual environment inside the project folder
    poetry config virtualenvs.in-project true
    poetry install --no-root
fi

echo "✅ Environment ready! You can now start the Confyn server from the terminal."

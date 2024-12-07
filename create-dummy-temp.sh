#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Usage: $0 <lang>"
    exit 1
fi

if [ "$1" == "go" ]; then
    go mod init x
    touch main.go
    echo "package main" >> main.go
    echo "func main() {}" >> main.go
    echo "✅ created go dummy project at $(pwd)"
elif [ "$1" == "python" ] || [ "$1" == "py" ]; then
    touch main.py
    echo "print('hello world')" >> main.py
    echo "✅ created python dummy project at $(pwd)"
elif [ "$1" == "typescript" ] || [ "$1" == "ts" ]; then
    # Create initial files
    touch index.ts
    echo "console.log('hello world')" >> index.ts
    echo "✅ created TypeScript dummy project at $(pwd)"

    # Create package.json
    echo '{
      "dependencies": {
        "@types/node": "^22.7.7",
        "ts-node": "^10.9.2",
        "typescript": "^5.6.3"
      }
    }' > package.json
    echo "✅ created package.json for TypeScript"

    # Install dependencies first (typescript is required for tsc command)
    pnpm install
    echo "✅ installed dependencies with [pnpm] as package manager"

    # Generate tsconfig.json using tsc --init
    npx tsc --init
    echo "✅ created tsconfig.json using tsc --init"

    echo "Run: npx ts-node index.ts to execute the script"
elif [ "$1" == "rust" ] || [ "$1" == "rs" ]; then
    # Create Cargo.toml manually with a safe package name
    echo '[package]
name = "dummy"
version = "0.1.0"
edition = "2021"

[dependencies]' > Cargo.toml
    echo "✅ created Cargo.toml"
    
    # Create src directory and main.rs
    mkdir -p src
    echo 'fn main() {
    println!("Hello, world!");
}' > src/main.rs
    echo "✅ created src/main.rs with hello world"
    
    echo "Run: cargo run to build and execute the project"
else
    echo "Not a valid language"
    exit 1
fi

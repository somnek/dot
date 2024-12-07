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
else
    echo "Not a valid language"
    exit 1
fi

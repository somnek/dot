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
    touch index.ts
    echo "console.log('hello world')" >> index.ts
    echo "✅ created TypeScript dummy project at $(pwd)"

    # Create tsconfig.json for TypeScript
    echo '{
      "compilerOptions": {
        "target": "ES6",
        "module": "commonjs",
        "strict": true,
        "esModuleInterop": true,
        "skipLibCheck": true
      },
      "exclude": [
        "node_modules"
      ]
    }' > tsconfig.json
    echo "✅ created tsconfig.json for TypeScript" 

    # Create package.json for TypeScript
    echo '{
      "dependencies": {
        "@types/node": "^22.7.7",
        "ts-node": "^10.9.2",
        "typescript": "^5.6.3"
      }
    }' > package.json
    echo "✅ created package.json for TypeScript" 

    # echo "Run: pnpm install or npm install to install the dependencies"
    pnpm install to install the dependencies
    echo "✅ installed dependencies with [pnpm] as package manager"
    echo "Run: npx ts-node index.ts to execute the script"

else
    echo "Not a valid language"
    exit 1
fi

# Velo Programming Language

🐍 Python-like syntax, ⚡ C++-like speed.

Velo is a modern, fast, and simple programming language. It combines the simplicity of Python with the performance of C++.

Architecture:

Velo code (.vl) → Lexer → Tokens → Parser → AST → Compiler → Bytecode → Vertox VM → Result

---

## Features

- Python-like syntax — easy to learn, easy to write
- 96+ built-in functions — strings, lists, dicts, math
- Bytecode VM (Vertox Engine) — fast execution
- Small and portable — single binary, no dependencies
- Cross-platform — Windows, Linux, macOS
- Open source — Apache-2.0 license

---

## Quick Start

### Linux (universal installer)

curl -sSL https://raw.githubusercontent.com/gnyyvvv/velo/main/install.sh | bash

Then:

velo --version
velo hello.vl

### Linux (AppImage)

wget https://github.com/gnyyvvv/velo/raw/main/Velo-0.1-x86_64.AppImage
chmod +x Velo-0.1-x86_64.AppImage
./Velo-0.1-x86_64.AppImage hello.vl

### Build from source (Linux / macOS)

git clone https://github.com/gnyyvvv/velo.git
cd velo
mkdir build && cd build
cmake ..
make
./velo --version

### Windows (from source)

git clone https://github.com/gnyyvvv/velo.git
cd velo
mkdir build && cd build
cmake -G "MinGW Makefiles" ..
mingw32-make
.\velo.exe --version

---

## Examples

### Hello World

print("Hello, World!")

### Fibonacci

def fib(n):
    if n < 2:
        return n
    return fib(n - 1) + fib(n - 2)

for i in range(10):
    print("fib(", i, ") =", fib(i))

### Strings

name = "Ali Valiyev"
print(name.upper())
print(name.lower())
print(name.split(" "))
print(name.replace("Ali", "Hasan"))
print(name.startswith("Ali"))

### Lists

numbers = [1, 2, 3, 4, 5]
numbers.append(6)
numbers.insert(0, 0)
numbers.remove(3)
numbers.sort()
numbers.reverse()
print(len(numbers))

### Dicts

user = {"name": "Ali", "age": 25}
print(user["name"])
print(user.get("email", "N/A"))
print(user.keys())
print(user.values())

### User Input

name = input("What is your name? ")
print("Hello,", name, "!")

### Recursion

def factorial(n):
    if n <= 1:
        return 1
    return n * factorial(n - 1)

print(factorial(5))

---

## Syntax Reference

### Variables

x = 10
pi = 3.14
name = "Velo"
is_ready = True
nothing = None

### Operators

Arithmetic: +, -, *, /, //, %, **
Comparison: ==, !=, <, >, <=, >=
Logical: and, or, not
Membership: in, not in
Assignment: =, +=, -=, *=, /=

### Conditionals

if x > 10:
    print("big")
elif x > 5:
    print("medium")
else:
    print("small")

### Loops

for i in range(10):
    print(i)

i = 0
while i < 10:
    print(i)
    i += 1

for i in range(10):
    if i == 5:
        break
    if i % 2 == 0:
        continue
    print(i)

### Functions

def add(a, b):
    return a + b

def greet(name, greeting="Hello"):
    return greeting + ", " + name

square = lambda x: x * x
print(square(5))

### Built-in Functions (18)

print(x) — Print to console
input(prompt) — Read user input
len(x) — Length of list/string/dict
str(x) — Convert to string
int(x) — Convert to integer
float(x) — Convert to float
type(x) — Get type name
range(n) — Generate range
abs(x) — Absolute value
min(x) — Minimum
max(x) — Maximum
sum(x) — Sum of list
push(lst, x) — Add to list
pop(lst) — Remove from list
keys(d) — Dict keys
values(d) — Dict values
items(d) — Dict items
append(lst, x) — Append to list

### String Methods (15)

.upper() — "hi".upper() → "HI"
.lower() — "HI".lower() → "hi"
.strip() — " x ".strip() → "x"
.split(sep) — "a,b".split(",") → ["a", "b"]
.replace(a, b) — "hi".replace("h", "H")
.startswith(s) — "hi".startswith("h") → True
.endswith(s) — "hi".endswith("i") → True
.find(s) — "hi".find("i") → 1
.count(s) — "aaa".count("a") → 3
.capitalize() — "hi".capitalize() → "Hi"
.title() — "hi there".title() → "Hi There"
.join(list) — ",".join(["a","b"]) → "a,b"
.isdigit() — "123".isdigit() → True
.isalpha() — "abc".isalpha() → True
.isspace() — "  ".isspace() → True

### List Methods (11)

.append(x) — Add element
.pop(i) — Remove and return
.insert(i, x) — Insert at index
.remove(x) — Remove first match
.index(x) — Find index
.count(x) — Count occurrences
.reverse() — Reverse in place
.sort() — Sort in place
.clear() — Remove all
.copy() — Shallow copy
.extend(lst) — Extend with list

### Dict Methods (7)

.keys() — Get keys
.values() — Get values
.items() — Get key-value pairs
.get(key, default) — Get with default
.pop(key) — Remove and return
.clear() — Remove all
.copy() — Shallow copy

---

## Architecture

Velo is composed of two parts:

### vertox/ — The Virtual Machine

The Vertox Engine is a stack-based bytecode VM. It is independent and can be used by other languages.

opcode.hpp — Bytecode instructions (50+)
value.hpp — Value system (int, float, str, list, dict, ...)
env.hpp — Scope environment
vm.hpp — VM interface
vm.cpp — Execution core (800+ lines)

### src/ — The Language

The Velo language itself:

lexer.cpp — Text to Tokens
parser.cpp — Tokens to AST
compiler.cpp — AST to Bytecode
velo.cpp — High-level API

---

## Roadmap

### v0.1 (current)

Basic syntax
Functions, recursion
Lists, dicts, strings
String/List/Dict methods
input()
Linux AppImage
Windows installer

### v0.2 (planned)

Classes (class)
Exception handling (try/except)
f-strings (f"Hello, {name}!")
Slicing (arr[1:3])
List comprehensions

### v0.3 (planned)

import modules
Standard library
Package manager

### v1.0 (future)

JIT compiler
Full Python 3.x compatibility
Real threading (no GIL)

---

## Contributing

Contributions are welcome! Here is how:

1. Fork the repository
2. Create a feature branch:
   git checkout -b feature/amazing-feature
3. Commit your changes:
   git commit -m "Add amazing feature"
4. Push:
   git push origin feature/amazing-feature
5. Open a Pull Request

### Development Setup

git clone https://github.com/gnyyvvv/velo.git
cd velo
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Debug
make
./velo --version

### Running Tests

cd build
ctest

---

## License

Apache License 2.0 — see LICENSE for details.

---

## Contact

GitHub: @gnyyvvv
Issues: github.com/gnyyvvv/velo/issues
Website: velo.uz coming soon

---

## Star History

If Velo is useful to you, please give it a star — it helps a lot!

---

Made with love by gnyyvvv
Python-like syntax, C++-like speed.

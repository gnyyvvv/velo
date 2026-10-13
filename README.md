# ⚡ Velo Programming Language

### Python-like syntax. C++-inspired performance.

**Velo** is a modern, lightweight programming language designed to make coding simple, expressive, and efficient. It combines Python-inspired syntax with a custom bytecode compiler and the **Vertox Virtual Machine**.

<p align="center">
  <img src="assets/velo-logo.png" alt="Velo Programming Language" width="180">
</p>

<p align="center">
  <a href="https://github.com/gnyyvvv/velo"><img src="https://img.shields.io/github/stars/gnyyvvv/velo?style=for-the-badge&logo=github&color=7C83FD" alt="GitHub Stars"></a>
  <a href="https://github.com/gnyyvvv/velo/blob/main/LICENSE"><img src="https://img.shields.io/github/license/gnyyvvv/velo?style=for-the-badge&color=blue" alt="License"></a>
  <a href="https://github.com/gnyyvvv/velo"><img src="https://img.shields.io/badge/Language-C%2B%2B-00599C?style=for-the-badge&logo=cplusplus" alt="C++"></a>
  <a href="https://github.com/gnyyvvv/velo"><img src="https://img.shields.io/badge/Version-0.1-orange?style=for-the-badge" alt="Version"></a>
</p>

<p align="center">
  <b>Simple to learn. Powerful to build. Designed to evolve.</b>
</p>

---

## 📑 Table of Contents

- [Overview](#-overview)
- [Key Features](#-key-features)
- [How Velo Works](#-how-velo-works)
- [Installation](#-installation)
- [Quick Start](#-quick-start)
- [Language Examples](#-language-examples)
- [Language Reference](#-language-reference)
- [Built-in Functions](#-built-in-functions)
- [String Methods](#-string-methods)
- [List Methods](#-list-methods)
- [Dictionary Methods](#-dictionary-methods)
- [Project Structure](#-project-structure)
- [Roadmap](#-roadmap)
- [Contributing](#-contributing)
- [License](#-license)
- [Community](#-community)

---

## 🚀 Overview

Velo is built for developers who want a clean programming experience without sacrificing control over execution.

Unlike a simple line-by-line interpreter, Velo transforms source code into bytecode that runs on its own virtual machine, **Vertox Engine**.

```text
Readable syntax
      ↓
    Lexer
      ↓
    Tokens
      ↓
    Parser
      ↓
     AST
      ↓
   Compiler
      ↓
    Bytecode
      ↓
  Vertox VM
      ↓
    Result
```

The goal is to build an independent programming language and runtime that can grow into a portable, cross-platform development ecosystem.

## ✨ Key Features

| Feature | Description |
|---|---|
| 🐍 Python-inspired syntax | Readable, indentation-based code |
| ⚙️ Custom compiler | Converts source code into bytecode |
| ⚡ Vertox Engine | Stack-based virtual machine |
| 🧩 Built-in data types | Integers, floats, strings, lists and dictionaries |
| 🔄 Functions and recursion | Reusable functions and recursive calls |
| 🧰 Rich built-ins | Utilities for strings, collections and mathematics |
| 💻 Cross-platform goals | Windows, Linux and macOS |
| 📦 Portable runtime goals | Designed with lightweight distribution in mind |
| 🌍 Open source | Apache License 2.0 |

> **Performance philosophy:** Velo uses a compiled-bytecode execution model. Native-code optimizations and performance improvements are part of its longer-term evolution; actual speed depends on the workload and implementation.

---

## ⚡ How Velo Works

Velo consists of two main components.

### 1. Vertox Engine

The runtime responsible for executing Velo bytecode.

- Stack-based virtual machine
- Opcode instruction set
- Runtime value representation
- Scope and environment management
- Bytecode execution

### 2. Velo Compiler

The language implementation that transforms `.vl` source files into executable bytecode.

- **Lexer** — converts source text into tokens
- **Parser** — builds an Abstract Syntax Tree (AST)
- **Compiler** — translates the AST into bytecode
- **Vertox VM** — executes the compiled instructions

This separation allows Vertox to evolve as an independent runtime and potentially support additional frontends in the future.

---

## 📥 Installation

### Linux — Universal Installer

```bash
curl -sSL https://raw.githubusercontent.com/gnyyvvv/velo/main/install.sh | bash
```

Verify the installation:

```bash
velo --version
```

Run a program:

```bash
velo hello.vl
```

**Security note:** For greater control, inspect `install.sh` before executing it with Bash.

### Linux — AppImage

Download the AppImage:

```bash
wget https://github.com/gnyyvvv/velo/raw/main/Velo-0.1-x86_64.AppImage
```

Make it executable and run it:

```bash
chmod +x Velo-0.1-x86_64.AppImage
./Velo-0.1-x86_64.AppImage hello.vl
```

### Build from Source — Linux / macOS

**Requirements:** A C++ compiler, CMake and Make.

```bash
git clone https://github.com/gnyyvvv/velo.git
cd velo

mkdir build
cd build

cmake ..
make

./velo --version
```

### Build from Source — Windows

**Requirements:** Git, CMake, MinGW-w64 and `mingw32-make`.

```bash
git clone https://github.com/gnyyvvv/velo.git
cd velo

mkdir build
cd build

cmake -G "MinGW Makefiles" ..
mingw32-make

.\velo.exe --version
```

---

## 👋 Quick Start

Create a file named `hello.vl`:

```python
print("Hello, World!")
print("Welcome to Velo.")
```

Run it:

```bash
velo hello.vl
```

Expected output:

```text
Hello, World!
Welcome to Velo.
```

---

## 💻 Language Examples

### Variables and Data Types

```python
name = "Velo"
version = 0.1
downloads = 1000
is_ready = True
nothing = None

print(name)
print(version)
print(is_ready)
```

### Conditional Statements

```python
score = 85

if score >= 90:
    print("Excellent!")
elif score >= 70:
    print("Good job!")
else:
    print("Keep learning!")
```

### Loops

```python
for i in range(5):
    print(i)

counter = 0

while counter < 3:
    print(counter)
    counter += 1
```

### Functions

```python
def greet(name, greeting="Hello"):
    return greeting + ", " + name

print(greet("Developer"))
print(greet("Velo", "Welcome"))
```

### Fibonacci Sequence

```python
def fib(n):
    if n < 2:
        return n

    return fib(n - 1) + fib(n - 2)

for i in range(10):
    print("fib(", i, ") =", fib(i))
```

### Lists

```python
numbers = [1, 2, 3, 4, 5]

numbers.append(6)
numbers.insert(0, 0)
numbers.remove(3)
numbers.sort()
numbers.reverse()

print(numbers)
print(len(numbers))
```

### Dictionaries

```python
user = {
    "name": "Ali",
    "age": 25
}

print(user["name"])
print(user.get("email", "N/A"))
print(user.keys())
print(user.values())
```

### String Manipulation

```python
name = "Ali Valiyev"

print(name.upper())
print(name.lower())
print(name.replace("Ali", "Hasan"))
print(name.split(" "))
print(name.startswith("Ali"))
```

### User Input

```python
name = input("What is your name? ")
print("Hello,", name, "!")
```

### Recursion

```python
def factorial(n):
    if n <= 1:
        return 1

    return n * factorial(n - 1)

print(factorial(5))
```

---

## 📚 Language Reference

### Variables

Velo uses simple assignment syntax:

```python
x = 10
pi = 3.14
name = "Velo"
is_ready = True
nothing = None
```

### Operators

| Category | Operators |
|---|---|
| Arithmetic | `+`, `-`, `*`, `/`, `//`, `%`, `**` |
| Comparison | `==`, `!=`, `<`, `>`, `<=`, `>=` |
| Logical | `and`, `or`, `not` |
| Membership | `in`, `not in` |
| Assignment | `=`, `+=`, `-=`, `*=`, `/=` |

### Functions and Lambda Expressions

```python
def add(a, b):
    return a + b

square = lambda x: x * x

print(add(10, 20))
print(square(5))
```

### Loop Control

```python
for i in range(10):
    if i == 5:
        break

    if i % 2 == 0:
        continue

    print(i)
```

---

## 🧰 Built-in Functions

Velo provides built-in functions for common programming tasks.

| Function | Purpose |
|---|---|
| `print(x)` | Print values |
| `input(prompt)` | Read user input |
| `len(x)` | Get collection or string length |
| `str(x)` | Convert a value to a string |
| `int(x)` | Convert a value to an integer |
| `float(x)` | Convert a value to a floating-point number |
| `type(x)` | Get a type name |
| `range(n)` | Generate a range |
| `abs(x)` | Get the absolute value |
| `min(x)` | Find the minimum |
| `max(x)` | Find the maximum |
| `sum(x)` | Calculate a sum |
| `push(lst, x)` | Add an element to a list |
| `pop(lst)` | Remove an element |
| `keys(d)` | Get dictionary keys |
| `values(d)` | Get dictionary values |
| `items(d)` | Get dictionary entries |
| `append(lst, x)` | Append an element |

---

## 🔤 String Methods

| Method | Purpose |
|---|---|
| `.upper()` | Convert to uppercase |
| `.lower()` | Convert to lowercase |
| `.strip()` | Remove surrounding whitespace |
| `.split(sep)` | Split a string |
| `.replace(a, b)` | Replace a substring |
| `.startswith(s)` | Check the beginning |
| `.endswith(s)` | Check the ending |
| `.find(s)` | Find a substring |
| `.count(s)` | Count occurrences |
| `.capitalize()` | Capitalize the first character |
| `.title()` | Capitalize words |
| `.join(list)` | Join strings |
| `.isdigit()` | Check for digits |
| `.isalpha()` | Check for alphabetic characters |
| `.isspace()` | Check for whitespace |

Example:

```python
text = "  hello velo  "

print(text.strip().upper())
print("a,b,c".split(","))
print("velo".startswith("ve"))
```

---

## 📋 List Methods

| Method | Purpose |
|---|---|
| `.append(x)` | Add an element |
| `.pop(i)` | Remove and return an element |
| `.insert(i, x)` | Insert at an index |
| `.remove(x)` | Remove the first matching element |
| `.index(x)` | Find an element's index |
| `.count(x)` | Count matching elements |
| `.reverse()` | Reverse the list |
| `.sort()` | Sort the list |
| `.clear()` | Remove all elements |
| `.copy()` | Create a shallow copy |
| `.extend(lst)` | Append elements from another list |

---

## 🗂️ Dictionary Methods

| Method | Purpose |
|---|---|
| `.keys()` | Return dictionary keys |
| `.values()` | Return dictionary values |
| `.items()` | Return key-value entries |
| `.get(key, default)` | Retrieve a value with a fallback |
| `.pop(key)` | Remove and return a value |
| `.clear()` | Remove all entries |
| `.copy()` | Create a shallow copy |

---

## 🏗️ Project Structure

```text
velo/
├── src/
│   ├── lexer.cpp       # Source code tokenization
│   ├── parser.cpp      # Syntax parsing and AST
│   ├── compiler.cpp    # AST-to-bytecode compilation
│   └── velo.cpp        # High-level language API
│
├── vertox/
│   ├── opcode.hpp      # Bytecode instruction definitions
│   ├── value.hpp       # Runtime value system
│   ├── env.hpp         # Scope and environment
│   ├── vm.hpp          # Virtual machine interface
│   └── vm.cpp          # Bytecode execution core
│
├── tests/              # Automated tests
├── CMakeLists.txt      # Build configuration
├── LICENSE             # Apache-2.0 license
└── README.md
```

---

## 🗺️ Roadmap

Velo is an evolving project. The following roadmap describes planned development, not necessarily features already implemented.

### `v0.1` — Foundation

- [x] Basic language syntax
- [x] Functions and recursion
- [x] Lists and dictionaries
- [x] String, list and dictionary methods
- [x] User input
- [ ] Continue improving tests and stability

### `v0.2` — Language Expansion

- [ ] Classes and object-oriented programming
- [ ] Exception handling with `try` / `except`
- [ ] Formatted strings (`f-strings`)
- [ ] Slicing (`arr[1:3]`)
- [ ] List comprehensions

### `v0.3` — Ecosystem

- [ ] Module imports
- [ ] Standard library expansion
- [ ] Package manager
- [ ] Better developer tooling

### `v1.0` — Performance and Stability

- [ ] JIT compilation research and implementation
- [ ] Broader Python-inspired language compatibility
- [ ] Real threading and concurrency support
- [ ] Stable runtime and documented language specification
- [ ] Improved cross-platform distribution

---

## 🧪 Testing

Build the project with debug settings:

```bash
cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug
cmake --build build
```

Run the test suite:

```bash
ctest --test-dir build --output-on-failure
```

The test suite should be expanded as new language features are introduced.

---

## 🤝 Contributing

Contributions, bug reports and feature suggestions are welcome!

### Contribution Workflow

1. Fork the repository.
2. Create a feature branch.
3. Implement and test your changes.
4. Commit your work.
5. Push your branch.
6. Open a Pull Request.

```bash
git checkout -b feature/amazing-feature

git add .
git commit -m "Add amazing feature"

git push origin feature/amazing-feature
```

### Development Setup

```bash
git clone https://github.com/gnyyvvv/velo.git
cd velo

cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug
cmake --build build

ctest --test-dir build --output-on-failure
```

Please include tests for new features and bug fixes whenever possible.

---

## 🔐 Security

If you discover a security vulnerability, please report it privately to the project maintainer when a private reporting channel is available. Avoid publishing sensitive exploit details before a fix is available.

---

## 📄 License

Velo is distributed under the **Apache License 2.0**.

See the [`LICENSE`](LICENSE) file for the full license text.

---

## 🌐 Community

- **GitHub Repository:** [gnyyvvv/velo](https://github.com/gnyyvvv/velo)
- **Issues & Bug Reports:** [GitHub Issues](https://github.com/gnyyvvv/velo/issues)
- **Website:** [velo.uz](https://velo.uz) *(coming soon)*

If you find Velo interesting, consider giving the repository a ⭐ star and sharing your feedback.

---

<p align="center">
  <b>⚡ Velo — Code simply. Build boldly.</b>
  <br>
  <sub>Made with ❤️ by gnyyvvv</sub>
</p>

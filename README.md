# Velo Programming Language

> 🐍 **Python-like syntax, ⚡ C++-like speed.**

Velo is a modern, fast, and simple programming language. It combines the simplicity of Python with the performance of C++.
Velo kodi (.vl)
↓
Lexer → Tokens
↓
Parser → AST
↓
Compiler → Bytecode
↓
Vertox VM → Result

text

---

## ✨ Features

- ✅ **Python-like syntax** — easy to learn, easy to write
- ✅ **96+ built-in functions** — strings, lists, dicts, math
- ✅ **Bytecode VM** (Vertox Engine) — fast execution
- ✅ **Small and portable** — single binary, no dependencies
- ✅ **Cross-platform** — Windows, Linux, macOS
- ✅ **Open source** — Apache-2.0 license

---

## 🚀 Quick Start

### Linux (universal installer)

curl -sSL https://raw.githubusercontent.com/gnyyvvv/velo/main/install.sh | bash
Then:

bash
velo --version
velo hello.vl
Linux (AppImage)
bash
wget https://github.com/gnyyvvv/velo/raw/main/Velo-0.1-x86_64.AppImage
chmod +x Velo-0.1-x86_64.AppImage
./Velo-0.1-x86_64.AppImage hello.vl
Build from source (Linux / macOS)
bash
git clone https://github.com/gnyyvvv/velo.git
cd velo
mkdir build && cd build
cmake ..
make
./velo --version
Windows (from source)
powershell
git clone https://github.com/gnyyvvv/velo.git
cd velo
mkdir build && cd build
cmake -G "MinGW Makefiles" ..
mingw32-make
.\velo.exe --version
📖 Examples
Hello World
velo
print("Hello, World!")
Fibonacci
velo
def fib(n):
    if n < 2:
        return n
    return fib(n - 1) + fib(n - 2)

for i in range(10):
    print("fib(", i, ") =", fib(i))
Strings
velo
name = "Ali Valiyev"
print(name.upper())         # ALI VALIYEV
print(name.lower())         # ali valiyev
print(name.split(" "))      # [Ali, Valiyev]
print(name.replace("Ali", "Hasan"))
print(name.startswith("Ali"))  # True
Lists
velo
numbers = [1, 2, 3, 4, 5]
numbers.append(6)
numbers.insert(0, 0)
numbers.remove(3)
numbers.sort()
numbers.reverse()
print(len(numbers))
Dicts
velo
user = {"name": "Ali", "age": 25}
print(user["name"])              # Ali
print(user.get("email", "N/A"))  # N/A
print(user.keys())               # [name, age]
print(user.values())             # [Ali, 25]
User Input
velo
name = input("What is your name? ")
print("Hello,", name, "!")
Recursion
velo
def factorial(n):
    if n <= 1:
        return 1
    return n * factorial(n - 1)

print(factorial(5))   # 120
📚 Syntax Reference
Variables
velo
x = 10
pi = 3.14
name = "Velo"
is_ready = True
nothing = None
Operators
Type	Operators
Arithmetic	+, -, *, /, //, %, **
Comparison	==, !=, <, >, <=, >=
Logical	and, or, not
Membership	in, not in
Assignment	=, +=, -=, *=, /=
Conditionals
velo
if x > 10:
    print("big")
elif x > 5:
    print("medium")
else:
    print("small")
Loops
velo
# for
for i in range(10):
    print(i)

# while
i = 0
while i < 10:
    print(i)
    i += 1

# break / continue
for i in range(10):
    if i == 5:
        break
    if i % 2 == 0:
        continue
    print(i)
Functions
velo
def add(a, b):
    return a + b

def greet(name, greeting="Hello"):
    return greeting + ", " + name

# Lambda
square = lambda x: x * x
print(square(5))   # 25
Built-in Functions (18)
Function	Description
print(x)	Print to console
input(prompt)	Read user input
len(x)	Length of list/string/dict
str(x)	Convert to string
int(x)	Convert to integer
float(x)	Convert to float
type(x)	Get type name
range(n)	Generate range
abs(x)	Absolute value
min(x)	Minimum
max(x)	Maximum
sum(x)	Sum of list
push(lst, x)	Add to list
pop(lst)	Remove from list
keys(d)	Dict keys
values(d)	Dict values
items(d)	Dict items
append(lst, x)	Append to list
String Methods (15)
Method	Example
.upper()	"hi".upper() → "HI"
.lower()	"HI".lower() → "hi"
.strip()	" x ".strip() → "x"
.split(sep)	"a,b".split(",") → ["a", "b"]
.replace(a, b)	"hi".replace("h", "H")
.startswith(s)	"hi".startswith("h") → True
.endswith(s)	"hi".endswith("i") → True
.find(s)	"hi".find("i") → 1
.count(s)	"aaa".count("a") → 3
.capitalize()	"hi".capitalize() → "Hi"
.title()	"hi there".title() → "Hi There"
.join(list)	",".join(["a","b"]) → "a,b"
.isdigit()	"123".isdigit() → True
.isalpha()	"abc".isalpha() → True
.isspace()	" ".isspace() → True
List Methods (11)
Method	Description
.append(x)	Add element
.pop(i)	Remove and return
.insert(i, x)	Insert at index
.remove(x)	Remove first match
.index(x)	Find index
.count(x)	Count occurrences
.reverse()	Reverse in place
.sort()	Sort in place
.clear()	Remove all
.copy()	Shallow copy
.extend(lst)	Extend with list
Dict Methods (7)
Method	Description
.keys()	Get keys
.values()	Get values
.items()	Get key-value pairs
.get(key, default)	Get with default
.pop(key)	Remove and return
.clear()	Remove all
.copy()	Shallow copy
🏗 Architecture
Velo is composed of two parts:

1. vertox/ — The Virtual Machine
The Vertox Engine is a stack-based bytecode VM. It's independent and can be used by other languages.

opcode.hpp — Bytecode instructions (50+)

value.hpp — Value system (int, float, str, list, dict, ...)

env.hpp — Scope environment

vm.hpp — VM interface

vm.cpp — Execution core (800+ lines)

2. src/ — The Language
The Velo language itself:

lexer.cpp — Text → Tokens

parser.cpp — Tokens → AST

compiler.cpp — AST → Bytecode

velo.cpp — High-level API

🗺 Roadmap
v0.1 (current)
✅ Basic syntax

✅ Functions, recursion

✅ Lists, dicts, strings

✅ String/List/Dict methods

✅ input()

✅ Linux AppImage

✅ Windows installer

v0.2 (planned)
⏭ Classes (class)

⏭ Exception handling (try/except)

⏭ f-strings (f"Hello, {name}!")

⏭ Slicing (arr[1:3])

⏭ List comprehensions

v0.3 (planned)
⏭ import modules

⏭ Standard library

⏭ Package manager

v1.0 (future)
⏭ JIT compiler

⏭ Full Python 3.x compatibility

⏭ Real threading (no GIL)

🤝 Contributing
Contributions are welcome! Here's how:

Fork the repository

Create a feature branch:

bash
git checkout -b feature/amazing-feature
Commit your changes:

bash
git commit -m "Add amazing feature"
Push:

bash
git push origin feature/amazing-feature
Open a Pull Request

Development Setup
bash
git clone https://github.com/gnyyvvv/velo.git
cd velo
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Debug
make
./velo --version
Running Tests
bash
cd build
ctest
📄 License
Apache License 2.0 — see LICENSE for details.

📬 Contact
GitHub: @gnyyvvv

Issues: github.com/gnyyvvv/velo/issues

Website: velo.uz (coming soon)

⭐ Star History
If Velo is useful to you, please give it a star ⭐ — it helps a lot!

<p align="center"> <strong>Made with ❤️ by <a href="https://github.com/gnyyvvv">gnyyvvv</a></strong><br> <em>Python-like syntax, C++-like speed.</em> </p>

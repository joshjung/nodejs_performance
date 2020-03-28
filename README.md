This project is designed to do a comparison of the performance of the following languages in the very basics
of mathematical operations:

- Node.js
- Ruby
- Python 3+
- GCC (unoptimized and optimized C)

Prerequisite is to have `gcc`, `ruby`, `python`, and `node` installed on your path.

The code written is designed specifically to test a language's ability to handle loop unrolling, statement aggregation, and optimizing
function calling in the most basic of mathematical operations like addition, multiplication and binary operations.

# Results (2020)

    ----- Node Version -----
    v10.16.0
    ----- GCC Version -----
    Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/c++/4.2.1
    Apple clang version 11.0.0 (clang-1100.0.33.17)
    Target: x86_64-apple-darwin18.7.0
    Thread model: posix
    InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
    ----- Python Version -----
    Python 3.8.1
    ----- Ruby Version -----
    ruby 2.7.0p0 (2019-12-25 revision 647ee6f091) [x86_64-darwin18]
    1) C Unoptimized -----
    gcc for.c: 
    127760038
    3054 ms
    2) C Optimized -----
    gcc -Wall -O2 for.c
    127760038
    281 ms
    3) Node -----
    node for.js
    99687396727.99696
    1066 ms
    4) Ruby -----
    ruby for.rb
    116474177.0
    34753.813 ms
    5) Python -----
    python for.py
    296265479632.99695
    59654 ms

# Run all tests

./run-all.sh

# Running native C (no optimization)

    gcc for.c
    ./a.out

# Running native C (with optimization)

    gcc -Wall -O2 for.c
    ./a.out

Running Node.JS
===============

    node for.js

Running Ruby
============

    ruby for.rb

Running Python
==============

    python for.py

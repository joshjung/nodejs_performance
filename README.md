This project is designed to do a comparison of Node.JS code to native C and Ruby.

Running native C (no optimization)
====================================

    gcc for.c
    ./a.out

Running native C (with optimization)
====================================

    gcc -Wall -02 for.c
    ./a.out

Running Node.JS
===============

    node for.js

Running Ruby
============

    ruby for.rb
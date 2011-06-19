#!/bin/bash

PARAMS='[Pre "neo", Suf "master", Pre "turbo", Uni "leo", Suf "3000"]'

set -v on

javac NameVoting.java && java NameVoting "$PARAMS"
ruby namevoting.rb "$PARAMS"
ghc -o namevote namevoting.hs && ./namevote "$PARAMS"

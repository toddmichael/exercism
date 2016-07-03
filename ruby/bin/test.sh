#!/bin/bash

set -ex

my_file=$(find . -type f -name '*.rb' ! -name '*_test.rb')
my_test_file=$(find . -type f -name '*_test.rb')

rubocop -Da $my_file
ruby -rminitest/pride $my_test_file

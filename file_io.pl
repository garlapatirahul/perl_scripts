#!/usr/bin/perl

use warnings;
use strict;

my $input_file = "input_file.txt";
my $output_file = "output_file.txt";

my @input_array;

open(OUTPUT_FILE,'>',$output_file) or die
  "cannot open $output_file for writing\n";
open(INPUT_FILE, '<',$input_file) or die
  "cannot open $input_file for reading\n";
  
  while(<INPUT_FILE>) {
  
    if($_ =~ /^[a-z]+$/) {
      print OUTPUT_FILE $_;
      }
      
  }
  
  close INPUT_FILE;
  close OUTPUT_FILE;
  

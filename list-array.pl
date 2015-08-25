#!/usr/bin/perl -w
#A script that shows 'Module' use as well as @list-arrays


use strict;
use warnings;

@INC 

my @list = qw (Wooh hoot!);

case 1
use MyModule;
print func1(@list),"\n";
print func2(@list),"\n";

case 2
use MyModule qw(&func1);
print func1(@list),"\n";
print MyModule::func2(@list),"\n";

case 3
use MyModule qw(:DEFAULT);
print func1(@list),"\n";
print func2(@list),"\n";

case 4
use MyModule qw(:Both);
print func1(@list),"\n";
print func2(@list),"\n";

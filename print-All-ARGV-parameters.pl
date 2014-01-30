#!/usr/bin/perl
	
# Credit: http://webguru.mathgurusonline.com/2006/02/26/determining-the-number-of-commandline-parameters-perl-tutorials-001/

####################
#
# FILE: params01.pl
#
####################
	
use strict; # Declare strict checking on variable names, etc.
use File::Basename;     # Used to get this script's filename
	
my $argc;   # Declare variable $argc. This represents
            # the number of commandline parameters entered.

my ( $dirName ) = dirname($0);
my ( $programName ) = basename($0);
my ( $fullPathToMe ) = $dirName . "\/" . $programName;

print "Full Path to this script:     $fullPathToMe\n";

$argc = @ARGV; # Save the number of commandline parameters.
if (@ARGV==0)
{
  # The number of commandline parameters is 0,
  # so print an Usage message.
  #
  usage();  # Call subroutine usage()
  exit();   # When usage() has completed execution,
            # exit the program.
}
	
print "Hello, there!\n";
print "You have $argc parameters\n";
	
my $i = 0; # Declare and set a loop index
	
foreach my $parm (@ARGV)
{
  print "parameter $i: ",$ARGV[$i],"\n";
  $i++;
}
exit(0);
	
sub usage
{
  print "Usage: perl params01.pl param01 [param02 ... param0n]\n";
}
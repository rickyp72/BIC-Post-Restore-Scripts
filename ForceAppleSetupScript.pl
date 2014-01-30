#!/usr/bin/perl -w
# Example perl script written by Justin Elliott <jde6@psu.edu>

$RestoredDiskPath = $ARGV[0]; # Get the name of the restored disk

# Print out the restored volume path:
print "Path of restored disk: $RestoredDiskPath\n\n";

# Let's force the restored Mac to run the Apple setup on boot by deleting the .AppleSetupDone file.
# Notice that you MUST put quotes around the $RestoredDiskName variable because
# spaces (and other characters) in the restored disk's name were not escaped and would otherwise
# be interpreted by the shell.
system ("/bin/rm \"$RestoredDiskPath/private/var/db/.AppleSetupDone\"");

print "\n";

# Let's rename the hard drive via AppleScript:
system ("/usr/bin/osascript -e 'tell application \"Finder\" to set name of disk \"$RestoredDiskPath\" to \"MacHD\"'");

print "\n";

# And let's say that we're done loud and proud:
system ("/usr/bin/osascript -e 'say \"Done!\"'");

exit(0);

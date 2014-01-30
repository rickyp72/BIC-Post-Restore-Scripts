Post-Restore-Scripts README

Place anything that can be executed from the command line (terminal.app) in this folder that you want to be able to select to run AFTER the master system disk image is restored.

The file that is selected to run within BIC will run with sudo root permissions, so be careful with what you do in the script!

These sample scripts are included in this folder:

1) Post-Restore-Install-Packages.sh <- Use this script to post-install packaged (.pkg and .mpkg) software installers. Read the "Post-Restore-Install-Packages README.txt" file for more details.

2) ForceAppleSetupScript.pl <- This Perl script forces the restored volume to boot up into the Apple Setup Assistant, renames the restored disk Finder Volume, and then says "Done" when it's done.
	
3) PostRestoreScriptExample.sh <- This script demostrates how to obtain the passed in arguements which include the path to the restored disk and the network IP or mode configured for the restored volume for the Built-In Ethernet network interface.

4) PartitionAndRestoreLionRecoveryHD.pl <- Requires that you're running BIC on Lion or later. Can be used to restore Lion's hidden 'Recovery HD' partition, which you'll need to create a system image before hand, just like what is required for the main Macintosh HD system image. Visit our system imaging web page for more information on creating OS X system disk images:

	<http://clc.its.psu.edu/UnivServices/itadmins/mac/blastimageconfig/createmasterdiskimages>


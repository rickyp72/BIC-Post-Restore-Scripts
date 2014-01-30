#!/bin/sh

# Revisions:
# 2011/12/01 By Rusty Myers <rzm102@psu.edu> Creating script to install packages

export PATH=/bin:/sbin:/usr/bin:/usr/sbin

# YesToExit variable will exit out of the script
# if the package install fails. 
# Set to 0 to ignore failures
# Set to 1 to exit on failure
YesToExit="0"
myDir="`dirname "$0"`"
myFileName="`basename "$0"`"
restored_HD_Path=${1:-Empty}
ip=$2
packagePath=$myDir/Post-Restore-Packages

# Function to check for exit value of command
ifError () {
# check return code passed to function
# Usage: ifError "Error doing this command"
# Prints: "[EROR] Time: 2011-12-02-11-43-04 Error doing this command Exit Status: 1"
exitStatus=$?
TIME=`date "+%Y-%m-%d-%H-%M-%S"`
if [[ $exitStatus -ne 0 ]]; then
# if rc > 0 then print error msg and quit
echo "[EROR] Time: $TIME $1 Exit Status: $exitStatus"
	if [ $YesToExit = 1 ]; then
		exit $exitStatus
	fi
fi
}

echo "All Our Variables"
echo "	****************"
echo "	YesToExit: $YesToExit"
echo "	myDir: $myDir"
echo "	myFileName: $myFileName"
echo "	My Full Path: $0"
echo "	Restored HD Volume Path: $restored_HD_Path"
echo "	IP Address Received: $ip"
echo "	packagePath: ${packagePath}"
echo "	****************"
echo ""

echo "[INFO] Lets get scanning..."
echo ""
# Install Packages
echo "[INFO] Scanning Packages folder at $packagePath..."
echo ""
for PkgName in "$packagePath/"*;
do
	echo ""
	# Make sure it's a package
	if [[ "${PkgName}" =~ '.mpkg' || "${PkgName}" =~ '.pkg' ]]; then 
		# Install that package!
		echo "[INFO] Installing ${PkgName}"
		installer -pkg "${PkgName}" -target "${restored_HD_Path}"
		ifError "Error installing $PkgName"
	else 
		# Warn
		echo "[WARN] ${PkgName} is not a package"
	fi
done

echo ""
echo "[INFO] Finished Installing Packages"

exit 0
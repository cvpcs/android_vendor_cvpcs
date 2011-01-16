#!/bin/bash

# script that attempts to convert amend scripts into edify

if [ $# -lt 2 ] ; then
	echo "Usage:"
	echo "    $0 [in_script] [out_script]"
	exit 1
fi

AMEND="${1}"
EDIFY="${2}"

if [ ! -e "${AMEND}" ] ; then
	echo "Error: Amend script [${AMEND}] does not exist!"
	exit 1
fi

if [ -e "${EDIFY}" ] ; then
	echo "Error: Destination [${EDIFY}] already exists, aborting!"
	exit 1
fi

while read line; do

arg0=$(echo "${line}" | awk '{print $1}')
arg1=$(echo "${line}" | awk '{print $2}')
arg2=$(echo "${line}" | awk '{print $3}')
arg3=$(echo "${line}" | awk '{print $4}')
arg4=$(echo "${line}" | awk '{print $5}')
arg5=$(echo "${line}" | awk '{print $6}')

echo "[$arg0] [$arg1] [$arg2] [$arg3] [$arg4] [$arg5]"

case $arg0 in
	show_progress)
		echo "show_progress($arg1, $arg2);" >> "${EDIFY}"
		;;
	format)
		echo "format(\"MTD\", \"$arg1\");" |
			sed -r 's/SYSTEM:/system/' |
			sed -r 's/DATA:/data/' |
			sed -r 's/CACHE:/cache/' >> "${EDIFY}"
		;;
	copy_dir)
		echo "package_extract_dir(\"$arg1\", \"$arg2\");" |
			sed -r 's/PACKAGE://' |
			sed -r 's/SYSTEM:/\/system/' |
			sed -r 's/DATA:/\/data/' |
			sed -r 's/CACHE:/\/cache/' >> "${EDIFY}"
		;;
	symlink)
		echo "symlink(\"$arg1\", \"$arg2\");" |
			sed -r 's/SYSTEM:/\/system\//' |
			sed -r 's/DATA:/\/data\//' |
			sed -r 's/CACHE:/\/cache\//' >> "${EDIFY}"
		;;
	set_perm_recursive)
		echo "set_perm_recursive($arg1, $arg2, $arg3, $arg4, \"$arg5\");" |
			sed -r 's/SYSTEM:/\/system\//' |
			sed -r 's/DATA:/\/data\//' |
			sed -r 's/CACHE:/\/cache\//' >> "${EDIFY}"
		;;
	set_perm)
		echo "set_perm($arg1, $arg2, $arg3, \"$arg4\");" |
			sed -r 's/SYSTEM:/\/system\//' |
			sed -r 's/DATA:/\/data\//' |
			sed -r 's/CACHE:/\/cache\//' >> "${EDIFY}"
		;;
	write_raw_image)
		echo "assert(package_extract_file(\"$arg1\", \"/tmp/$arg1\")," |
			sed -r 's/PACKAGE://' >> "${EDIFY}"
		echo "       write_raw_image(\"/tmp/$arg1\", \"$arg2\")," |
			sed -r 's/PACKAGE://' |
			sed -r 's/BOOT:/boot/' >> "${EDIFY}"
		echo "       delete(\"/tmp/$arg1\"));" |
			sed -r 's/PACKAGE://' >> "${EDIFY}"
		;;
	run_program)
		echo "assert(package_extract_file(\"$arg1\", \"/tmp/$arg1\")," |
			sed -r 's/PACKAGE://' >> "${EDIFY}"
		echo "       set_perm(0, 0, 0755, \"/tmp/$arg1\")," |
			sed -r 's/PACKAGE://' >> "${EDIFY}"
		echo "       run_program(\"/tmp/$arg1\")," |
			sed -r 's/PACKAGE://' >> "${EDIFY}"
		echo "       delete(\"/tmp/$arg1\"));" |
			sed -r 's/PACKAGE://' >> "${EDIFY}"
		;;
	*)
		echo "${line}" >> "${EDIFY}"
esac

done < "${AMEND}"

This script is useful in fixing the incredibly slow update process that comes default with CentOS8 Stream.

The script:
- Makes a backup of the repo files.
- Replaces the Base, Extras, and Extras-common repo files with a new repo file that uses ASU's mirror.
- Turns that frown upside down.

To use:
- Download fix_slow_yum.sh to your server.
- chmod fix_slow_yum.sh with +x
- Run fix_slow_yum.sh

Easy Run Code:
wget https://github.com/PostalPanda/CentOS8-FixSlowYum/blob/main/fix_slow_yum.sh; sudo chmod +x; sudo bash fix_slow_yum.sh

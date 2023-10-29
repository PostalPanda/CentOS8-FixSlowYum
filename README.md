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

```
wget https://raw.githubusercontent.com/PostalPanda/CentOS8-FixSlowYum/main/fix_slow_yum.sh; sudo chmod +x; sudo bash fix_slow_yum.sh
```

If you do not have wget installed:

```
curl -o fix_slow_yum.sh -LJO https://raw.githubusercontent.com/PostalPanda/CentOS8-FixSlowYum/main/fix_slow_yum.sh; sudo chmod +x fix_slow_yum.sh; sudo bash fix_slow_yum.sh; sudo yum update -y
```

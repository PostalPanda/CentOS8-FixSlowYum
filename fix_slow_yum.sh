#!/bin/bash

# Define the new BaseOS repository configuration
baseos_config="[baseos]
name=CentOS Stream \$releasever - BaseOS
#mirrorlist=http://mirrorlist.centos.org/?release=\$stream&arch=\$basearch&repo=BaseOS&infra=\$infra
baseurl=https://mirror.arizona.edu/centos/8-stream/BaseOS/x86_64/os/
gpgcheck=1
enabled=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-centosofficial"

# Define the new Extras repository configuration
extras_config="[extras]
name=CentOS Stream \$releasever - Extras
#mirrorlist=http://mirrorlist.centos.org/?release=\$stream&arch=\$basearch&repo=extras&infra=\$infra
#baseurl=http://mirror.centos.org/\$contentdir/\$stream/extras/\$basearch/os/
baseurl=https://mirror.arizona.edu/centos/8-stream/extras/x86_64/os/
gpgcheck=1
enabled=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-centosofficial"

# Define the new Extras Common repository configuration
extras_common_config="[extras-common]
name=CentOS Stream \$releasever - Extras common packages
#mirrorlist=http://mirrorlist.centos.org/?release=\$stream&arch=\$basearch&repo=extras-extras-common
#baseurl=http://mirror.centos.org/\$contentdir/\$stream/extras/\$basearch/extras-common/
baseurl=https://mirror.arizona.edu/centos/8-stream/extras/x86_64/extras-common/
gpgcheck=1
enabled=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-SIG-Extras"

# Define the paths to the repository configuration files
baseos_repo_file="/etc/yum.repos.d/CentOS-Stream-BaseOS.repo"
extras_repo_file="/etc/yum.repos.d/CentOS-Stream-Extras.repo"
extras_common_repo_file="/etc/yum.repos.d/CentOS-Stream-Extras-common.repo"

# Check if the BaseOS file exists and backup it
if [ -e "$baseos_repo_file" ]; then
    mv "$baseos_repo_file" "$baseos_repo_file.bak"
fi

# Check if the Extras file exists and backup it
if [ -e "$extras_repo_file" ]; then
    mv "$extras_repo_file" "$extras_repo_file.bak"
fi

# Check if the Extras Common file exists and backup it
if [ -e "$extras_common_repo_file" ]; then
    mv "$extras_common_repo_file" "$extras_common_repo_file.bak"
fi

# Create new configuration files with the desired content
echo "$baseos_config" > "$baseos_repo_file"
echo "$extras_config" > "$extras_repo_file"
echo "$extras_common_config" > "$extras_common_repo_file"

# Inform the user
echo "The repository configurations have been updated."

# Optionally, you can run 'yum makecache' to update the cache
# Uncomment the line below to run 'yum makecache'
# yum makecache

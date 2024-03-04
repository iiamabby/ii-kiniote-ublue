#platform=x86, AMD64, or Intel EM64T
#version=DEVEL
# Install Boot-Up C
repo --name=Boot-Up_C --baseurl=http://example.com/bootupc/repo
bootloader --location=mbr

# Install Fedora
repo --name=Fedora --baseurl=http://download.fedoraproject.org/pub/fedora/linux/releases/34/Everything/x86_64/os/
bootloader --location=mbr

# System language
lang en_US.UTF-8

# Keyboard layouts
keyboard us

# System timezone
timezone America/New_York

# Root password
rootpw --iscrypted $6$rounds=1000$abcdefghijklmnopqrstuv/abcdefghijklmnopqrstuv

# Network information
network --bootproto=dhcp --device=eth0

# Firewall configuration
firewall --disabled

# Run the Setup Agent on first boot
firstboot --disabled

# SELinux configuration
selinux --disabled

# Installation logging level
logging --level=info

# Reboot after installation
reboot

# System authorization information
auth --useshadow --enablemd5

# Use text mode install
text

# Skip X Window System
skipx

# Install the Fedora workstation packages
%packages
@^workstation-product-environment

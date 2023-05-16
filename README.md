# Arch Linux Installation Template

![Arch Linux Logo](.icons/arch-linux-logo.png)

This repository contains a template for setting up an Arch Linux system with a structured directory layout and essential setup scripts. It aims to provide a starting point for quickly configuring an Arch Linux installation to your preferences.

## Features

- Organized directory structure for documents, wallpapers, and setup scripts.
- Automated setup scripts for post-installation tasks, firewall configuration, and more.
- Customizable base setup script for installing essential packages and configuring system settings.

## Getting Started

To use this template for your Arch Linux installation, follow these steps:

1. Install Arch Linux on your system by following the official installation guide.
2. After Install essential packages by running `pacstrap`, generate the `fstab`, and then `chroot` into the new system.

3. Now we will be able to navigate into the `tmp` directory and clone the repository:

```bash
cd /tmp/
git clone https://github.com/your-username/arch-install.git
```

```bash
   cd arch-install
```
4. Customize the base setup script (base-setup.sh) to include the packages and system configurations you desire.

5. Run the necessary setup scripts according to your requirements:
    - firewall-setup.sh: Configures the firewall rules.
    - post-install.sh: Performs post-installation tasks, such as installing additional software or configuring user preferences.
    - r-setup.sh: Optional script for setting up R and associated packages.
6. Review the generated directory structure, wallpapers, and icons provided.

## Directory Structure
Here is an overview of the directory structure:

- .icons: Custom icons used in the system.
- .wallpapers: Collection of wallpapers for your desktop environment.
- .directory: Additional directories for customization.
- .git: Git version control configuration.
- .gitattributes: Git attributes configuration.
- base-setup.sh: Base setup script for essential package installation and system configurations.

- post-install.sh: Script for performing post-installation tasks. **NOTE:** this script will call dir-setup-Home/Documents.sh
    - dir-setup-Home.sh: Script to set up additional directories in the home folder.
    - dir-setup-Documents.sh: Script to set up the Documents directory.
- r-setup.sh: Optional script for setting up R and associated packages.
- firewall-setup.sh: Script to configure firewall rules.
- README.md: Project documentation file (you're currently reading it!).


Feel free to customize this template to fit your specific project requirements and add any additional sections or details as needed.

Good luck with your Arch Linux journey!

# Minimal Linux RootFS for Modern Hardware

           ┓╹
          ┏┫┏┳┓┏┓┏┓┏┓┏       
          ┗┻┛┓┗┗┛┛ ┗┻┛
          ┏┓┏┫┓┏┏┏┓┏
          ┗┛┗┻┗┫┛┗┗┫
               ┛   ┛

## Overview
This repository contains the source for building a minimal Linux root filesystem (rootfs) optimized for modern hardware. The primary focus is to streamline system operations by eliminating support for outdated hardware and reducing the potential attack surface, thereby enhancing both performance and security.

## Features
- **Optimized Module Loading:** Blacklists outdated and unnecessary drivers, including network, graphics, and storage drivers.
- **Sysctl Optimizations:** Adjusts TCP and UDP buffer sizes to improve network performance and resilience.
- **Customized Kernel Settings:** Disables legacy configurations and kernel mode settings for unused graphical drivers.
- **Dockerfile for Image Building:** Provides a Dockerfile to build a clean and minimal rootfs image from an Alpine base, ensuring it is tailored for production use without unnecessary files.

## Recent Commits
- **Optimization of Server Performance and Security:** Update to `blacklist.conf` to enhance system security and performance by removing obsolete drivers.
- **Module Management for i386 Architecture:** Adjustments in `i386.conf` to disable outdated module support.
- **Streamlined Kernel Mode Settings:** Updates to `kms.conf` to disable modesets for Radeon, Intel, and Nouveau graphics drivers.
- **Network Buffer Size Optimization:** Modified `sysctl` settings to optimize buffer sizes for improved network throughput.
- **Dockerfile Addition:** Introduction of a Dockerfile for building the rootfs image, focusing on a minimal set of components.

## Installation
To build the rootfs image, clone this repository and run the Dockerfile:

```bash
git clone https://github.com/dmora/rootfs.git
cd rootfs
docker build -t your-custom-rootfs .
```

# Contributing

Contributions are welcome! Whether it's adding new features, improving existing features, or reporting bugs, please feel free to help improve this project. For detailed instructions on how to contribute, please check the CONTRIBUTING.md file in this repository.

If you're interested in contributing, please follow these steps:

Fork the repository.
Create a new branch (git checkout -b feature-branch).
Make your changes.
Commit your changes (git commit -am 'Add some feature').
Push to the branch (git push origin feature-branch).
Create a new Pull Request.

# License
This project is licensed under the MIT License.

# Support
If you have any questions or need support, please open an issue in the repository. We aim to keep improving the project and appreciate all feedback.
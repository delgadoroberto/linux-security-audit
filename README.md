# Linux Security Audit

A lightweight Bash-based security auditing tool for Linux systems.

This project collects basic security information from a Linux host and generates a simple report that can be used for learning, lab environments, or as a starting point for security assessments.

## Features

- System information collection
- Hostname and kernel version
- Logged-in user detection
- Disk usage overview
- Memory usage summary
- Open TCP/UDP ports enumeration
- Running services inspection
- Root account verification
- Sudo users identification
- Basic file permission checks
- Report generation

## Project Structure

```
linux-security-audit/
├── audit.sh
├── reports/
│   └── audit_report.txt
├── screenshots/
│   └── sample_output.png
├── LICENSE
└── README.md
```

## Requirements

- Linux (Ubuntu, Debian, Kali, CentOS, Fedora, etc.)
- Bash
- Standard Linux utilities:
  - uname
  - hostname
  - df
  - free
  - ss (or netstat)
  - systemctl
  - awk
  - grep

## Usage

Clone the repository:

```bash
git clone https://github.com/delgadoroberto/linux-security-audit.git
cd linux-security-audit
```

Make the script executable:

```bash
chmod +x audit.sh
```

Run the audit:

```bash
./audit.sh
```

Optionally, save the output:

```bash
./audit.sh > reports/audit_report.txt
```

## Sample Output

```
=================================
      LINUX SECURITY AUDIT
=================================

Hostname: ubuntu-lab
Kernel: 6.8.0

[+] Disk Usage
Filesystem      Size  Used Avail Use%
/dev/sda1        50G   18G   30G  38%

[+] Open Ports
22/tcp    ssh
80/tcp    nginx

[+] Root Users
root

[+] Sudo Group Members
roberto
```

## Learning Objectives

This project was created to practice:

- Linux administration
- Bash scripting
- Security auditing fundamentals
- System enumeration techniques
- Security automation concepts

## Possible Future Improvements

- Export reports in JSON format
- HTML report generation
- CIS Benchmark checks
- File integrity verification
- Log analysis integration
- Docker container auditing
- Scheduled execution with cron
- Compliance-oriented checks (CIS/NIST)

## Disclaimer

This tool is intended for educational purposes and authorized security assessments only.

## Author

**Roberto Delgado**

Senior Cybersecurity Consultant

Interests:
- Vulnerability Management
- Security Governance & Compliance
- Linux Security
- Cloud Security
- Security Automation
- DevSecOps

GitHub:
https://github.com/delgadoroberto

## License

This project is licensed under the MIT License.

# **Open Source Audit Project – Final Documentation**

## **Student Details**

* **Name:** Chandraprakash
* **Register Number:** 24BAI10787
* **Course:** Open Source Software
* **Chosen Software:** Python
* **Submission Date:** March 2026

---

# **1. Project Overview**

This project is based on performing a complete audit of an open-source software, which in my case is **Python**. The work is divided into two major parts:

### **Phase 1 – Theory**

In this phase, I explored:

* The history and origin of Python
* Its licensing model
* Ethical importance of open source
* Python’s presence in Linux systems
* Its ecosystem and dependencies
* Comparison with proprietary software

### **Phase 2 – Practical**

In this phase, I:

* Created **5 shell scripts** in Ubuntu
* Tested each script on my system
* Verified outputs with real examples
* Organized everything into a proper project

---

# **2. Theoretical Study**

## **A1: Origin of Python**

Python was developed by **Guido van Rossum** in 1991. The goal was to create a language that is simple, readable, and easy to use. The name “Python” was inspired by *Monty Python*, not the snake.

---

## **A2: License**

Python uses the **Python Software Foundation (PSF) License**, which allows:

* Free usage
* Modification
* Redistribution

This makes Python highly flexible and developer-friendly.

---

## **A3: Ethical Perspective**

Open source software plays a huge role in making technology accessible. Python allows students and developers to:

* Learn without cost
* Modify code freely
* Share knowledge globally

---

## **B: Linux Footprint**

On Linux systems:

* Python location → `/usr/bin/python3`
* Config files → `/etc/python3`
* Permissions → usually `755` (folders), `644` (files)

---

## **C: Ecosystem**

Python depends on:

* libc
* openssl
* zlib

It is maintained by the **Python Software Foundation (PSF)** and widely used in web, AI, and automation.

---

## **D: Open Source vs Proprietary**

| Feature     | Python         | MATLAB     |
| ----------- | -------------- | ---------- |
| Cost        | Free           | Paid       |
| Source Code | Open           | Closed     |
| Community   | Large          | Limited    |
| Learning    | Free resources | Paid       |
| Flexibility | High           | Restricted |

👉 **Conclusion:** Open source is better for learning and innovation.

---

# **3. Shell Scripts Developed**

## **Script 1 – System Identity Report**

**Purpose:** Display system details

**Features:**

* OS name, kernel, architecture
* User and home directory
* Shell and uptime
* Current date

**Concepts Used:**

* Variables
* Command substitution
* Conditional statements

---

## **Script 2 – Package Inspector**

**Purpose:** Check Python installation

**Features:**

* Installation status
* Version and architecture
* Binary path
* Python runtime version

**Concepts Used:**

* Conditional checks
* dpkg command
* awk and grep

---

## **Script 3 – Directory Auditor**

**Purpose:** Analyze system directories

**Features:**

* Directory permissions
* Owner details
* Size of directories
* Disk usage summary

**Concepts Used:**

* Arrays
* Loops
* File checking

---

## **Script 4 – Log Analyzer**

**Purpose:** Analyze logs using keywords

**Features:**

* Total lines count
* Matching keyword count
* Percentage calculation
* Last 5 matching entries

**Usage:**

```bash
./script4.sh <file> [keyword]
```

**Concepts Used:**

* Command-line arguments
* While loop
* Counters
* bc for calculations

---

## **Script 5 – Manifesto Generator**

**Purpose:** Generate open-source pledge

**Features:**

* Takes user input
* Generates a text file
* Displays output

**Concepts Used:**

* read command
* heredoc
* file handling

---

# **4. How to Run the Project**

## Step 1: Requirements

* Ubuntu / Debian system
* Bash shell

---

## Step 2: Make Scripts Executable

```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

---

## Step 3: Run Scripts

### Script 1

```bash
./script1.sh
```

### Script 2

```bash
./script2.sh
```

### Script 3

```bash
./script3.sh
```

### Script 4

```bash
./script4.sh /tmp/test.log error
```

### Script 5

```bash
./script5.sh
```

---

# **5. Dependencies**

| Package | Purpose                        |
| ------- | ------------------------------ |
| bc      | Used in percentage calculation |
| python3 | Used for version checking      |

### Install:

```bash
sudo apt update
sudo apt install bc python3
```

---

# **6. Troubleshooting**

### Script not running

```bash
chmod +x script.sh
```

### bc not found

```bash
sudo apt install bc
```

### Python missing

```bash
sudo apt install python3
```

### Log file issue

Create test file:

```bash
echo "error occurred" > test.log
```

---

# **7. Work Summary**

In this project, I:

* Selected Python for audit
* Studied its history and license
* Understood open source importance
* Explored Linux integration
* Built 5 working shell scripts
* Tested each script practically

---

# **8. GitHub Repository**

```
https://github.com/YOUR_USERNAME/oss-audit-24BAI10787
```

---

# **9. Conclusion**

This project helped me understand both the theory and practical side of open source software. I learned how Python works in Linux environments and how shell scripting can automate system tasks. Overall, it improved my understanding of open source tools and real-world Linux usage.

---

## **Author**

Chandraprakash
Register No: 24BAI10787
VIT University
March 2026

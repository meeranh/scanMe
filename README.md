# **ScanMe**

This is a simple bash script to scan a target IP address for open or closed ports.

### **Usage**

`./scanMyPorts.sh [Target IP]`

Example: './scanMyPorts.sh 157.240.15.35'

### **Features**

* Scans a target IP address for common ports (20, 21, 22, 23, 25, 53, 80, 110, 143, 443, 993, 995, 1723, 3306, 3389, 5900, 8080, 8443, 10000, 32768)
* Displays the result for each port in a readable format
* Can be modified to scan all 65,535 ports (uncomment line 11)

### **Tools Used**
* NetCat
* Bash

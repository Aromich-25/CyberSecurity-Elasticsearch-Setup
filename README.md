# Elasticsearch & Kibana Installation Script for Ubuntu

## 🤔 What Does This Repository Do?
This project provides an automated Bash script to install Elasticsearch and Kibana on an Ubuntu system. 
These tools are essential for:
- **Cybersecurity & SIEM** (Log analysis, threat hunting, security monitoring)
- **Data Searching** (Storing and quickly retrieving large amounts of data)
- **Application Performance Monitoring** (Observing application logs and system health)

If you're new to Elasticsearch or cybersecurity, this script helps you set up Elasticsearch **without needing to manually install everything.** 

## Prerequisites
- A machine running Ubuntu.
- `curl` and `wget` installed.
- User privileges to execute commands as `sudo`.

## Installation Instructions

1. **Download the script**
   ```bash
   wget https://raw.githubusercontent.com/Aromich-25/CyberSecurity-Elasticsearch-Setup/main/install_elasticsearch_kibana.sh
   ```

2. **Grant execution permission**
   ```bash
   chmod +x install_elasticsearch_kibana.sh
   ```

3. **Run the script**
   ```bash
   ./install_elasticsearch_kibana.sh
   ```

4. **Verify Elasticsearch status**
   ```bash
   sudo systemctl status elasticsearch.service
   ```

5. **Verify Kibana status**
   ```bash
   sudo systemctl status kibana
   ```

6. **Access Elasticsearch in your browser**
   - Open:
     ```
     http://localhost:9200/
     ```

7. **Access Kibana GUI in your browser**
   - Open:
     ```
     http://localhost:5601/
     ```

## ⚙️ How It Works (For Beginners)
This script automates the installation by:
1. **Updating** the system's package list (to ensure you get the latest software).
2. **Installing dependencies** (`apt-transport-https` & `wget` to securely download files).
3. **Adding Elasticsearch’s official repository** (so Ubuntu knows where to download Elasticsearch from).
4. **Installing Elasticsearch** (pulling the latest version and setting it up).
5. **Installing Kibana** (the graphical UI for Elasticsearch).
6. **Configuring both services to start automatically** when the system boots.
7. **Verifying installation** using system commands and a test request.

After running this script, **Elasticsearch and Kibana will be running on your system!** 🎉

## 🛠️ Troubleshooting Common Issues
**1️⃣ Error: "command not found" when running the script**
   - Make sure you added execution permissions:  
     ```bash
     chmod +x install_elasticsearch_kibana.sh
     ```

**2️⃣ Error: "Elasticsearch failed to start"**
   - Run this to check logs:  
     ```bash
     sudo journalctl -u elasticsearch --no-pager | tail -50
     ```
   - Ensure your system has at least **2GB RAM** (Elasticsearch requires memory to run).

**3️⃣ Error: "curl command not found"**
   - Install `curl` with:
     ```bash
     sudo apt-get install curl -y
     ```

For more help, check [Elasticsearch Documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html).

## Additional Resources
For more information, check out these official guides:

- **Elasticsearch Installation Guide**: [Run Elasticsearch Locally](https://www.elastic.co/guide/en/elasticsearch/reference/current/run-elasticsearch-locally.html)
- **Debian Package Installation**: [Elasticsearch Debian Install](https://www.elastic.co/guide/en/elasticsearch/reference/current/deb.html)
- **Elasticsearch for Cybersecurity**: [SIEM & Security Analytics](https://www.elastic.co/security)
- **Bash Scripting Best Practices**: [Linux Shell Scripting Tutorial](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)
- **GitHub Repository Best Practices**: [Open Source Guide](https://opensource.guide/)

## Notes
- The script installs the latest version of Elasticsearch and Kibana from the official Elastic repository.
- Ensure your system has internet access for downloading dependencies.
- You may need to configure Kibana further depending on your use case.

For more information, refer to the [official Elasticsearch documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/install-elasticsearch.html).

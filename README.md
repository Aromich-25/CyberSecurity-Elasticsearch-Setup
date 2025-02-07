# Elasticsearch Installation Script for Ubuntu

## Overview
This script automates the installation of Elasticsearch on an Ubuntu system. It installs prerequisites, adds the official Elasticsearch repository, and starts the Elasticsearch service.

## Prerequisites
- A machine running Ubuntu.
- `curl` and `wget` installed.
- User privileges to execute commands as `sudo`.

## Installation Instructions

1. **Download the script**
   ```bash
   wget https://raw.githubusercontent.com/your-github-username/repository-name/main/install_elasticsearch.sh
   ```

2. **Grant execution permission**
   ```bash
   chmod +x install_elasticsearch.sh
   ```

3. **Run the script**
   ```bash
   ./install_elasticsearch.sh
   ```

4. **Verify Elasticsearch status**
   ```bash
   sudo systemctl status elasticsearch.service
   ```

5. **Test if Elasticsearch is running**
   ```bash
   curl -X GET "localhost:9200/"
   ```

## Additional Resources
For more information, check out these official guides:

- **Elasticsearch Installation Guide**: [Run Elasticsearch Locally](https://www.elastic.co/guide/en/elasticsearch/reference/current/run-elasticsearch-locally.html)
- **Debian Package Installation**: [Elasticsearch Debian Install](https://www.elastic.co/guide/en/elasticsearch/reference/current/deb.html)
- **Elasticsearch for Cybersecurity**: [SIEM & Security Analytics](https://www.elastic.co/security)
- **Bash Scripting Best Practices**: [Linux Shell Scripting Tutorial](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)
- **GitHub Repository Best Practices**: [Open Source Guide](https://opensource.guide/)

## Notes
- The script installs the latest version of Elasticsearch from the official Elastic repository.
- Ensure your system has internet access for downloading dependencies.
- You may need to configure Elasticsearch further depending on your use case.

For more information, refer to the [official Elasticsearch documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/install-elasticsearch.html).

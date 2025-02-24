#!/bin/bash
# Update system packages
sudo apt update -y

# Install Nginx
sudo apt install -y nginx

# Start and enable Nginx service
sudo systemctl start nginx
sudo systemctl enable nginx

# Create a custom HTML page
echo "<html>
<head>
    <title>Terraform Deployment</title>
</head>
<body>
    <h1>Deployed via Terraform.</h1>
</body>
</html>" | sudo tee /var/www/html/index.html > /dev/null

# Restart Nginx to apply changes
sudo systemctl restart nginx

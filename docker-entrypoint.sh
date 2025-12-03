#!/bin/sh

# Clone the frappe-python-mcp repository if it doesn't exist
if [ ! -d "/app/frappe-python-mcp" ]; then
  echo "Cloning frappe-python-mcp repository..."
  git clone https://ghp_ka8dmCK0bCFoaTJzzXCNgU7zWwOpfu1tyV9I@github.com/gsnbng/frappe-python-mcp.git /app/frappe-python-mcp
else
  echo "frappe-python-mcp repository already exists"
fi

# Start the backend
exec npm run backend

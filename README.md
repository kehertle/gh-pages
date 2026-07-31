# Setup env
./install_deps.sh

# activate venv
source .venv/bin/activate 

# Develop
mkdocs serve

# Deploy
mkdocs build
mkdocs gh-deploy
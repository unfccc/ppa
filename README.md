This is unofficial UNFCCC Personal Package Archive

# Connecting

curl "https://unfccc.github.io/ppa/unfccc-ppa.gpg.asc" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/unfccc-ppa.gpg >/dev/null
sudo curl -o /etc/apt/sources.list.d/unfccc-ppa-ubuntu-focal.list "https://unfccc.github.io/ppa/unfccc-ppa-ubuntu-focal.list"
sudo apt update

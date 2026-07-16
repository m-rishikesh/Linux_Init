sudo dnf install -y \
podman \
golang \
python3-pip \
gcc \
g++

git config --global user.name "merishikesh"
git config --global user.email "rishikeshraj.klg@gmail.com"
if ! command -v code >/dev/null 2>&1; then
    echo "VS Code not found. Installing..."

    curl -L https://go.microsoft.com/fwlink/?LinkID=760867 -o /tmp/vscode.rpm
    sudo dnf install -y /tmp/vscode.rpm
    rm -f /tmp/vscode.rpm

    echo "VS Code installed successfully."
else
    echo "VS Code is already installed."
fi

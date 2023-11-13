USERNAME=kdfrench

# Install apt reqs.
sudo apt update
# Setup dockers gpg key
sudo apt install -y \
    ca-certificates \
    curl \
    gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
# Add repo to apt sources
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt install -y \
    terminator \
    python3-pip \
    autogen \
    autoconf \
    build-essential \
    bash-completion \
    pkg-config \
    python3-tk \
    sysstat \
    fonts-font-awesome \
    docker \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin \
    docker-ce-rootless-extras \
    i3-wm \
    i3lock \
    i3status

# Docker post install
sudo groupadd docker
sudo usermod -aG docker $USER
# User will need to logout and back in to update group rules.

# Install python reqs.
pip3 install \
    i3ipc

# Make resource files if needed.
if [ ! -e ~/.i3/resources/workspaces.txt ]; then
    echo '<span color="light green">Com</span>' > ~/.i3/resources/workspaces.txt
fi
if [ ! -e ~/.i3/resources/last_pose_in_workspace.txt ]; then
    echo '<span color="light green">Com</span>:1' > ~/.i3/resources/last_pose_in_workspace.txt 
fi

# Install i3blocks from source.
git clone https://github.com/vivien/i3blocks.git ~/software/i3blocks
cd ~/software/i3blocks
./autogen.sh
./configure
make
sudo make install

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


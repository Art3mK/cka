sudo apt-get update && sudo apt-get -y install git zsh tmux curl wget vim ca-cacert zsh-syntax-highlighting apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp -v .zshrc ~/.zshrc
cp -v .zshenv ~/.zshenv
cp -v .tmux.conf ~/.tmux.conf
cp -v .vimrc ~/.vimrc

# echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
# sudo apt-get update
# sudo apt-get install -y kubectl

sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens

mkdir -p ~/.oh-my-zsh/completions
chmod -R 755 ~/.oh-my-zsh/completions
ln -s /opt/kubectx/completion/kubectx.zsh ~/.oh-my-zsh/completions/_kubectx.zsh
ln -s /opt/kubectx/completion/kubens.zsh ~/.oh-my-zsh/completions/_kubens.zsh

chsh -s /bin/zsh
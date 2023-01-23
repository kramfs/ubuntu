# Install OMZ
#RUN curl -LO https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
#echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc
if test "$(id -u)" -gt "0" && test -d "$HOME"; then
    if test ! -e "$HOME"/.oh-my-zsh; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
        #echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc
        sed -i 's/robbyrussell/powerlevel10k\/powerlevel10k/g' ~/.zshrc
    fi
fi
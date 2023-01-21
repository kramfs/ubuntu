# Install OMZ
#RUN curl -LO https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
RUN echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc
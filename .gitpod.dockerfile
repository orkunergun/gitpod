FROM orkunergun/docker:ubuntu

# Change Shell to ZSH
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
CMD [ "zsh && source ~/.zshrc" ]

user_bash 'clone dotfiles' do
  code "git clone https://github.com/kevinbuch/dotfiles ~/dotfiles"
end

user_bash 'move zsh directory' do
  code <<-EOH
  cp ~/.zsh/* ~/dotfiles/zsh
  rm -rf ~/.zsh
  EOH
end

user_bash 'link dotfiles' do
  code "~/dotfiles/activate.rb"
end

user_bash 'vundle install' do
  code <<-EOH
  git clone https://github.com/gmarik/Vundle.vim ~/dotfiles/vim/bundle/vundle
  vim +PluginInstall +qall
  EOH
end

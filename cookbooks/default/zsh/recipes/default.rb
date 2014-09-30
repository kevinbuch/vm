apt_package 'zsh'

home_directory '.zsh'

zsh_files_dir = Helper.home('.zsh')

zsh_file 'ssh'

bash 'make ZSH the default login shell' do
  code "sudo chsh -s `which zsh` #{Helper.user}"
end

bash "configure git credential helper" do
  code "git config --global credential.helper 'cache --timeout 3600'"
end

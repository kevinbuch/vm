apt_package "erlang"

bash "install rebar" do
  code "wget https://raw.github.com/wiki/rebar/rebar/rebar && chmod u+x rebar"
  code "mv rebar /usr/local/bin"
end

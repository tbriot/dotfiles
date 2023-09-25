env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_add_keys () {
  for possiblekey in ${HOME}/.ssh/id_*; do
    if grep -q PRIVATE "$possiblekey"; then
      ssh-add "$possiblekey"
    fi
  done
}

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2=agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    agent-add-keys
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    agent-add-keys
fi

unset env

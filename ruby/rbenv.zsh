# init according to man page
# To use Homebrew's directories rather than ~/.rbenv add to your profile:
export RBENV_ROOT=/usr/local/var/rbenv
if (( $+commands[rbenv] ))
then
  eval "$(rbenv init -)"
fi

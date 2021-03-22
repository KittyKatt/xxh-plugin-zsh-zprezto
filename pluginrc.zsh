CURR_DIR="$(cd "$(dirname "$0")" && pwd)"
plugin_name='xxh-plugin-zsh-zprezto'

export ZSH="$CURR_DIR/zprezto"

setopt EXTENDED_GLOB
for rcfile in ${CURR_DIR}/zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

autoload -U compinit && compinit

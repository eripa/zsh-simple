# DESCRIPTION:
#   A simple zsh configuration that gives you 90% of the useful features that I use everyday.
#
# AUTHOR:
#   Geoffrey Grosenbach http://peepcode.com

# Colors
autoload -U colors
colors
setopt prompt_subst

# Prompt
local linetwo="%(?,%{$fg[white]%}\$%{$reset_color%},%{$fg[red]%}✗🌧%{$reset_color%})"

PROMPT='%{$fg[red]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}:%{$fg[green]%}%/$(~/bin/git-cwd-info)%{$reset_color%}
${linetwo} %{$reset_color%}'

# Load completions for Ruby, Git, etc.
autoload compinit
compinit


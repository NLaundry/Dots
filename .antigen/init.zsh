#-- START ZCACHE GENERATED FILE
#-- GENERATED: Tue 29 Oct 2019 04:27:18 PM EDT
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/home/nlaundry/sideProjects/config/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/nlaundry/.antigen/bundles/StackExchange/blackbox /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/golang /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nvm /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux) path+=(/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/nlaundry/.antigen/bundles/StackExchange/blackbox /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/golang /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nvm /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python /home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/home/nlaundry/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/home/nlaundry/.oh-my-zsh" ]]; then
  ZSH="/home/nlaundry/.oh-my-zsh"; ZSH_CACHE_DIR="/home/nlaundry/.oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/home/nlaundry/.antigen/bundles/StackExchange/blackbox/blackbox.plugin.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew/brew.plugin.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose/docker-compose.plugin.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/golang/golang.plugin.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm/npm.plugin.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nvm/nvm.plugin.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python/python.plugin.zsh';
source '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux/tmux.plugin.zsh';
source '/home/nlaundry/.antigen/bundles/bhilburn/powerlevel9k/powerlevel9k.zsh-theme.antigen-compat';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/StackExchange/blackbox.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/brew plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/common-aliases plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/docker plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/docker-compose plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/golang plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/npm plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/nvm plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/python plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/tmux plugin true' 'https://github.com/bhilburn/powerlevel9k.git powerlevel9k.zsh-theme theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/home/nlaundry/.antigen/bundles/StackExchange/blackbox//' '/home/nlaundry/.antigen/bundles/StackExchange/blackbox///blackbox.plugin.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew/brew.plugin.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker-compose/docker-compose.plugin.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/golang' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/golang/golang.plugin.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm/npm.plugin.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nvm' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/nvm/nvm.plugin.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/python/python.plugin.zsh' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux' '/home/nlaundry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux/tmux.plugin.zsh' '/home/nlaundry/.antigen/bundles/bhilburn/powerlevel9k/powerlevel9k.zsh-theme' '/home/nlaundry/.antigen/bundles/bhilburn/powerlevel9k/powerlevel9k.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE

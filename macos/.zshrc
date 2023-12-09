alias ls='ls -FG'

# https://git-scm.com/book/ja/v2/%E4%BB%98%E9%8C%B2-A%3A-%E3%81%9D%E3%81%AE%E4%BB%96%E3%81%AE%E7%92%B0%E5%A2%83%E3%81%A7%E3%81%AEGit-Zsh%E3%81%A7Git%E3%82%92%E4%BD%BF%E3%81%86
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'

# get current branch in git repo
function git_branch() {
	BRANCH=$vcs_info_msg_0_
	if [[ ! "$BRANCH" == "" ]]; then
		echo "($BRANCH)"
	else
		echo ""
	fi
}

PS1='%F{green}%n%f:%F{blue}%~%f%F{cyan}$(git_branch)%f$ '

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# fnm
if has "fnm"; then
	eval "$(fnm env --use-on-cd)"
	export NODEMODULES_GLOBAL_PATH="$(npm root -g)"
fi

# asdf
if has "asdf"; then
	. /usr/local/opt/asdf/libexec/asdf.sh
fi

if has "go"; then
	export GOROOT="$(go env GOROOT)"
	export GOPATH="$(go env GOPATH)"
	export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
fi

# https://github.com/kennyp/asdf-golang/pull/56
asdf_update_golang_env() {
	local go_root
	go_root="$(asdf where golang)"
	# GOROOT
	if [[ -n "${go_root}/go" ]]; then
		export GOROOT="${go_root}/go"
		# PATHが通っていなければ追加する
		if [[ ! "$PATH" =~ .*"$GOROOT".* ]]; then
			export PATH="$PATH:$GOROOT/bin"
		fi
	fi
	# GOPATH
	if [[ -n "${go_root}/packages" ]]; then
		export GOPATH="${go_root}/packages"
		# PATHが通っていなければ追加する
		if [[ ! "$PATH" =~ .*"$GOPATH".* ]]; then
			export PATH="$PATH:$GOPATH/bin"
		fi
	fi
}
autoload -U add-zsh-hook
add-zsh-hook chpwd asdf_update_golang_env

# python
export PATH="$PATH:$HOME/Library/Python/3.9/bin"


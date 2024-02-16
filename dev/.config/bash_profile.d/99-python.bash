function venv {
	python_bin="$($HOME/.asdf/bin/asdf which python)"
	venv_name="$(basename $(pwd))"

	echo "Creating virtualenv $venv_name"
	$python_bin -m venv $HOME/.virtualenvs/$venv_name
	source $HOME/.virtualenvs/$venv_name/bin/activate
}

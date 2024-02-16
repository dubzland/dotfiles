export ASDF_DATA_DIR="${HOME}/.asdf"
if [[ -f ${ASDF_DATA_DIR}/asdf.sh ]]; then
	. ${ASDF_DATA_DIR}/asdf.sh
	. ${ASDF_DATA_DIR}/completions/asdf.bash
fi

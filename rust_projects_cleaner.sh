#!/bin/bash

readonly work_dir=$(dirname "$(readlink --canonicalize-existing "${0}" 2> /dev/null)")
readonly current_dir="${PWD}"

if [[ -z "${RUST_PROJECTS_DIR}" ]]; then
    echo "error: variable RUST_PROJECTS_DIR not defined" >&2
    exit 1
fi

while read dir; do
    cargo clean --manifest-path "${dir}/Cargo.toml"
done < <(find "${RUST_PROJECTS_DIR}" -type d -exec test -e '{}/Cargo.toml' \; -print)

exit 0

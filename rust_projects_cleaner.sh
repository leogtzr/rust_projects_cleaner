#!/bin/bash

work_dir=$(dirname "$(readlink --canonicalize-existing "${0}" 2> /dev/null)")
readonly current_dir="${PWD}"

if [[ -z "${RUST_PROJECTS_DIR}" ]]; then
    echo "error: variable RUST_PROJECTS_DIR not defined" >&2
    exit 1
fi

cd "${RUST_PROJECTS_DIR}"

for dir in *; do
    rust_project="${RUST_PROJECTS_DIR}/${dir}"
    if [ -d "${rust_project}" ]; then
        if [[ -f "${rust_project}/Cargo.toml" ]]; then
            cd "${RUST_PROJECTS_DIR}/${dir}"
            cargo clean
        fi
    fi
done

cd "${current_dir}"

exit 0

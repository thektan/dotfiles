#!/bin/bash

clear

LPD="${1}"

if [[ -z "${LPD}" ]]; then
	echo "⚠️  LPD was not provided, nothing will be committed"
fi

function get_owner() {
	local project="${1}"

	local owner=""

	while : ; do
		owner="$(grep -e "^${project}/ " -e "^${project} " ./.github/CODEOWNERS | cut -d " " -f 2-)"

		project="$(dirname "${project}")"

		[[ "${project}" == "." ]] && owner="(unknown)"
		[[ -n "${owner}" ]] && break
	done

	echo "$owner" | sed 's/[[:space:]]//g'
}

cd /home/ivan/Liferay/Portal/liferay-portal

mapfile -t projects < <(git diff --name-only | grep "^modules/apps/" | sed -e 's/modules\/apps\/\([^\\/]*\)\/\([^\\/]*\)\/.*/modules\/apps\/\1\/\2/' | sort | uniq)
mapfile -t dxp_projects < <(git diff --name-only | grep "^modules/dxp/apps/" | sed -e 's/modules\/dxp\/apps\/\([^\\/]*\)\/\([^\\/]*\)\/.*/modules\/dxp\/apps\/\1\/\2/' | sort | uniq)

projects+=( "${dxp_projects[@]}" )

mapfile -t mappings < <(
	for project in "${projects[@]}"; do
		owner="$(get_owner "${project}")"

		if [[ -z "${owner}" ]]; then
			echo "❌ No owner was returned for project ${project}"
			exit 3
		fi

		if [[ $(wc -l <<< "${owner}") != 1 ]]; then
			echo "❌ More than one owner was returned for project ${project}:"
			echo "${owner}"
			exit 3
		fi

		echo "${owner}#${project}"
	done | sort
)

for mapping in ${mappings[@]}; do
	IFS="#" read -r -a fields <<< "$mapping"

	if [[ -n "${LPD}" ]]; then
		(
			cd "${fields[1]}"
			git add .
			git commit -m "${LPD} ${fields[0]} - ${fields[1]}"

			echo
		)
	else
		echo ${fields[0]} -- ${fields[1]}
	fi
done
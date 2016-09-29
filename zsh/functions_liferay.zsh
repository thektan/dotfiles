#!/usr/bin/env bash

# Find gradle in the root of git directory and execute it.
# Otherwise use globally installed gradle.
# @author Nate Cavanaugh
gradle() {
	local root_level=$(git rev-parse --show-toplevel 2>/dev/null)

	if [[ -n "$root_level" && -f "$root_level/gradlew" ]];
		then root_level="$root_level/gradlew"
	else
		root_level=$(which gradle)
fi

	"$root_level" $@
}

# Open the jria ticket ID
open_jira_ticket() {
	open http://issues.liferay.com/browse/$0;
}

# Get the last mentioned JIRA ticket id from the commit log
# @author Nate Cavanaugh
latest_jira_ticket() {
	git log $1 --oneline | grep -Eo '([A-Z]{3,}-)([0-9]+)' -m 1;
}

# Open the url to the latest JIRA ticket referenced in the log
open_jira_ticket() {
	if [ -z "$1" ]; then
		latestTicket=$(latest_jira_ticket);
		open http://issues.liferay.com/browse/$latestTicket;
	fi

	if [ -n "$1" ]; then
		open http://issues.liferay.com/browse/$1;
	fi
}

# Gets the JIRA url for the latest JIRA ticket referenced in the log
latest_jira_ticket_url() {
	export latestTicketURL="http://issues.liferay.com/browse/$(latest_jira_ticket)";
}

# Submit a pull request
# $1 branch name - the branch to send the pull request to
# $2 username - pull request recipient
# $3 string - extra descriptions
submit_pull_request() {
	if [ -n "$1" ] && [ -n "$2" ]; then
		description="";

		open_jira_ticket;

		if [ -n "$3" ]; then
			description="<br><br>$3";
		fi

		gh pr --branch $1 --submit $2 -D "http://issues.liferay.com/browse/$(latest_jira_ticket) $description";
	fi
}
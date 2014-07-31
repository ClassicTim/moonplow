.DEFAULT_GOAL := init


#####################
# command variables #
####################


define clean
	@ ./moonplow/clean_files.sh
endef

define venv
	@ ./moonplow/setup_virtualenv.sh
endef

define requirements
	@ ./moonplow/install_requirements.sh
endef

define hooks
	@ ./moonplow/install_hooks.sh
endef

define upstream
	@ ./moonplow/upstream.sh
endef

define flake8
	@ ./moonplow/flake8.sh
endef

define pull-request
	@ ./moonplow/github.sh open_pull_request
endef

define settings
	@ ./moonplow/settings.sh
endef

define test
	@ ./moonplow/tests.sh
endef

define commit-info
	@ ./moonplow/commit_info.sh
endef

define help
	@ sh -c "source ./base.sh && echo_ok 'List of available commands:'"
	@make -qp | awk -F ':' '/^[a-zA-Z0-9][^$$#\/\t=]*:([^=]|$$)/ {split($$1,A,/ /); for(i in A) printf "  %s\n", A[i]}'| grep -v Makefile | sort
endef


###########
# targets #
###########


clean:
	$(clean)

venv:
	$(venv)

requirements: venv
	$(requirements)

hooks:
	$(hooks)

upstream:
	$(upstream)

flake8: init-essential
	$(flake8)

pull-request:
	$(pull-request)

settings:
	$(settings)

test: init-essential
	$(test)

commit-info:
	$(commit-info)

init: init-essential hooks upstream
init-essential: requirements settings

help:
	$(help)

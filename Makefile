.PHONY: all backup install_package install_tools bash_setup VIM_setup GIT_setup sys_env_setup restore

all: backup install_package install_tools bash_setup VIM_setup GIT_setup sys_env_setup

vim: VIM_setup

install_package:
	./runDeploy update_and_install_packages

install_tools:
	./runDeploy install_tools

bash_setup:
	./runDeploy setup_bash_env

VIM_setup:
	./runDeploy setup_VIM_env

GIT_setup:
	./runDeploy setup_GIT_env

sys_env_setup:
	./runDeploy setup_sys_env

backup:
	./runDeploy backup_config

clean:
	./runDeploy clean_config

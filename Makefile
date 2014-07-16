
comptests:
	comptests --exclude learner,nspkg,procgraph_ros,bo_hidden --contracts --console $FAULT_SRC

deps-find:
	deps-find --resources=resources.yaml --output=deps/deps.yaml

deps-plot:
	deps-plot --deps=deps/deps.yaml -o deps/all
	deps-plot --deps=deps/deps.yaml -o deps/cluster --cluster
	deps-plot --deps=deps/deps.yaml -o deps/clearer --ignore_repo contracts conf_tools reprep system_cmd compmake comptests procgraph

comptests-src-nose:
	comptests -o out/comptests-src-nose --nocomp --exclude learner,nspkg,procgraph_ros,bo_hidden --contracts --console ${FAULT_SRC}


comptests-src:
	comptests -o out/comptests-src --exclude learner,nspkg,procgraph_ros,bo_hidden --contracts --console ${FAULT_SRC}

comptests-src-go:
	comptests -o out/comptests-src --exclude learner,nspkg,procgraph_ros,bo_hidden --contracts -c "parmake recurse=1" ${FAULT_SRC}


comptests-bdse:
	rm -rf out/comptests-bdse
	comptests -o out/comptests-bdse  --contracts --nonose --console bdse  boot_agents_bdse


comptests-nmcon:
	rm -rf out/comptests-nmcon
	comptests -o out/comptests-nmcon  --contracts --nonose --console nmcon

comptests-bgds:
	rm -rf out/comptests-bgds
	comptests -o out/comptests-bgds  --contracts --nonose --console bgds boot_agents_bgds
	

comptests-bootagents:
	rm -rf out/comptests-bootagents
	comptests -o out/comptests-bootagents  --contracts --nonose --console boot_agents 


comptests-datasets:
	comptests -o out/comptests-datasets --contracts -c "parmake recurse=1" --console  ${FAULT_ROOT}/datasets/

comptests-datasets-go:
	comptests -o out/comptests-datasets --contracts -c "parmake recurse=1" --contracts -c "parmake recurse=1" ${FAULT_ROOT}/datasets/

# exclude dataset_semantic_mapping
comptests-datasets-part:
	rm -rf out/comptests-datasets-part
	comptests -o out/comptests-datasets-part --exclude dataset_semantic_mapping,dataset_statacenter --contracts -c "parmake recurse=1" --console  ${FAULT_ROOT}/datasets/


comptests-src-boot:
	comptests -o out/comptests-src-boot  --nonose  --contracts --console bootstrapping_olympics boot_manager


comptests-src-boot_manager:
	comptests -o out/comptests-src-boot_manager  --nonose  --contracts --console bootstrapping_olympics boot_manager

comptests-src-boot_manager-go:
	comptests -o out/comptests-src-boot_manager  --nonose  --contracts -c "parmake; parmake; parmake recurse=1" boot_manager

comptests-src-bvapps:
	comptests -o out/comptests-src-bvapps   --contracts --console bvapps

comptests-src-boot-vehicles:
	comptests -o out/comptests-src-boot-vehicles   --contracts --console bootstrapping_olympics vehicles vehicles_boot procgraph_vehicles vehicles_cairo

deps-find:
	deps-find --resources=resources.yaml --output=deps/deps.yaml

deps-plot:
	deps-plot --deps=deps/deps.yaml -o deps/all
	deps-plot --deps=deps/deps.yaml -o deps/cluster --cluster
	deps-plot --deps=deps/deps.yaml -o deps/clearer --ignore_repo contracts conf_tools reprep system_cmd compmake comptests procgraph

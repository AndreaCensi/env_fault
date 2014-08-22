
comptests-src-nose:
	mkdir -p out/comptests-src-nose
	rm -I -r out/comptests-src-nose
	comptests -o out/comptests-src-nose --nocomp --exclude learner,nspkg,procgraph_ros,bo_hidden --contracts --console ${FAULT_SRC}

comptests-src:
	mkdir -p out/comptests-src
	rm -I -r out/comptests-src
	comptests -o out/comptests-src --exclude learner,nspkg,procgraph_ros,bo_hidden --contracts --console ${FAULT_SRC}

# comptests-src-go:
# 	comptests -o out/comptests-src --exclude learner,nspkg,procgraph_ros,bo_hidden --contracts -c "parmake recurse=1" ${FAULT_SRC}


comptests-src-bdse:
	mkdir -p out/comptests-src-bdse
	rm -I -r out/comptests-src-bdse
	comptests -o out/comptests-src-bdse  --contracts --nonose --console bdse  boot_agents_bdse

comptests-src-nmcon:
	mkdir -p out/comptests-src-nmcon
	rm -I -r out/comptests-src-nmcon
	comptests -o out/comptests-src-nmcon  --contracts --nonose --console nmcon

comptests-src-bgds:
	mkdir -p out/comptests-src-bgds
	rm -I -r out/comptests-src-bgds
	comptests -o out/comptests-src-bgds  --contracts --nonose --console bgds boot_agents_bgds
	
comptests-src-boot_agents:
	mkdir -p out/comptests-boot_agents
	rm -I -r out/comptests-boot_agents
	comptests -o out/comptests-boot_agents  --contracts --nonose --console boot_agents 

comptests-src-boot:
	mkdir -p out/comptests-src-boot
	rm -I -r out/comptests-src-boot
	comptests -o out/comptests-src-boot  --nonose  --contracts --console bootstrapping_olympics boot_manager

comptests-src-bvapps:
	mkdir -p out/comptests-src-bvapps
	rm -I -r out/comptests-src-bvapps
	comptests -o out/comptests-src-bvapps   --contracts --console bvapps

comptests-src-vehicles:
	mkdir -p out/comptests-src-vehicles
	rm -I -r out/comptests-src-vehicles
	comptests -o out/comptests-src-vehicles   --contracts --console  vehicles vehicles_boot procgraph_vehicles vehicles_cairo

deps/deps.yaml:
	deps-find --resources=resources.yaml --output=$@

deps-plot: deps/deps.yaml 
	deps-plot --deps=$< -o deps/all
	deps-plot --deps=$< -o deps/cluster --cluster
	deps-plot --deps=$< -o deps/clearer --ignore_repo contracts conf_tools reprep system_cmd compmake comptests procgraph

comptests-datasets:
	mkdir -p out/comptests-datasets
	rm -I -r out/comptests-datasets
	comptests -o out/comptests-datasets --contracts -c "parmake recurse=1" --console  ${FAULT_ROOT}/datasets/

comptests-datasets-go:
	comptests -o out/comptests-datasets --contracts -c "parmake recurse=1" --contracts -c "parmake recurse=1" ${FAULT_ROOT}/datasets/

# exclude dataset_semantic_mapping
comptests-datasets-part:
	rm -r out/comptests-datasets-part
	comptests -o out/comptests-datasets-part --exclude dataset_semantic_mapping,dataset_statacenter --contracts -c "parmake recurse=1" --console  ${FAULT_ROOT}/datasets/


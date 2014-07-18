
comptests-src:
	comptests -o out/comptests-src --exclude learner,nspkg,procgraph_ros,bo_hidden --contracts --console ${FAULT_SRC}

comptests-src-go:
	comptests -o out/comptests-src --exclude learner,nspkg,procgraph_ros,bo_hidden --contracts -c "pmake recurse=1" ${FAULT_SRC}

comptests-datasets:
	comptests -o out/comptests-datasets --contracts -c "pmake recurse=1" --console  ${FAULT_ROOT}/datasets/

comptests-datasets-go:
	comptests -o out/comptests-datasets --contracts -c "pmake recurse=1" --contracts -c "pmake recurse=1" ${FAULT_ROOT}/datasets/

# exclude dataset_semantic_mapping
comptests-datasets-part:
	rm -rf out/comptests-datasets-part
	comptests -o out/comptests-datasets-part --exclude dataset_semantic_mapping,dataset_statacenter --contracts -c "pmake recurse=1" --console  ${FAULT_ROOT}/datasets/


deps-find:
	deps-find --resources=resources.yaml --output=deps/deps.yaml

deps-plot:
	deps-plot --deps=deps/deps.yaml -o deps/all
	deps-plot --deps=deps/deps.yaml -o deps/cluster --cluster
	deps-plot --deps=deps/deps.yaml -o deps/clearer --ignore_repo contracts conf_tools reprep system_cmd compmake comptests procgraph

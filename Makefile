KEY=
SECRET=
URL=http://localhost:8080/api
WORKSPACE_ID=1
WORKSPACE_PATH=./cli

push:
	structurizr push -url ${URL} -id ${WORKSPACE_ID} -key ${KEY} -secret ${SECRET} \
	-workspace ${WORKSPACE_PATH}/structurizr-${WORKSPACE_ID}-workspace.json

pull:
	cd ${WORKSPACE_PATH} && structurizr pull -url ${URL} -id ${WORKSPACE_ID} \
	-key ${KEY} -secret ${SECRET}

export:
	cd ${WORKSPACE_PATH} && structurizr export -format dsl \
	-workspace structurizr-${WORKSPACE_ID}-workspace.json

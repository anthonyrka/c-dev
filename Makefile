IMAGE_NAME=c-dev
HISTORY_FILE=.image_bash_history

run:
	touch $(PWD)/$(HISTORY_FILE)
	docker run -it \
			   --rm \
			   -e HISTFILE=/root/$(HISTORY_FILE) \
			   -v $(PWD)/$(HISTORY_FILE):/root/$(HISTORY_FILE) \
			   -v $(PWD):/root/ \
			   $(IMAGE_NAME)
build:
	docker build -t $(IMAGE_NAME) .

# Makefile
#
# John Van Note
# 2017-04-29
#
# Makefile for blog
#

IMAGE_NAME = blog
PORT =  1337

build :
	docker build --rm --force-rm -t $(IMAGE_NAME) .

run : build
	docker run -p $(PORT) $(IMAGE_NAME) 

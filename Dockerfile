FROM golang:1.16

RUN mkdir /wcg; \
    cd /wcg; \
    git clone https://github.com/ViinSent/word-cloud-generator.git .; \
    make

CMD /wcg/artefacts/linux/word-cloud-generator

FROM alpine:latest
RUN apk add gcompat
COPE --from=0 /wcg/artefacts/linux/word-cloud-generator .

CMD /word-cloud-generator

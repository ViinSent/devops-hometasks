#FROM golang:1.16 as build
#
#RUN apt-get update && apt-get install -y make git
#
#RUN git clone https://github.com/ViinSent/word-cloud-generator.git /go/src/wcg
#
#WORKDIR /go/src/wcg
#
#RUN make
#
##CMD ["/go/src/wcg/artefacts/linux/word-cloud-generator"]
#
#FROM alpine:latest as runtime
#
#COPY --from=build /go/src/wcg/artifacts/linux/word-cloud-generator /opt/word-cloud-generator
#
#RUN apk update && add bash libc6-compat
#
#EXPOSE 8888
#
#RUN export PATH="$/opt/word-cloud-generator:$PATH"
#
#WORKDIR /opt/word-cloud-generator
#
#RUN chmod +x word-cloud-generator
#
#CMD ["./word-cloud-generator"]

FROM golang:1.16 as build

RUN mkdir /wcg; \
    cd /wcg; \
    git clone https://github.com/Fenikks/word-cloud-generator.git .; \
    make

FROM alpine:latest
RUN apk add bash libc6-compat
COPY --from=build /wcg/artifacts/linux/word-cloud-generator .

CMD /word-cloud-generator

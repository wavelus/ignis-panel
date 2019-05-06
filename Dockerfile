FROM golang:latest
ENV PROJECT="github.com/wavelus/ignis-panel"

COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build .

FROM scratch
LABEL PROJECT = ${PROJECT}
COPY --from=0 ${PROJECT} .
ENTRYPOINT ["/ignis-panel"]

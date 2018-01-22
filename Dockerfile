FROM quay.io/coreos/dex:v2.8.1


ADD dex.dev.yaml /etc/dex/dex.dev.yaml
ADD bootstrap /etc/dex/bootstrap

EXPOSE 5556

ENTRYPOINT [ "/usr/local/bin/dex"]
CMD ["serve", "/etc/dex/dex.dev.yaml"]

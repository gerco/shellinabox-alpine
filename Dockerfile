FROM alpine:3.2

ADD shellinabox.tar.gz /

# a new user is needed to get access to the container
RUN echo -e "shellboxuser\nshellboxuser" | adduser -s /bin/sh shellboxuser

# this is needed to gain root access
RUN echo -e "root:shellboxuser" | chpasswd

EXPOSE 4200

CMD ["shellinaboxd", "-s", "/:LOGIN", "--disable-ssl"]


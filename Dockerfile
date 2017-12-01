FROM ytnobody/alpine-perl

ADD app.psgi app.psgi

CMD ["plackup", "app.psgi"]

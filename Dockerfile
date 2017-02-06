FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.36

RUN gem install darkhelmet-sinatra_more --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["sinatra_gen"]
CMD ["--help"]

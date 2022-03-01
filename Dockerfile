FROM ruby:2.3

MAINTAINER Felipe Rodrigues <felipe_rodriguesx@hotmail.com>

#ENV BUNDLER_VERSION=2.1.4
ENV app_path /opt/jenkins/

WORKDIR ${app_path}

COPY Gemfile* ${app_path}

#RUN gem install bundler:${BUNDLER_VERSION}
RUN bundle install


COPY . ${app_path}

ENTRYPOINT ["bundle", "exec", "cucumber -p ${BROWSER} -p ${TAG}  --format json -o /opt/jenkins/cucumber.json"]
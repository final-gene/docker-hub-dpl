FROM ruby:3.0.3-alpine3.13

LABEL maintainer="frank.giesecke@final-gene.de"

RUN apk add --no-cache --virtual=.build-deps \
        build-base

RUN apk add --no-cache --virtual=.persistent\
        curl \
        git

# check available packages using `gem search dpl | grep dpl-`
# ERROR:
# `dpl-connect` could not be installes as it conflicts with installed executable from dpl
RUN echo 'gem: --no-document' >> /etc/gemrc \
    && gem install \
        dpl \
        dpl-anynines \
        dpl-atlas \
        dpl-azure_webapps \
        dpl-bintray \
        dpl-bitballoon \
        dpl-bluemix_cloud_foundry \
        dpl-boxfuse \
        dpl-catalyze \
        dpl-chef_supermarket \
        dpl-cloud66 \
        dpl-cloud_files \
        dpl-cloud_foundry \
        dpl-code_deploy \
        dpl-deis \
        dpl-divshot \
        dpl-elastic_beanstalk \
        dpl-engine_yard \
        dpl-firebase \
        dpl-gae \
        dpl-gcs \
        dpl-hackage \
        dpl-heroku \
        dpl-lambda \
        dpl-launchpad \
        dpl-modulus \
        dpl-npm \
        dpl-openshift \
        dpl-ops_works \
        dpl-packagecloud \
        dpl-pages \
        dpl-puppet_forge \
        dpl-pypi \
        dpl-releases \
        dpl-rubygems \
        dpl-s3 \
        dpl-scalingo \
        dpl-script \
        dpl-snap \
        dpl-surge \
        dpl-testfairy \
        dpl-transifex

RUN apk del .build-deps

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

CMD [""]

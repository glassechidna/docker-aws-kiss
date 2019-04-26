FROM docker:18.09-dind

ARG AWSCLI_VERSION=1.16.146

RUN apk -v --update add \
		bash \
		groff \
		jq \
		less \
		python \
		py-pip \
	&& \
	pip install --upgrade awscli==$AWSCLI_VERSION && \
	apk -v --purge del py-pip && \
	rm /var/cache/apk/*


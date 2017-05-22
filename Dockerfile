FROM %%BASE_IMAGE%%

# Add env
ENV LANG C.UTF-8

# Setup base
RUN apk add --no-cache tzdata jq nginx libressl

# Copy data
COPY run.sh /
COPY nginx.conf /etc/

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

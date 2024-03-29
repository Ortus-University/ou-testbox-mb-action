# Container image that runs your code
FROM foundeo/minibox:2021.07

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN apk update && \
      apk --no-cache add sudo
RUN sudo apk update
RUN sudo apk --no-cache add curl

ENTRYPOINT ["/entrypoint.sh"] 

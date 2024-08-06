FROM ghost:5

WORKDIR /var/lib/ghost

RUN npm install -g ghos3

RUN mkdir ./content/adapters && \
    mkdir ./content/adapters/storage && \
    mkdir ./content/adapters/storage/s3 && \
    cp -r /usr/local/lib/node_modules/ghos3/* ./content/adapters/storage/s3


RUN mkdir ./current/core/server/adapters/storage/s3 && \
    cp -r /usr/local/lib/node_modules/ghos3/* ./current/core/server/adapters/storage/s3

# RUN npm install --prefix /tmp/ghos3 ghos3 && \
#     cp -r /tmp/ghos3/node_modules/ghos3 ./current/core/server/adapters/storage/s3 && \
#     rm -r /tmp/ghos3

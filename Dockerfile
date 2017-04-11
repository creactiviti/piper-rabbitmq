FROM rabbitmq:3.6.9-management

RUN apt-get update \
    && apt-get -y install wget \ 
    && wget -O /usr/lib/rabbitmq/lib/rabbitmq_server-3.6.9/plugins/rabbitmq_delayed_message_exchange-0.0.1.ez https://bintray.com/rabbitmq/community-plugins/download_file?file_path=rabbitmq_delayed_message_exchange-0.0.1.ez \
    && apt-get purge -y --auto-remove ca-certificates wget

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
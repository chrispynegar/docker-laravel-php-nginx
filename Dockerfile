FROM webdevops/php-nginx:7.2

ENV WEB_DOCUMENT_ROOT /app/public

# Copy aliases.
COPY ./aliases.sh /root/aliases.sh

RUN sed -i "s/\r//" /root/aliases.sh && \
    echo "" >> ~/.bashrc && \
    echo "# Load custom aliases" >> ~/.bashrc && \
    echo "source ~/aliases.sh" >> ~/.bashrc && \
    echo "" >> ~/.bashrc

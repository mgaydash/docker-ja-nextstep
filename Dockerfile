FROM phusion/passenger-full:0.9.19

# Set correct environment variables.
ENV HOME /root

# Expose Nginx HTTP service
EXPOSE 80

# Add the nginx site and config
COPY ./webapp.conf /etc/nginx/sites-enabled/webapp.conf
COPY ./rails_env.conf /etc/nginx/main.d/rails_env.conf

# Add startup script
COPY startup.sh /home/app/webapp/startup.sh

# Set the working directory
WORKDIR /home/app/webapp

# Change ownership to app user
RUN chown -R app:app /home/app/webapp \

# Remove the default site
&& rm /etc/nginx/sites-enabled/default \

# Enable Nginx / Passenger
&& rm -f /etc/service/nginx/down \

# Clean up APT when done.
&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Run startup script by defaulst.
# CMD ["/sbin/my_init"] - This is the default image CMD
CMD ["/bin/bash", "startup.sh"]


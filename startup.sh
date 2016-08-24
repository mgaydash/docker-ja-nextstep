git clone https://github.com/dmashuda/ja-next-step.git \
&& mv ./ja-next-step/* . \
&& bundle install --path /box \
&& export SECRET_KEY_BASE=$(rake secret) \
&& rake db:migrate \
&& rake db:migrate RAILS_ENV=production \
&& rake db:seed \
&& rake db:seed RAILS_ENV=production \
&& bundle exec rake assets:precompile \
&& chown -R app:app * \
&& /sbin/my_init

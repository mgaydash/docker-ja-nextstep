git clone https://github.com/dmashuda/ja-next-step.git \
&& mv ./ja-next-step/* . \
&& bundle install --path /box \
&& export SECRET_KEY_BASE=$(rake secret) \
&& bundle exec rake db:migrate \
&& bundle exec rake db:migrate RAILS_ENV=production \
&& bundle exec rake db:seed \
&& bundle exec rake db:seed RAILS_ENV=production \
&& bundle exec rake assets:precompile \
&& chown -R app:app * \
&& /sbin/my_init

git clone https://github.com/dmashuda/ja-next-step.git \
if [ -n "$GIT_BRANCH" ]; then
  git checkout $GIT_BRANCH
fi
&& mv ./ja-next-step/* . \
&& bundle install --path /box \
&& bundle exec rake db:migrate RAILS_ENV=production \
&& bundle exec rake assets:precompile \
&& chown -R app:app * \
&& /sbin/my_init

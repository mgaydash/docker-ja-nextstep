DIR="ja-next-step"

git clone https://github.com/dmashuda/ja-next-step.git

if [ -n "$GIT_BRANCH" ]; then
  cd $DIR \
  && git checkout $GIT_BRANCH \
  && cd ..
fi

mv ./$DIR/* . \
&& bundle install --path /box \
&& bundle exec rake db:migrate RAILS_ENV=production \
&& bundle exec rake assets:precompile \
&& chown -R app:app * \
&& /sbin/my_init

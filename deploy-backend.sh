cd .tmp \
  && rm -rf deploy \
  && mkdir deploy \
  && cd deploy/ \
  && cp -r ../../../xdomain_sample_app/backend/ . \
  && cd backend/ \
  && git init \
  && git add . \
  && git commit -m "To heroku" \
  && heroku git:remote -a xsa-backend \
  && git push heroku master -f \
  && cd ../../..

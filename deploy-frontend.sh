cd .tmp \
  && rm -rf deploy \
  && mkdir deploy \
  && cd deploy/ \
  && cp -r ../../../xdomain_sample_app/frontend/ . \
  && cd frontend/ \
  && git init \
  && git add . \
  && git commit -m "To heroku" \
  && heroku git:remote -a xsa-frontend \
  && git push heroku master -f \
  && cd ../../..

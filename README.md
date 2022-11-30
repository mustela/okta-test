# OktaTest

##  Build the image
`docker build -t okta-test .`

## Run the app
```
docker run --rm \
    -e PHX_SERVER=true \
    -e SECRET_KEY_BASE=ZymJ5OaU/kZ49IW9Sh7nObLjukyMxZxeRl4y96H2b8niKmURKwxXtqcSxfqZkFHA \
    -e PORT=8080 \
    -e PHX_HOST=localhost \
    -e MIX_ENV=prod \
    -e OKTA_CLIENT_SECRET=YOUR_SECRET \
    -e OKTA_CLIENT_ID=YOUR_CLIENT \
    -e OKTA_SITE=https://dev-YOUR-SITE.okta.com \
    -p 8080:8080 \
    okta-test
```
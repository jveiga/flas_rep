# example flask app using habitat

```bash
# build directory
hab pkg build .

# install result
# note: jveiga is my pkg_origin, yours will probably be different ;)
hab install results/jveiga-mytutorialapp-0.0.1-20170525145213-x86_64-linux.hart

# run as is
hab start jveiga/mytutorialapp

# pkg as you want
hab pkg export docker jveiga/mytutorialapp

# run docker img
docker run -it -p 5000:5000 jveiga/mytutorialapp
```

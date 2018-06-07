# Juice Shop CTF with FBCTF

To get up and running you can start juice-shop and fbctf using docker-compose. For this do the following:

```sh
# Download docker-compose
wget https://raw.githubusercontent.com/j12934/juice-shop-fbctf/master/docker-compose.yml

# Start the container fbtcf & juice-shop
docker-compose up
```

Open up the fbctf dashbard in your browser. (Note #1: probably localhost or the ip of your docker-machine depending on your docker setup) (Note #2: Might take a second to load)

Once its all loaded up you can log in as the admin user with the following credentials:

username: admin <br/>
password: 42f5f9b1ebf1b529d43c9f3089693d0b

When logged in navigate to the control site of the admin section.
Then you can import the juice-shop challenges via the the "full game" import. To get the "full game" import file you can use the [juice-shop-ctf-cli](https://www.npmjs.com/package/juice-shop-ctf-cli) tool.

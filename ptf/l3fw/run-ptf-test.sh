#!/usr/bin/bash

PTF="/home/arrcus/ptf/ptf"
TEST_ITEMS="\
  arp_req_test \
  l3ipv4_test \
  l3ttl_test \
"

#TEST_ITEMS="mask_test"
#TEST_ITEMS="l3ttl_test"

# tests are executed in order as listed
#  --test-params="key1=17;key2=True" \

sudo $PTF --interface 0@veth11 --interface 1@veth21 --test-dir ./ $TEST_ITEMS

#!/bin/bash
#
# AWS User data script that will look for home directories with authorized_keys files and 
# append public keys to these files
#

add_keys_to() 
{
  auth_file=$1
  echo "Adding keys to: $auth_file"
  echo "" >> $auth_file

  echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDMQMHWI+d97mEZUuYmrslMGpR4S1D63PxEl5lukCzdxjKENOuYK0sQpnbCNBmNVOMc7XdgHVo6dXOEcqF1715YE7eCXcCJZKmjhZrMhgbPwebnS9i80uaTT7cG3rTtIm3Spi0oWHrXrdS3JDz6omyzBvIF6vW9dTVguRkdM7NsfFmDBCRrjh284wKE3VoZBloxUjYucbRdBrPgeuI21OMNGY8Gl99FW6SSo7GA/14zlsXNUVkvXcVL8s8k6IzMHInsyBHsJOOfjYBcK4//KsBJFVm085XGnetLoAsU6X6sj1YoI8oeA9fuFroMwOQj36aVLF9cLeLSNgEgPHErOqV5 pi@donkey.katieandfiona.co.uk" >> $suth_file

  echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDda+5iwnTYOyIY6MP1zlqyK1iiy2T6uluazJj7Cmh66L+p4h20CrRmiybrL/YCxapiCoVixQXXNiE71tp+YbWyMbZWXPXxy4H5KBM9j/BoSZr9BnlHpgDazaVsKmXs+NWUJX/B8spePWCz5LId4AQRq0BWrLHAl6D3zEFFhrbCu5WVwIqb13I1sAIsi4u1BR2+nF15z3D/Zm+WYo8P+GPp5/ac9OnXpXAHn7JstZt+OZaDR2tQFbTrY0KIInq+yNTADDBSGY5GUtAOHdE8/qxpnhtEco4w7r8svPfnxxbz+7wbQW9cCJEJ27SuJAANxKwtPQHbMc/cH0y0zvwvIV3N pi@dragon.katieandfiona.co.uk" >> $auth_file

  echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7cMgC6Y5AdVTy0d5E3P+eWYRtaBQWS0KmzEt7Urx17aU7ASVxrLQ4i91YwU0BA2CAJh1fSXylK/Gl6Q60jiU1dHDVb8l2zG4BCNUxZY8bLSUjG6OrlHmxFn6rXXtlxAabe5uXH/7qYit+YZKRtMrU7PCMQzSKssgCW4SaLEDwJIhg0ZlRq/xr9SFdwnTxXcjuUmg8bBZsh37ajfusvBYY07VE2OnPslmwMS8X8kXkE4EARDaScSS0t1IvxmxHEjdAPsrKOAPX22qcRLGd/mD+QIiG7IlhoVK5dZ8jfycYpWRnOySduy7qYZfAkexHPm6aVcicbt3YZ48AC8kque91 fiona@lillian" >> $auth_file
}

find_key_file_in()
{
  search_base=$1
  for auth_file in `find $search_base -name authorized_keys`
  do
    echo "Adding keys to: $auth_file"
    add_keys_to $auth_file
  done
}

find_key_file_in "/home"




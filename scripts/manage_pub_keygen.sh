#!/bin/bash

su vagrant -c 'ssh-keygen -t ed25519 -f /home/vagrant/.ssh/id_ed25519 -N ""'
cp /home/vagrant/.ssh/id_ed25519.pub /home/vagrant/ssh/
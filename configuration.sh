#!/bin/sh

echo "# Please make sure to update the license_key information with the license key for your New Relic
# account.
#
#
newrelic:
  #
  # Update with your New Relic account license key:
  #
  license_key: '$1'
  #
  # Set to '1' for verbose output, remove for normal output.
  # All output goes to stdout/stderr.
  #
  # verbose: 1

  # Proxy configuration:
  #proxy:
  #  address: localhost
  #  port: 8080
  #  user: nil
  #  password: nil

#
# Agent Configuration:
#
agents:
  # this is where configuration for agents belongs
  redborder:
    snmp_host: \"$2\"
    snmp_community: \"redBorder\"
    services:
      - druid
      - kafka
      - zookeeper
      - nginx" > config/newrelic_plugin.yml

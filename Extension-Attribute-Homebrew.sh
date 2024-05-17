#!/bin/bash

if [ ! -z $(which brew) ];then
  echo "<result>Brew installed</result>"
else
  echo "<result>Brew Not installed</result>"
fi

exit 0

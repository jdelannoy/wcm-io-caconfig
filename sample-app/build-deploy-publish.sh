#!/bin/sh
# #%L
#  wcm.io
#  %%
#  Copyright (C) 2017 wcm.io
#  %%
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#  #L%

# Call with "help" parameter to display syntax information

SLING_URL="http://localhost:4503"
CONGA_NODE="aem-publish-aempage-persistence-strategy"

if [[ $0 == *":\\"* ]]; then
  DISPLAY_PAUSE_MESSAGE=true
fi

./build-deploy.sh --sling.url=${SLING_URL} --conga.node=${CONGA_NODE} --display.pause.message=${DISPLAY_PAUSE_MESSAGE} "$@"

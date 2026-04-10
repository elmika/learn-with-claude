#!/bin/bash
# Launch a learning session. Runs the /start flow automatically so the
# learner never sees an empty prompt.
cd "$(dirname "$0")"
claude "/start"

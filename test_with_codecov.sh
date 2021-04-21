#!/bin/bash

fvm flutter test --coverage
bash <(curl -s https://codecov.io/bash) -t 392ddf46-7d5e-4067-bdef-e7fe89d647a1
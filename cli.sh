#!/bin/bash

# Color definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Print function
pprint() {
    local color=$1
    local message=$2
    echo -e "[Veezo] ${color}${message}${NC}"
}

generate() {
	generate_schema;
	generate_build;
}

generate_schema() {
	rm -rf lib/generated && dart run swagger_parser
}

generate_build() {
	dart run build_runner build -d
}

generate_locale() {
	dart run slang
}

update_logo_splash() {
	dart run flutter_native_splash:create
	dart run icons_launcher:create
}


build() {
	flutter build apk --split-per-abi --dart-define=ENV_FILE=prod.env
	cp -f build/app/outputs/flutter-apk/app-arm64-v8a-release.apk ~/Desktop/veezo.apk
	pprint $GREEN "Veezo Copied to Desktop"
}

build_staging() {
	flutter build apk --split-per-abi --dart-define=ENV_FILE=staging.env && \
	cp -f build/app/outputs/flutter-apk/app-arm64-v8a-release.apk ~/Desktop/veezo[staging].apk && \
	pprint $GREEN "Veezo Staging Copied to Desktop"
}

if [ $# -ge 1 ]; then
    $1 ${@:2}
else
    pprint $RED "Not a valid command."
fi
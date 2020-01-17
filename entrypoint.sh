#!/bin/sh -l

VERSION=$1

echo "Download JUnit Platform Console Standalone ${VERSION}..."

JAR=junit-platform-console-standalone-${VERSION}.jar
JAR_PATH="/home/runner/work/_temp/_github_home/${JAR}"
wget https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console-standalone/${VERSION}/${JAR} --output-document ${HOME}/${JAR}

echo ::set-output name=standalone-jar::${JAR_PATH}

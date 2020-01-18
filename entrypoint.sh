#!/bin/sh -l

PLATFORM_VERSION=$1
STANDALONE_JAR=junit-platform-console-standalone-${PLATFORM_VERSION}.jar

echo "Download ${STANDALONE_JAR}..."

wget https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console-standalone/${PLATFORM_VERSION}/${STANDALONE_JAR} --output-document ${HOME}/${STANDALONE_JAR}

echo ::set-output name=standalone-jar::"/home/runner/work/_temp/_github_home/${STANDALONE_JAR}"

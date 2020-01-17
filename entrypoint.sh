#!/bin/sh -l

VERSION=$1

echo "Download JUnit Platform Console Standalone ${VERSION}..."

JAR=junit-platform-console-standalone-${VERSION}.jar
wget https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console-standalone/${VERSION}/${JAR} --output-document ${HOME}/${JAR}

echo ::set-output name=standalone-jar::${HOME}/${JAR}

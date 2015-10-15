#! /bin/sh

export S2TBX_HOME=${installer:sys.installationDir}

if [ -z "$S2TBX_HOME" ]; then
    echo
    echo Error: S2TBX_HOME not found in your environment.
    echo Please set the S2TBX_HOME variable in your environment to match the
    echo location of the S3TBX installation.
    echo
    exit 2
fi

${S2TBX_HOME}/.install4j/jre.bundle/Contents/Home/jre/bin/java \
    -Xmx${installer:maxHeapSize} \
    -Dceres.context=s2tbx \
    -Ds2tbx.debug=true \
    "-Ds2tbx.home=$S2TBX_HOME" \
    -jar "$S2TBX_HOME/bin/snap-launcher.jar" -d "$@"

exit $?



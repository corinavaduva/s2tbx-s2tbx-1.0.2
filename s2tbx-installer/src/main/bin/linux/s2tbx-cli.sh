#! /bin/sh

export S2TBX_HOME=${installer:sys.installationDir}

if [ -z "$S2TBX_HOME" ]; then
    echo
    echo Error: S2TBX_HOME not found in your environment.
    echo Please set the S2TBX_HOME variable in your environment to match the
    echo location of the S3TBX installation
    echo
    exit 2
fi

export PATH=$PATH:$S2TBX_HOME/bin

echo ""
echo "Welcome to the S3TBX command-line interface!"
echo "The following command-line tools are available:"
echo "  gpt.sh            - General Graph Processing Tool"
echo "  s2tbx-d.sh        - S3TBX application launcher for debugging"
echo "  smos-gp-to-nc.sh  - Convert SMOS grid points to NetCDF"
echo "  smos-gp-export.sh - Export SMOS grid points to EE or CSV format"
echo "Typing the name of the tool will output its usage information."
echo ""

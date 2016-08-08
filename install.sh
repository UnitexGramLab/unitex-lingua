#!/usr/bin/env bash
# =============================================================================
# Unitex/GramLab language resources installer
# =============================================================================
# Copyright (C) 2016 Université Paris-Est Marne-la-Vallée <unitex-devel@univ-mlv.fr>
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
# 
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
# 
# You should have received a copy of the GNU Lesser General Public
# License along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA.
#
# cristian.martinez@univ-paris-est.fr (martinec)
#
# =============================================================================
# Script code must be ShellCheck-compliant for information about how to run 
# ShellCheck locally @see http://www.shellcheck.net/about.html
# e.g. shellcheck -s bash install.sh
# =============================================================================
# Constants
# =============================================================================
UNITEX_LINGUA_INSTALLER_NAME=$(basename -- "$0") # This script name
UNITEX_LINGUA_INSTALLER_HAS_ERRORS=0
# =============================================================================
# Hold a list of languages supported by Unitex
# Codes are related to the IETF language tags
# @see https://en.wikipedia.org/wiki/IETF_language_tag
declare -A UNITEX_IEFT_LINGUA=(                       \
            ["ar"]="Arabic"                           \
            ["en"]="English"                          \
            ["fi"]="Finnish"                          \
            ["fr"]="French"                           \
            ["oge"]="Georgian (Ancient)"              \
            ["de"]="German"                           \
            ["grc"]="Greek (Ancient)"                 \
            ["el"]="Greek (Modern)"                   \
            ["it"]="Italian"                          \
            ["ko"]="Korean"                           \
            ["la"]="Latin"                            \
            ["mg"]="Malagasy"                         \
            ["no"]="Norwegian (Bokmal)"               \
            ["nn"]="Norwegian (Nynorsk)"              \
            ["pl"]="Polish"                           \
            ["pt-BR"]="Portuguese (Brazil)"           \
            ["pt-PT"]="Portuguese (Portugal)"         \
            ["ru"]="Russian"                          \
            ["sr-Cyrl"]="Serbian-Cyrillic"            \
            ["sr-Latn"]="Serbian-Latin"               \
            ["es"]="Spanish"                          \
            ["th"]="Thai"                             \
            ["zxx-p-XAlign"]="XAlign"                 \
)
# =============================================================================
# Script working directory
# =============================================================================
# Working directory snippet from @source http://stackoverflow.com/a/17744637/2042871
UNITEX_LINGUA_INSTALLER_FILE=$(cd -P -- "$(dirname -- "$0")" && pwd -P) &&\
UNITEX_LINGUA_INSTALLER_FILE="$UNITEX_LINGUA_INSTALLER_FILE/$UNITEX_LINGUA_INSTALLER_NAME"

# Resolve symlinks snippet from @source http://stackoverflow.com/a/697552/2042871
while [ -h "$UNITEX_LINGUA_INSTALLER_FILE" ]; do
    UNITEX_LINGUA_INSTALLER_DIR=$(dirname -- "$UNITEX_LINGUA_INSTALLER_FILE")
    UNITEX_LINGUA_INSTALLER_SYM=$(readlink   "$UNITEX_LINGUA_INSTALLER_FILE")
    UNITEX_LINGUA_INSTALLER_FILE="$(cd "$UNITEX_LINGUA_INSTALLER_DIR"  &&\
                                  cd "$(dirname  -- "$UNITEX_LINGUA_INSTALLER_SYM")" &&\
                                 pwd)/$(basename -- "$UNITEX_LINGUA_INSTALLER_SYM")"
done  # [ -h "$UNITEX_LINGUA_INSTALLER_FILE" ]

# Set-up working directory 
UNITEX_LINGUA_INSTALLER_BASEDIR="$(dirname  -- "$UNITEX_LINGUA_INSTALLER_FILE")"
# =============================================================================
# Test if the environment variable UNITEX_BUILD_RELEASE_DIR is defined
if [ ! -n "${UNITEX_BUILD_RELEASE_DIR+1}" ]; then
 # get from command line
  if [ $# -ne 1 ]; then
    echo "./$UNITEX_LINGUA_INSTALLER_NAME PATH"
    echo "  PATH: destination folder"
    exit 1
  else
    UNITEX_BUILD_RELEASE_DIR="$1"
  fi
fi

# Test if UNITEX_BUILD_RELEASE_DIR is a valid directory
if [ ! -d "$UNITEX_BUILD_RELEASE_DIR" ]; then
  echo "$UNITEX_BUILD_RELEASE_DIR isn't a valid destination folder"
  exit 1
fi 

# Test if current folder is different from destination
if [ "$UNITEX_BUILD_RELEASE_DIR" -ef "$UNITEX_LINGUA_INSTALLER_BASEDIR" ]; then
  echo "Source and destination path must be different: $UNITEX_LINGUA_INSTALLER_BASEDIR"
  exit 1
fi
# =============================================================================
# Create a list of all language resources folders
UNITEX_LINGUA_RESOURCES="$(find -L   "$UNITEX_LINGUA_INSTALLER_BASEDIR"    \
                    -maxdepth 1                                            \
                    -not -path "${UNITEX_LINGUA_INSTALLER_BASEDIR}"        \
                    -not -path "${UNITEX_LINGUA_INSTALLER_BASEDIR}/"       \
                    -not -name "zxx-t-*"                                   \
                    -not -name ".*"                                        \
                         -type d -print                                   |\
                     sort)"

# Copy folders from sources to destination
while read -r language_source ; do
  language_tag=$(basename "$language_source")
  language_name="${UNITEX_IEFT_LINGUA["$language_tag"]}"
  language_destination="$UNITEX_BUILD_RELEASE_DIR/$language_name"
  echo "$language_tag > $language_name"
  rsync                       \
       --verbose              \
       --links                \
       --update               \
       --recursive            \
       --itemize-changes      \
       --times                \
       --exclude ".*"         \
       --exclude ".*/"        \
       --exclude "*.bak"      \
       --exclude "*~"         \
       "$language_source/"    \
       "$language_destination"  || {
         UNITEX_LINGUA_INSTALLER_HAS_ERRORS=1 
       }
done < <(echo "$UNITEX_LINGUA_RESOURCES")

exit $UNITEX_LINGUA_INSTALLER_HAS_ERRORS

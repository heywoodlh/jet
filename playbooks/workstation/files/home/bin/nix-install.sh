#! /usr/bin/env bash

# Helper script intended to help track installed packages

package="$1"
packagefile="$HOME/.local/packages.txt"

if grep -q ${package} ${packagefile}
then
  echo 'Package already installed'
else
  NIXPKGS_ALLOW_UNFREE=1 /nix/var/nix/profiles/default/bin/nix profile install "$1" --no-write-lock-file --impure
  status=$?

  if [[ $status == 0 ]]
  then
    echo "${package}" | tee -a ${packagefile}
  fi
fi


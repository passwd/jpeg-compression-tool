#!/usr/bin/env bash


if which brew >/dev/null; then
    echo "brew installed, skipping..."
else
    echo 'installing brew'
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


if which jpegoptim >/dev/null; then
    echo "jpegoptim installed, skipping..."
else
    echo 'installing jpegoptim'
    brew install jpegoptim
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

chmod u+x $DIR/jpeg-compress
cp $DIR/jpeg-compress /usr/local/bin/

if [ -f /usr/local/bin/jpeg-compress ]; then
  echo 'Install successful!'
else
  echo 'Could not install script'
fi

cp -R ./Compress\ JPEG.app/ /Applications/Compress\ JPEG.app

exit
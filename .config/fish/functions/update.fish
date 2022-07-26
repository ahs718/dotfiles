function update -d "Update brew and mac app store"
    echo 'Updating homebrew...'
    brew update
    brew upgrade
    brew cleanup

    echo 'Checking Apple Updates...'
    /usr/sbin/softwareupdate -ia

    exit 0
end

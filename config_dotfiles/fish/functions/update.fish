function update -d "update brew, fish, fisher and mac app store"
    echo 'Updating homebrew'
    brew update
    brew upgrade
    brew cleanup

    echo 'Checking Apple Updates'
    /usr/sbin/softwareupdate -ia

    exit 0
end

#!/bin/sh

echo
echo "============================================="
echo "•••• Accessing server to pull in changes ••••"
echo "============================================="
echo

case " $1 " in
*'refs/heads/dev'*)
        cd ~/dev.server.url || exit
        unset GIT_DIR 
        git pull origin dev
        echo
        echo "============================================="
        echo "••••           Dev was pulled            ••••"
        echo "============================================="
        echo
        ;;
esac

case " $1 " in
*'refs/heads/master'*)
        cd ~/production.server.url || exit
        unset GIT_DIR
        git pull origin master
        echo
        echo "============================================="
        echo "••••          Master was pulled          ••••"
        echo "••••      Website has been updated       ••••"
        echo "============================================="
        echo
        ;;
esac

exec git-update-server-info
for combo in $(curl -s https://raw.githubusercontent.com/nfxosp/grunt/master/nfx-build-targets | sed -e 's/#.*$//' | grep nfx-7.0 | awk '{printf "nfx_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done

for combo in $(curl -s https://raw.githubusercontent.com/nfxosp/grunt/master/nfx-build-targets | sed -e 's/#.*$//' | grep cm-12.1 | awk '{printf "nfx_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done

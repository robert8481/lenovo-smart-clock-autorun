until [ "$(getprop sys.boot_completed)" = "1" ]; do
    sleep 2
done
sleep 15
am start --user 0 \
    -a android.intent.action.VIEW \
    -d 'https://robert8481.github.io' \
    -p com.android.chrome

sleep 15
SIZE="$(wm size | tail -n 1 | awk '{print $NF}')"
WIDTH="${SIZE%x*}"
HEIGHT="${SIZE#*x}"

if [ -n "$WIDTH" ] && [ -n "$HEIGHT" ]; then
    input tap "$((WIDTH / 2))" "$((HEIGHT / 2))"
fi

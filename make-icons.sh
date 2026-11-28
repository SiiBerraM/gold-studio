R=android/app/src/main/res
rm -rf $R/mipmap-anydpi-v26
rm -f $R/drawable-v24/ic_launcher_foreground.xml
for s in mdpi:48 hdpi:72 xhdpi:96 xxhdpi:144 xxxhdpi:192; do
  d=${s%%:*}
  p=${s##*:}
  convert icon.png -resize ${p}x${p} $R/mipmap-$d/ic_launcher.png
  cp $R/mipmap-$d/ic_launcher.png $R/mipmap-$d/ic_launcher_round.png
  cp $R/mipmap-$d/ic_launcher.png $R/mipmap-$d/ic_launcher_foreground.png
done

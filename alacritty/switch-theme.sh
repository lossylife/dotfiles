#!/bin/bash
new_theme=$1

for i in {1..3}; do
	if [[ "${new_theme}" == *"yml" || "${new_theme}" == *"yaml" ]]; then
		break
	fi
	new_theme=`ls -la alacritty-theme/themes | awk '{ print $9 }' | sort -R | tail -1`
done
sed -i '' -e "s#alacritty-theme/themes/.*#alacritty-theme/themes/${new_theme}#g" ~/.config/alacritty/alacritty.yml
ls -lah
echo ${new_theme}

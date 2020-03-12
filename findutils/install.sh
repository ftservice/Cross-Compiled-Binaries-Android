[ "$insloc" == "/system/bin" ] || mouinsloc="$(echo $insloc | sed 's|^/system/|/|')"
sed -i -e "s|/system/bin|$mouinsloc|g" -e "s|SHELL=\".*\"|SHELL=\"/system/bin/sh\"|" $MODDIR$insloc/updatedb

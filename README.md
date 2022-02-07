# Start Up

Edit `/etc/profile`, add:
```bash
export NGINX_TOOLS_PATH=/path/to/nginx-tools
if [ -f $NGINX_TOOLS_PATH/autoload.sh ]; then
    source $NGINX_TOOLS_PATH/autoload.sh
fi
```

Edit `/etc/sudoers`, append `/path/to/nginx-tools` to `secure_path`.
 

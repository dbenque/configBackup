# configBackup

The script sync.sh should be launched (cron) to perform automatic backup of the resources. Resources are described inside the script itself.

# Tips

## Wifi enable/disable

As root, use

	rfkill block wifi
	rfkill unblock wifi

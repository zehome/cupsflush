Get rid of CUPS history files and data by cron job (/var/spooL/cups/c* and d*)

(By doing find /var/spool/cups ... | xargs rm)


Insert in your crontab:
<pre>
25 7 * * * /root/bin/cupsflush.sh 60
</pre>

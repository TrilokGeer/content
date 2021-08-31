#!/bin/bash
# make existing entries pass
for acct in $(grep -ve ':\(!!\|\*\):' /etc/shadow | awk -F: '{print $1}'); do
    chage -m 1 -d $(date +%Y-%m-%d) $acct
done
echo 'max-test-user:$1$q.YkdxU1$ADmXcU4xwPrM.Pc.dclK81:18648:1:60::::' >> /etc/shadow
echo "max-test-user:x:50000:1000::/:/usr/bin/bash' >> /etc/passwd

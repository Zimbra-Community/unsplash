#!/bin/bash

# Author: Lorenzo Milesi <maxxer@yetopen.it>

JSPFILE="/opt/zimbra/jetty/webapps/zimbra/public/login.jsp"
if grep -r -q 'unsplash' $JSPFILE; then
	echo "Patch already applied"
	exit 0
fi


P=$(which patch)
if [ -z $P ]; then
	echo "unable to find 'patch' binary"
	exit 1
fi

P_PARAMS="-b "$JSPFILE


echo "applying patch"

patch $P_PARAMS <<"EOP"
--- /tmp/login.jsp      2019-10-03 15:11:43.199565878 +0200
+++ /opt/zimbra/jetty/webapps/zimbra/public/login.jsp   2019-10-03 15:01:09.758229570 +0200
@@ -748,5 +748,14 @@
        }
 }
 </script>
+     <style>
+     .LoginScreen {
+         background-color    : #777 !important;
+         background-image    : url('https://source.unsplash.com/random/featured/?nature') !important;
+         background-position : center;
+         background-repeat   : no-repeat;
+         background-size     : cover;
+     }
+     </style>
 </body>
 </html>
EOP

echo "done!"

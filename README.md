# unsplash
Spice up the Zimbra log-in screen with random images from unsplash.com.

![alt text](https://github.com/Zimbra-Community/unsplash/raw/master/2019-05-29-095906_1920x1080_scrot.png)
![alt text](https://github.com/Zimbra-Community/unsplash/raw/master/2019-05-29-095919_1920x1080_scrot.png)
![alt text](https://github.com/Zimbra-Community/unsplash/raw/master/2019-05-29-095926_1920x1080_scrot.png)
![alt text](https://github.com/Zimbra-Community/unsplash/raw/master/2019-05-29-095929_1920x1080_scrot.png)
![alt text](https://github.com/Zimbra-Community/unsplash/raw/master/2019-05-29-095933_1920x1080_scrot.png)
![alt text](https://github.com/Zimbra-Community/unsplash/raw/master/2019-05-29-100014_1920x1080_scrot.png)
![alt text](https://github.com/Zimbra-Community/unsplash/raw/master/2019-05-29-100026_1920x1080_scrot.png)

### Installing
Open the following file using nano/vi on your server /opt/zimbra/jetty/webapps/zimbra/public/login.jsp and append before `</body>` the following css:

         <style>
         .LoginScreen {
             background-color    : #777 !important;
             background-image    : url('https://source.unsplash.com/random/featured/?nature') !important;
             background-position : center;
             background-repeat   : no-repeat;
             background-size     : cover;
         }
         </style>
         

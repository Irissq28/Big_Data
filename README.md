# Big Data

## Depolyment and installation

### Sandbox Deployment
I tried the method of Deploying Hortonworks Sandbox on VirtualBox, but with a limited 8 RAM on Mac and other constraints of this method, I decided built the Apache Ambari based on [Deploying Hortonworks Sandbox on Microsoft Azure](https://zh.hortonworks.com/tutorial/sandbox-deployment-and-install-guide/section/4/), and finally it works!

The steps of **creating hortonworks data platform sandbox in Azure** are slightly different from the website, But basically are the same as the documentation. If you couldn't find certain steps, try to click advanced button.

Also, to get the access to Ambari by Terminal on Mac, Putty is needed. I followed this video to install Putty on Mac. [How to install Putty on Mac](https://www.youtube.com/watch?v=rblQ4y9coGg)

### **Some useful links**

* [Install the Command Line Tools](https://developer.apple.com/download/more/)

* Install Xcode from APP Store

* [Install Mac Ports](https://www.macports.org/install.php)

* [Fix installation failed issue1](https://github.com/nodejs/node-gyp/issues/569)

* [Fix cannot display issue2: Quartz installation](https://www.xquartz.org)

  * After downloading Quartz, right click the application, and follow the [steps](https://github.com/Irissq28/Big_Data/blob/master/Images/putty.jpeg) here


### **Problem solved**

I tried to use command line to control Hadoop by Putty, but it didn't work, also it isn't mentioned in documatation, [here](https://community.hortonworks.com/questions/58247/hdp-25-sandboxvm-commandsscripts-are-not-found.html) it the link helped me solved the problem. 

BTW, I changed the user as maria_dev which is the one I used in Ambari, instead of root as provided, the password is the same as the password you used in Ambari. And then use
```
su root
```
To download packages you need, and the steps are the same as the link I provided.

:smile:That's it, enjoy now!



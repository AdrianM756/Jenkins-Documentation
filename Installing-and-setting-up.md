## Jenkins

[Jenkins](https://www.jenkins.io/) an open source automation server which enables developers around the world to reliably build, test, and deploy their software.
<br>

## Installation

On this Demo, We will be installing ***Jenkins*** on a [CentOS](https://www.centos.org/) machine. But first, we need to install ```wget```. To install ***wget***, We will use [yum](https://access.redhat.com/solutions/9934).

```
yum install wget -y
```

Once ***wget*** is installed, we would then use the following commands:

```
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo dnf upgrade
# Add required dependencies for the jenkins package
sudo dnf install fontconfig java-17-openjdk
sudo dnf install jenkins
sudo systemctl daemon-reload
```

For more info, you can visit this [link](https://www.jenkins.io/doc/book/installing/linux/#fedora) for more details.

Let us try and install it again  using the ```yum install jenkins -y```. To check the version, we can use the command:

```
jenkins --version
```
<br>

## Starting Jenkins

To start ***Jenkins*** first need to enable its ***service*** by using the command:

```
systemctl enable jenkins
```

Once ***enable***, we can now start the service using the command:

```
systemctl start jenkins
```

We can now access Jenkins via browser using ```<IP ADDRESS OF THE DEVICE>:8080```. You should be able to get a similar output:

![image](https://github.com/user-attachments/assets/f0bc46e3-49d8-4df5-adac-20b7c5d5afd2)

To Find the ***Administrator Password*** use the command:

```
cat /var/lib/jenkins/secrets/initialAdminPassword
```

Once Entered, click on ***continue***.

On the next section, We will use the default ***Install suggested plugins*** then wait for the installation to finish.

![image](https://github.com/user-attachments/assets/ce9a0398-b4cc-43f3-acbf-bcfc1f945ed6)
<br>

![image](https://github.com/user-attachments/assets/e485a7a2-a55e-4bd2-a500-00e430495297)
<br>
<br>

## Creating the first admin user

On this section, input your desired ***username***, ***Password***, ***Full Name***, and ***Email Address***. Once done, click on ***Save and Continue*** on the lower right side.

![image](https://github.com/user-attachments/assets/cf32f037-80fe-4c01-ae6c-172ebacba0bc)
<br>
<br>

It will then prompt you to the next section which will show you the ***Jenkins URL*** to continue, click on ***Save and Finish*** on the lower right side.

![image](https://github.com/user-attachments/assets/a43c05b9-aff5-443a-b2e7-22e33e256390)
<br>
<br>

If successful, It will then prompt you to the Jenkin's Dashboard.

![image](https://github.com/user-attachments/assets/5936bb03-c26b-42c8-ba95-4f9dc6f7905b)







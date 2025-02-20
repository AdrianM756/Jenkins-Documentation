## Jenkins Dashboard

When you login on the Jenkins UI, it will prompt you this dashboard:

![image](https://github.com/user-attachments/assets/ffb94be4-0298-4451-9df1-828d0b5e68df)
<br>

## Check how many users can login

To check all the available users, navigate to ***Manage Jenkins > Security > Users***.
<br>

![image](https://github.com/user-attachments/assets/3e12cb3d-332a-437d-8366-4d152486e178) 
<br>

![image](https://github.com/user-attachments/assets/5474d56f-b6ac-450f-a843-03d07852ac88)
<br>

## Configure a public SSH key

Access the Terminal interface of our Jenkins server then generate an SSH public key using the command:

```
ssh-keygen -t ed25519 -C "<EMAIL ADDRESS>"
```
<br>

***Explaination:***
<br>

```ssh-keygen``` Is the command used to generate SSH keys.

```-t``` refers to the type of key that will be generated

```ed25519``` The [ed25519 algorithm](https://rust.algorithmexamples.com/web/cryptography/ed25519.html) which is more modern and efficient than others like RSA.

```-C``` It means comment. On this demo, we will be using an email address just for indentification purposes.
<br>

When you run the command, you’ll be prompted to choose where to save the generated keys. Either choose a custom location or use the default path (```~/.ssh/id_ed25519```) then you will need the copy it's content. 

Once you've copy it, go to the jenkins UI and navigate to you user that is located on the upper right then select ***security***.
<br>

![image](https://github.com/user-attachments/assets/2e6ee0f6-f145-4dcb-ad3b-ad36d64d1630)
<br>

Under the ***SSH Public Keys***, paste the public key that you've just copied then click on ***save***.
<br>

![image](https://github.com/user-attachments/assets/2ae561c2-941c-4384-b7e7-ce0556dfff6b)













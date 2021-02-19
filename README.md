# Multiple-ssh-key
**Manage multiple Github accounts on the same computer via ssh keys.**

Sometimes you need more accounts than one for access to Github or Gitlab and similar tools. 
For example you can have one personal account for your projects and one work account for your company.

If you want to use both accounts on the same computer 
(without typing password every time, when doing git clone, push or pull), how to do that?

## Problem
Now the problem is, How to manage the SSH keys for both the GitHub accounts. 
Git by default takes the `~/.ssh/id_rsa(.pub)` keys and we can’t add the same ssh key in both the GitHub account.

## Solution

Different accounts use the SSH key of the corresponding account.

### Generate SSH key

Use command `ssh-keygen -f ~/.ssh/xx_id_rsa -C email` in terminal to generate the ssh key, like:
 ``` shell script
    ssh-keygen -f ~/.ssh/example_id_rsa -C aaa@163.com
 ```
Please make sure the format of SSH key name is `xx_id_rsa`.

### Add ssh key to corresponding account

If you have generated the ssh key (`example_id_rsa`) of the daimler account, 
you should add the public key (`example_id_rsa.pub`) to the aaa@163.com Github account.


### Switch ssh key
1. Download the script
2. Switch ssh key 
    ``` shell script
   switch_ssh.sh xxx
   ``` 

    You can use command `switch_ssh.sh example` to switch ssh key to `example_id_rsa`.
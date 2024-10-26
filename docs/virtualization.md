## Scared of running something that may damage your computer??

###  WELCOME 😁 
Today, we're learning how virtualize a container... 
>>   **First things first**
  
  Containers allows for the development of apps  alongside their configurations and dependencies in kinda an isolated environment to make sure they can be hosted / they can run on any computing environment...

  Virtualization helps us emulate oses and simulate hardware devices.. to say it i a nice way, it allows us have a completely isolated computer running on our computer.. kinda, a laboratory for dangerouse experiments we wont try on our dear pcs...
    
But why do so...???

  This will allow us run apps, games, and even oses without the fear of destroying our pcs
  ***
  
   BACK TO BUISNESS...
How can do that...???
    
 &nbsp; &nbsp; To do this, we'll need a virtual environment ( preferably multipass) and a container  ( preferably docker)

 Follow the links below to get them on your PCs🙂
 
 [Download multipass](https://multipass.run/docs/install-multipass)
 
 [Download docker](https://docs.docker.com/desktop/install/mac-install/)

***
 &nbsp; &nbsp; Nice 🐱... We now all have docker and multi pass installed.

 &nbsp; &nbsp; On the terminal, run the following command
 
 ```shell
 multipass launch docker --name <instance_name>
```
&nbsp; &nbsp; This creates a multipass instance named *"<instance_name>"*.. which of course you can customized to any name of your choice.

&nbsp; &nbsp; In fact, the *"multipass launch"* command is used to create a multipass instance, aka ***a virtual machine***.. in our case, the vitual machine running a docker container in which we can confidently run any code without the fear of crashing our device. Having this in mind, we have to link our shell to the docker container in order to run commands from our shell on the container, to achieve this, we'll use the following command;

```shell
multipass shell <instance_name>
```
Having done this, we'll have to use the following syntax to run commands that will have effect on the container in the virtual machine
```shell
multipass exec <instance_name> -- docker <command_name>
```
Where <command_name> could be any command "ps", "images" "purge" etc

But again, it can be tedious at the beginning to remember it, to resolve this, we'll create an **alias**

&nbsp; &nbsp; &nbsp; &nbsp; in simple terms, an alias is used to give a more friendly name to a command we may find difficulties dealing with..

&nbsp; &nbsp; to achieve this, we'll use the following syntax...
```shell
alias <desired_command_name>="<command_we_find_difficulties_dealing_with>"
```
&nbsp; &nbsp; In our case;

```shell
alias docker="multipass exec <instance_name> -- docker"
```

Hence forth, anytime we'll run the command ***"docker"*** the command ***"multipass exec docker-vm -- docker"*** will be executed in the background so we wont have to remember the later syntax 😌😌🙂‍↕️ 

<p style="text-align:center;">
**ZEN.. RIGHT.. 👍**
<p>

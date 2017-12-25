# AutoClould
A bash script that allows home assistant to disable cloud based services when internet accsess is lost

## Setup

**Read inside the files, most of what needs doing is said in them, also for the automation, please set something up to monitor your connection, Pinging google is common but not recomended, also DONT use a URL in the script**

Firstly make a package filled with the cloud dependent. Remember to put the path in the sh script

Next in the main configuation add a shell_command

```yaml
shell_command:
    clouldutil: "sh /home/homeassistant/.homeassistant/utils/cloud.sh" # replace with the path of the script you downloaded
```

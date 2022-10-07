## maicai.ddxq.tools Englsih version

**Checker.sh**

| Description |
| ------------ |
| Check if there is a deliverable time slot today every so often, and push it to your phone if there is.

**MacOS+iOS use**

> Phone please install [Bark](https://apps.apple.com/es/app/bark-%E7%BB%99%E4%BD%A0%E7%9A%84%E6%89%8B%E6%9C%BA%E5%8F%91%E6%8E%A8%E9%80%81/id1403753865) push tool

```bash
# Run the following command in MacOS terminal
brew install curl
brew install jq
*** MAKE sure that curl is correct getMultiReserveTime ***
bash checker.sh
``` ---
checker.sh ---

**CentOS server+iOS use**
```shell
yum install screen
yum install jq
wget https://raw.githubusercontent.com/6r6/maicai.ddxq.tools/main/checker.sh
# Modify the contents of checker.sh to populate the project and BarkID obtained from the packet capture to the corresponding location
# BarkID is obtained after installing the application and registering the device Example: https://api.day.app/BarkID/
# Mount the background to avoid the session closing task stop
screen -S shopping 
bash checker.sh
# Check the background session
screen -r shopping
```

## Script for DingDong (叮咚买菜) English version

Due to the epidemic of lockdowns in Shanghai over the past weeks, the situation has evolved beyond almost everyone's expectations. Many people's situations have turned into a situation where they can't leave home, and as they can't leave home day by day, the previously prepared supplies are getting less and less.

Although you can buy food in Dingdong and other software, the availability is very low due to high demand, and a long time of repeated manual refresh almost consumed all patience.

This Dingdong Script is built to help people automatically operate the repetitive check process.

| Description |
| ------------ |
| This script checks if there is a deliverable time slot today for the DingDong (叮咚买菜) APP (https://www.100.me/home/index) every so often, and push a notification to your phone if there is a deliverable time slot for your orders.

**MacOS+iOS or CentOS+iOS use**

> First install [Bark](https://apps.apple.com/es/app/bark-%E7%BB%99%E4%BD%A0%E7%9A%84%E6%89%8B%E6%9C%BA%E5%8F%91%E6%8E%A8%E9%80%81/id1403753865) push tool into your phone.


**Instruction for MacOS and CentOS terminal**

```bash
**Run the following command in MacOS terminal**

brew install curl
brew install jq
*** MAKE sure that curl is correct getMultiReserveTime in the Script ***
bash checker.sh


**CentOS server+iOS use**

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

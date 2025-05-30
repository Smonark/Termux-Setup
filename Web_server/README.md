# 📦 bWAPP Installation and Setup (Termux + tamp)

This guide explains how to set up the **bWAPP** web vulnerability practice environment in Termux using the tamp server.

---

## 🪛 Prerequisites

- Termux installed and set up
- `git`, `wget`, `unzip` and `nano` installed
```apt update && apt upgrade
  apt install git wget unzip nano
```
---

⚙️ 1. Prepare Directory Structure

```bash
cd /storage/downloads/Acode
mkdir Server
cd
```
⚙️ 2. Clone tamp Repository
```bash
git clone https://github.com/1Tech-
X/Tamp.git
cd Tamp
```
⚙️ 3. Install tamp
```bash
bash install.sh
```
When prompted, choose manual by selecting:

```bash
2
```
Set the tamp installation directory to:
```
/data/data/com.termux/files/home/storage/downloads/Acode/Server
```
⚙️ 4. Verify tamp Installation
```bash
tamp -h
tamp -start
```
🟢 Note:

``tamp -start`` starts only Apache2, not PHP.
To stop the server:
bash
```
tamp -stop
```
if you show any error type :
```bash
tamp -r
```
It's To fix all errors
⚙️ 5. Verify Server Access in Browser
Open your browser and visit:

MySQL (phpMyAdmin):
```
http://0.0.0.0:8080
```
Default username: ``` root ```
Default password:``` root ```

Apache2 Server:
```
http://localhost:8080
```
⚙️ 6. Download bWAPP
(i) ```cd /storage/downloads/Acode/Server 
```
(ii)```
wget https://sourceforge.net/projects/bwapp/files/bWAPP/bWAPPv2.2/bWAPPv2.2.zip/download -O bWAPP.zip
```
(iii)```
unzip bWAPP.zip
```

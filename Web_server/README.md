# 📦 bWAPP Installation and Setup (Termux + tamp)

This guide explains how to set up the **bWAPP** web vulnerability practice environment in Termux using the tamp server.

---

## 🪛 Prerequisites

- Termux installed and set up
- `git`, `wget`, `unzip` and `nano` installed

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

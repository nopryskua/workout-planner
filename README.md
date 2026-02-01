# Overview

`workout-planner` is a piece of software to plan workout in a gym.

https://docs.google.com/document/d/1L7K-nXjF7tQsCyj7gGSlBUr8qs_8QxlbkmYruckOSds/edit?usp=sharing

# Dev Setup

Install go (this one is for PI)

```bash
curl -LO https://go.dev/dl/go1.25.6.linux-arm64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.25.6.linux-arm64.tar.gz
rm go1.25.6.linux-arm64.tar.gz
```

Make it available

```bash
export PATH=/usr/local/go/bin:$PATH
```

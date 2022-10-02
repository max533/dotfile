# Docker Series

## How to use it

Type below command to install docker automatically

```bash
./install.sh
```

## Docker Architecture

Docker 使用 Server-Client 架構。主要 `Docker Client` 透過 RESTful API 跟 `Docker Daemon` 進行溝通，`Docker Daemon` 會進行對 `Docker Objects` 的操作，他們溝通的管道是透過 unix socket 或者其他網路介面。`Docker Client` 和 `Docker Daemon` 可以在同一台主機上，也可以透過 `Docker Client` 對遠端的 `Docker Daemon` 進行操作。`Docker Compose` 也是一種 `Docker Client`，他可以對多個由應用程式組成的容器進行操作。詳細可以參考[官網說明](https://docs.docker.com/get-started/overview/#docker-architecture)，下圖為官網架構圖。
![alt docker architecture](https://docs.docker.com/engine/images/architecture.svg)

## Docker Engine vs Docker Desktop

### 1. What is Docker Engine

Docker Engine [官網介紹](https://docs.docker.com/engine/)

### 2. What is Docker Desktop

Docker Desktop [官網介紹](https://docs.docker.com/desktop/)

`Docker Desktop` 主要是要讓各個平台(作業系統)都有統一的使用者體驗，增加許多 Dashboard 或 GUI 的互動方式，或者是增加許多 Docker Extensions 讓使用者可以享有許多新版 Linux Kernel 的功能。

### 3. What is difference between Docker Engine and Docker Desktop?

簡單來說就是 `Docker Engine` 比較陽春但具備基本功能，`Docker Desktop` 比較華麗具備許多進階的附加功能，詳細差異如下：

- 差別在於 `Docker Desktop` 運行一個虛擬機器在你的系統上，主要是為了克服不同 OS 都能使用同一種 Linux Kernel 達到相同的使用者體驗，而 `Docker Engine` 是直接位於你的 OS Kernel 之上。簡而言之， `Docker Desktop` 是在原始的作業系統上使用 `Docker Client` ，對需虛擬機器裡面的 `Docker Daemon` 進行 `Docker Objects` 的相關操作.

- `Docker Desktop` 在某些 [條件](https://docs.docker.com/desktop/faqs/general/#do-i-need-to-pay-to-use-docker-desktop) 不是免費，而 Docker Engine 是免費且開源的。

- `Docker Desktop` 負責 Docker 資訊安全方面的補丁，而 `Docker Engine` 則需使用者自行維護。

- `Docker Desktop` 簡單容易安裝與維護， `Docker Engine` 需要自行維護。

P.S. 關於 `Docker Desktop` 官方覺得比較好的地方，如 [官方文件](https://www.docker.com/wp-content/uploads/2022/03/Docker_Desktop_vs_DIY_datasheet_v2.pdf) 所示，大家可以自行參考

## Why do we need running rootless docker?

使用 Docker 來運行應用程式，代表需要執行 `Docker Daemon`，因為 `Docker Daemon` 綁定 Unix Socket 的方式運行而不是綁定 TCP Port，Unix socket 預設又是被使用者 `root` 所擁有或者其他可以使用 `sudo` 的使用者。所以 `Docker Daemon` 是由使用者 `root` 運行，也就是說 `Docker Daemon` 具有 root 的權限。所以如果想要讓你的 `Docker Daemon` 運行不要具有 `root` 的權限就需要使用 `rootless mode`。

簡單來說，`rootless-mode` 允許以非 `root` 用戶身份運行 `Docker Daemon` 和容器，以減輕守護程序和容器運行時中的潛在漏洞，重點就是使用 `root-mode` 可能會造成一些安全上的潛在漏洞。

但 `rootless-mode` 目前看起來還是有蠻多已知的 issue 沒有修復，所以如果是開發環境不是生產環境，個人想法是先使用 `root-mode` 去運行 `Docker Daemon` 即可， `rootless-mode` 可以等之後 issue 少一點再安裝，或者說跳到其他陣營，例如：Podman。

## Reference

- [Docker Architecture](https://docs.docker.com/get-started/overview/#docker-architecture)

- [Docker Engine Overview](https://docs.docker.com/engine/)

- [Docker Desktop Frequently asked questions](https://docs.docker.com/desktop/faqs/general/)

- [Docker Desktop Overview](https://docs.docker.com/desktop/)

- [Difference between Docker Desktop and Docker Engine](https://forums.docker.com/t/difference-between-docker-desktop-and-docker-engine/124612/2)

- [Docker Security - Docker daemon attack surface](https://docs.docker.com/engine/security/#docker-daemon-attack-surface)

- [Run the Docker daemon as a non-root user (Rootless mode)](https://docs.docker.com/engine/security/rootless/)

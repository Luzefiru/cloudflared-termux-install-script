# cloudflared-termux-install-script
A shell script to build (with [make](https://linux.die.net/man/1/make)) and install [`cloudflared`](https://github.com/cloudflare/cloudflared) on a device running [Termux](https://github.com/termux/termux-app) with the default `pkg` package manager.

Root access is not required.

## Setup

### Step 1: Download the installation script
```bash
curl -LO https://raw.githubusercontent.com/Luzefiru/cloudflared-termux-install-script/refs/heads/main/install-cloudflared.sh
```

### Step 2: Make the script executable
```bash
chmod +x install-cloudflared.sh
```

### Step 3: Run the installer
```bash
./install-cloudflared.sh
```

- ⏳ This step may take a few minutes while `cloudflared` is being compiled.

### Step 4: Verify the installation

```bash
cloudflared --version
```

## OPTIONAL: Setup SSH Proxy for Cloudflare Tunnel Hostname

This allows you to [connect to SSH servers hosted on Cloudflare Tunnels](https://developers.cloudflare.com/cloudflare-one/networks/connectors/cloudflare-tunnel/use-cases/ssh/ssh-cloudflared-authentication/#2-connect-as-a-user).

```bash
curl -LO https://raw.githubusercontent.com/Luzefiru/cloudflared-termux-install-script/refs/heads/main/setup-cloudflared-client.sh && chmod +x setup-cloudflared-client.sh && ./setup-cloudflared-client.sh
```

## OPTIONAL: Cleanup Scripts

```bash
rm -f ./setup-cloudflared-client.sh ./install-cloudflared.sh
```

## References

- The script was originally by [rajbhx/cloudflared-termux](https://github.com/rajbhx/cloudflared-termux?tab=readme-ov-file#installation-of-cloudflared-in-termux), but I added some of my own preferences and safety measures.

## License

MIT License

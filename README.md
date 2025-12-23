# cloudflared-termux-install-script
A shell script to install cloudflared on a device running Termux with the pkg package manager.

## Setup

```bash
# Download the script
curl -LO https://raw.githubusercontent.com/Luzefiru/cloudflared-termux-install-script/refs/heads/main/install-cloudflared.sh
# Make it executable
chmod +x install-cloudflared.sh
# Run it
./install-cloudflared.sh

# Verify that cloudflared is installed
cloudflared --version
```

## Notes

- This installation compiles Cloudflared from source with [make](https://linux.die.net/man/1/make), ensuring compatibility with Termux.

- Root access is not required.

- The process may take several minutes depending on device performance.

## Reference

The script was originally by [rajbhx/cloudflared-termux](https://github.com/rajbhx/cloudflared-termux?tab=readme-ov-file#installation-of-cloudflared-in-termux), but I added some of my own preferences and safety measures.

## License

MIT License

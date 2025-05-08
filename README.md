# Cloudflare Tunnel + Docker

## UDP buffer size issue

```
failed to sufficiently increase receive buffer size (was: 208 kiB, wanted: 7168 kiB, got: 416 kiB). See https://github.com/quic-go/quic-go/wiki/UDP-Buffer-Sizes for details.
```

What worked:

```sh
sudo sysctl -w net.core.rmem_max=7500000
sudo sysctl -w net.core.wmem_max=7500000
```

On Macos I use `--protocol http2` because despite updating the buffer size didn't help.
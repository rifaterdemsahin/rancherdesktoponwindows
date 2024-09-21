To install `ifconfig` on Oracle Linux, you’ll need to install the **`net-tools`** package, which contains `ifconfig`. Oracle Linux, like many other modern Linux distributions, does not include `ifconfig` by default because it has been deprecated in favor of `ip` (part of the `iproute2` package).

Here’s how you can install `ifconfig` on Oracle Linux:

---

## 🛠 Steps to Install `ifconfig` on Oracle Linux:

1. **Update the package index:**

   First, make sure your system package index is up to date. Open a terminal and run:
   ```bash
   sudo yum update
   ```

2. **Install `net-tools`:**

   Install the `net-tools` package, which contains `ifconfig`:
   ```bash
   sudo yum install net-tools
   ```

3. **Verify the installation:**

   After installation, verify that `ifconfig` is available by running:
   ```bash
   ifconfig
   ```

---

### Alternative: Use `ip` Command

Since `ifconfig` is deprecated, it's worth noting that you can use the `ip` command for most networking tasks. The `ip` command is part of the `iproute2` package, which is installed by default on many modern Linux distributions.

To display network information using the `ip` command:
```bash
ip addr
```

Both commands provide similar functionality, but `ip` is more powerful and recommended for modern Linux systems.

Let me know if you need further assistance!

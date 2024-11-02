# dotfiles

## For Pop!\_OS

1. Initialize

   ```

   ```

2. Install Homebrew

   ```
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

3. Run below command and restart your terminal so that PATH changes take effect

   ```
   make bash/init
   ```

4. Install Ansible

   ```
   make ansible/init
   ```

5. Setup

   ```
   make ansible/setup
   ```

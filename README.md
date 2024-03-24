# Rust projects cleaner

Little script to clean _Rust_ projects created with _Cargo_

## Environment variables needed

The script needs an environmental variable pointing to the directory where all
the Rust projects are stored.

Declare an environment variable in your `~/.bashrc` or `~/.zshrc` with something like this:

```
export RUST_PROJECTS_DIR=/Users/leogtzr/dev/rust
```

If the `RUST_PROJECTS_DIR` is not defined, the script will fail with the following error:

```
error: variable RUST_PROJECTS_DIR not defined
```

## Running

Run the script `rust_projects_cleaner.sh`:

```
./rust_projects_cleaner.sh
```

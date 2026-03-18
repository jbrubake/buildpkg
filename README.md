# Name

**buildpkg** - facilitate building an RPM

# Synopsis

**buildpkg** *[OPTION]* PACKAGE...

# Description

Build multiple `PACKAGES` from `PACKAGE/PACKAGE.spec`, downloading any remote
sources.

# Requirements

The following tools must be installed:

- spectool
- rpmbuild
- rpmautospec
- mock

## Options

**-d, --pkg-dir [PATH]:** search for `PACKAGE` in `PATH` (Default: `pwd`)

**-r, --root [PATH]:** use PATH as the root for saving tarballs, SRPMs and RPMs
    (Default: `$XDG_STATE_HOME/rpms`)

**-c, --config [CONFIG]:** use `CONFIG` as the `mock(1)` chroot (Default: system default)

**--check:** run tests

**--no-check:** do not run tests (This is the default but only works if the
    SPECFILE guards `%check` with `%if %{with check}`

**-h, --help:** display this help and exit

**-V, --version:** output version information and exit

# Macros

`buildpkg` automatically loads any RPM macro files found in
`/usr/share/buildpkg/macros.d`, `/usr/local/share/buildpkg/macros.d` andf
`$XDG_DATA_HOME/buildpkg/macros.d`. The following macro files are installed to
`/usr/local/share/buildpkg/macros.d`.

## macros.cargo

Provides the following macros:

- `%cargo_prep_online`: use instead of `%cargo_prep` to allow downloading
    dependent crates from [crates.io](https://crates.io). Do not use the
    `%generatre_buildrequires` scriptlet when using this macro
- `%cargo_license_summary_online`: use instead of `%cargo_license_summary`
    when downloading dependent crates

# Author

Jeremy Brubaker [jbrubake@orionarts.io](mailto:jbrubake@orionarts.io)


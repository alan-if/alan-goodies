# Git Settings for Alan Projects

Some guidelines on how to correctly setup a Git repository for Alan projects.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
- [Alan Repository Template](#alan-repository-template)
- [Git Settings](#git-settings)
    - [Alan File Extension](#alan-file-extension)
    - [Git Attributes](#git-attributes)
    - [Ignoring Files](#ignoring-files)
- [Cross-Editors Configurations](#cross-editors-configurations)
    - [EditorConfig and Continuous Integration](#editorconfig-and-continuous-integration)
- [External Links](#external-links)
    - [Configuring Git Repositories](#configuring-git-repositories)
    - [EditorConfig](#editorconfig)
    - [Repository Automation and Build Testing](#repository-automation-and-build-testing)

<!-- /MarkdownTOC -->

-----

# Introduction

[Git] has become the most widely used version control tool, and [GitHub] the most popular platform for open source Git repositories.
The presence of Alan projects on GitHub is growing steadily, especially since the [Alan IF Development team] was instituted on GitHub in 2019 with the goal of creating a joint-effort in the creation, maintenance and revival of Alan projects.

Git is an extraordinary tool when it comes to collaborative open source projects, and GitHub is an amazing service providing an extra layer of useful tools on top of Git repositories — Issues, Discussions, a Wiki, a powerful Dashboard, continuous integration services, automation via the [GitHub API], and even project websites via [GitHub Pages].

The Alan community can greatly benefit from publishing its resources and projects on GitHub — including Alan adventures, which can be developed and shared on GitHub too.

Unfortunately, Git has a steep learning curve and newbies often find hard to start working on their first repositories.
This document provides some useful guidelines on how to set-up a GitHub repository for Alan projects, ensuring optimal configurations for cross platform collaboration, and to get the most out of GitHub specific features.

# Alan Repository Template

The __[Alan Repository Template]__ allows creating new repositories on GitHub using a boilerplate template which contains all the right settings to start with.

Repository templates are a [fairly new GitHub feature], introduced in June 2019.
All you have to do is visit the __[Alan Repository Template]__ project and click on the <kbd>Use this template</kbd> button placed on the bar above the files list, or just [click on this link].
The new repository creation steps are as usual, except that instead of an empty repository you'll start off with the template files designed for Alan.

Once you've used the Alan template, the template will become available in your new repository template choices, without having to visit the __[Alan Repository Template]__ project each time.
For more info on working with repository templates, see:

- [GitHub Help » Creating a repository from a template]

This is the recommended choice for creating new Alan repositories on GitHub, instead of manually setting every repository from scratch.
The template is public domain and doesn't tie your project to any licenses.
Also, using a commonly shared template ensures settings-consistency across projects.

The __[Alan Repository Template]__ is an open source project, so it will be improved over time through users' experience and collaboration.
If the current template doesn't fit your ideal workflow, you can always fork it and adapt it to your custom needs.

[click on this link]: https://github.com/alan-if/alan-repository-template/generate "Create a new repository using the ALAN Repository Template!"
[fairly new GitHub feature]: https://github.blog/2019-06-06-generate-new-repositories-with-repository-templates/ "Read announcement article on GitHub Blog"

# Git Settings

Every repository can contain some configuration files to ensure that project files are treated as expected based on their file extension, name or path.

Additional GitHub specific settings allow to make the most of GitHub additional services (repository statistic, syntax highlighting, and code formatting).

Finally, some application-agnostic configurations allow to enforce some code styling and encoding on a variety of code editors and IDE, even if they don't support the Alan syntax natively.

We'll go through the various settings, explaining them one by one, and covering the settings which affect Alan projects.

During this tutorial, you're advised to look at the actual settings used by the __[Alan Goodies]__ project, for they offer a good practical example of how these are used in real case scenarios:

- [`.editorconfig`](./.editorconfig)
- [`.gitattributes`](./.gitattributes)
- [`.gitignore`](./.gitignore)


## Alan File Extension

Before venturing into the nitty-gritty of settings, let's take an overview of which file extensions we can expect to find in Alan projects, and how these should be handled.

|    ext     |             description              |  encoding  |  EOL   |
|------------|--------------------------------------|------------|--------|
| `.a3c`     | Alan compiled adventures.            | binary     | n/a    |
| `.a3r`     | Adventure assets (images/sounds).    | binary     | n/a    |
| `.a3s`     | Alan commands script (aka solution). | ISO-8859-1 | native |
| `.a3t`     | Alan game transcripts.               | ISO-8859-1 | native |
| `.alan`    | Alan source files.                   | ISO-8859-1 | native |
| `.glksave` | WinArun saved game session.          | binary     | n/a    |
| `.i`       | Alan source modules.                 | ISO-8859-1 | native |
| `.ifid`    | Source adventure IFID file.          | Ascii      | none   |
| `.lis`     | Compiler generated listing file.     | text       | native |
| `.log`     | Compiler/ARun log files.             | ISO-8859-1 | native |
| `.sav`     | Arun saved game session.             | binary     | n/a    |

Some of the above extensions are less commonly found in projects (e.g. `*.a3r` files), or might be the product of special compiler options (e.g. `*.lis` files) or usage of a specific interpreter (e.g. `.glksave` and `.sav`).
Nevertheless, you should always account for their possibility, lest they might end up creeping into the repository unexpectedly.

Note that `*.a3s` and `*.a3t` are the new official extensions adopted by Alan for solution and transcripts — they were introduced in 2021 to allow associating them to custom settings in editors and IDEs to be able to control their encoding, etc.

Also, in this document and the above table we'll assume [ISO-8859-1] (Latin1) as the standard encoding for Alan adventures (i.e. `iso`), although Alan does support other encodings too (e.g. `dos` and `mac`), but these are obsolete and no longer used by modern OSs.


## Git Attributes

- [`.gitattributes`](./.gitattributes)

Because different users might have configured Git differently on their local machine, and because Git behaves slightly differently on Windows, it's a good idea to exploit the `.gitattributes` file to enforce standards in your repository on how Git should handle EOL (End-of-Line) normalization — especially for Alan related file extensions, which are not popular enough to be granted some default settings on services like [GitHub], [GitLab], [Bitbucket], etc.

Git attributes also allow to define which files are _text_ and which are _binary_, to improve source diffing and prevent EOL normalization on binary files.
Many editors and Git GUIs are able to pick up those settings from the `.gitattributes` file to optimize editing, diffing and Git operations.

EOL normalization settings are extremely important to prevent clashes between macOS and Linux users, on the one hand, and Windows OS users, on the other.
The former OSs use `LF` as native EOL (End-of-Line) sequences, while Windows prefers `CRLF` EOL — which would render files unusable on the formers.
By exploiting the `.gitattributes` file you can tell Git how to handle EOLs in text files, based on their file extension, name or path — by defining custom globbing patterns to apply rules to any file matching the pattern.
This way, all text files will be committed to Git storage using the correct EOL sequence, and adjusted to the native EOL at checkout time (if needed).

For an excellent tutorial on Git and EOL normalization, see:

- _[Mind the End of Your Line]_ — by [Tim Clem], 2012.

Alan projects are likely to contain a variety of Alan related text-files (either source files or generated files), all of which can be safely set in `.gitattributes` to use the OS native EOL:

```gitattributes
*.a3t    text
*.a3s    text
*.alan   text
*.i      text
*.ifid   text
```

You might also wish to add the `.project` file to the list, which is used by the [AlanIDE] to store project configurations:

```gitattributes
.project   text
```

And the following extensions should be declared as binary files:

```gitattributes
*.a3c      binary
*.a3r      binary
*.sav      binary
```

## Ignoring Files

- [`.gitignore`](./.gitignore)

The `.gitignore` file allows us to exclude certain files from the project based on their file extension, name or path.
This is very useful to allow using the local repository folder for actual work, without having to worry that output files (e.g. compiled adventures) end up in the public repository of the project.
Also, it allows to save game sessions in the project without having those files show up in Git work area as new untracked files (this being the goal of ignoring them).

Usually, you'll want to add the following settings to your `.gitignore` file:

```gitignore
*.a3c
*.a3r
*.ifid
*.sav
.project
```

But, depending on the actual project, you might choose to preserve `*.ifid` files (especially in an adventure project), or any other generated files.
The above are the typical settings for most projects, but you're free to adapt them to your needs by deleting or commenting out any of these lines.

Keep in mind that many auto-generated files will change each time they are generated (by the Alan compiler or interpreter), and if you don't ignore them they'll keep popping up in Git as changed files, both on your machine as well as on the machine of other contributors — which could lead to accidentally committing them over and over again.

# Cross-Editors Configurations

- [`.editorconfig`](./.editorconfig)

By adding a `.editorconfig` file to your repository, you can enforce some settings for Alan files across multiple editors and IDEs, as well as to provide optimal source code previews on GitHub.

The [EditorConfig] file format is an application-agnostic standard for defining consistent coding style conventions for multiple developers working on the same project across various editors and IDEs.
A growing number of editors and IDEs support EditorConfig out of the box, and numerous plug-ins and extensions are available for editors that don't.

One of the main benefits of adding EditorConfig settings is the ability to enforce ISO-8859-1 encoding on Alan files (`*.alan`, `*.i`, `*.a3s`, `*.a3t`) and prevent accidental UTF-8 file-corruption from copy-&-paste operations.
Most editors that support [EditorConfig] should be able to enforce ISO-8859-1 strictness on Alan sources via the `.editorconfig` file.

As of Jun 2015, [GitHub natively supports EditorConfig] files within repositories, and uses the settings in `.editorconfig` files to improve sources visualization on GitHub via the web browser.

Although GitHub doesn't recognize Alan source files natively, it will honour the EditorConfig settings of your project.

These are reasonable [EditorConfig] settings for Alan files:

```EditorConfig
root = true

# Common settings for all Alan text files
[*.{alan,i,a3s,a3t}]
indent_style = space
indent_size = 2
charset = latin1

# Additional settings for non-generated Alan text files
[*.{alan,i,a3s}]
trim_trailing_whitespace = true
insert_final_newline = true
```

Although indentation isn't a clear-cut issue in Alan sources, setting indentation to use 2 spaces instead of tabs is a good base setting for most editors — but not for validating the contents of a project (see below).

The key aspect of the above settings is the `latin1` charset, which allows editors and GitHub to treat Alan files with [ISO-8859-1] encoding (a setting not available via Git configurations).
This should also improve visualization on GitHub, as well as code diffing in various tools that support [EditorConfig] — and prevent UTF-8 misrepresentation of some Latin1 characters.

## EditorConfig and Continuous Integration

Besides providing editor-agnostic settings, EditorConfig files can also be used to validate projects files, and to automate commits validation via continuous integration services like [Travis CI].

There are numerous tools to carry out file validations via EditorConfig settings.
For example, the __[editorconfig-checker]__ tool (available as a binary standalone CLI executable, or as an NPM package) can be used for this purpose, allowing to carry out build pass validation on pull-requests and commits, to ensure that all contributed files meet the project settings requirements.

This type of automation in collaborative projects is a real blessing, for it allows to spare time by spotting problems at pull-request/commit time — instead of having to unroll them after a merge, having realized that some files are not well formatted.

Or you could just exploit the EditorConfig settings locally, via some command line tool, for your own benefit (without having to set-up continuous integration on GitHub).
The point is that by providing an EditorConfig file you're opening your project to numerous possible automation uses; and those who don't need it won't be bothered nor harmed by its presence.

When using EditorConfig settings for this purpose, you might want to add an editorconfig-checker configuration file to suppress some of the settings in the `.editorconfig` file, which might work as editor guidelines but are not strictly enforced — e.g. the `indent_size` value, which is not strict in Alan real use, otherwise the __editorconfig-checker__ tool would report as an error any indentation which is not a multiple of 2, whereas in Alan sources we commonly encounter code formatted like this:

```alan
The lounge IsA location.
  Description
    "A very relaxing room, with soft lights and
     ambient music playing in the background."
End the.
```

… where the `ambient` word is aligned to the text, not to the opening quotes.
So you don't want the code validator to report this as an error.

Tools like __[editorconfig-checker]__ [allow using custom setting files] or command lines options to restrict the checks to certain entries of the `.editorconfig` file.
E.g., __editorconfig-checker__ uses an `.ecrc` file to customize the validation process (via JSON), so you could either resort to an `.ecrc` settings file or use CLI options to limit or override its behaviour in your repository when using [Travis CI] build tests.

# External Links

- [Wikipedia » ISO-8859-1][ISO-8859-1]

## Configuring Git Repositories

- [Git documentation » gitattributes]
- [Git documentation » gitignore]
- _[Pro Git book]_, by Scott Chacon and Ben Straub:
    + [2.2 Git Basics — Recording Changes to the Repository » Ignoring Files]
    + [8.1 Customizing Git — Git Configuration]
    + [8.2 Customizing Git — Git Attributes]
- _[Mind the End of Your Line]_ — Git EOL normalization and settings tutorial by [Tim Clem].

## EditorConfig

- [editorconfig.org][EditorConfig] — EditorConfig official website.
- [editorconfig-checker] — tool to validate project files according to `.editorconfig` settings.

## Repository Automation and Build Testing

- [Travis CI] — continuous integration service for GitHub projects.
- [Alan Builder] — a [Travis CI] compliant build tool for Alan IF adventures projects.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[ISO-8859-1]: https://en.wikipedia.org/wiki/ISO/IEC_8859-1 "Read Wikipedia page on ISO/IEC 8859-1 encoding"
[Alan Goodies]: https://github.com/alan-if/alan-goodies "Visit the Alan Goodies project on GitHub"
[Github natively supports EditorConfig]: https://github.com/editorconfig/editorconfig.github.com/pull/48
[Travis CI]: https://travis-ci.com/ "Visit Travis CI website"

<!-- EditorConfig -->

[EditorConfig]: https://editorconfig.org/ "Visit the EditorConfig project website"
[editorconfig-checker]: https://editorconfig-checker.github.io "Visit editorconfig-checker website"
[allow using custom setting files]: https://github.com/editorconfig-checker/editorconfig-checker#configuration "Learn more about configuring editorconfig-checker"

<!-- Git, GitHub, etc. -->

[Git]: https://git-scm.com/ "Visit Git website"

[GitHub]: https://github.com "Visit GitHub website"
[GitHub API]: https://developer.github.com "Learn more about the GitHub API"
[GitHub Help » Creating a repository from a template]: https://help.github.com/en/articles/creating-a-repository-from-a-template "Learn more about creating repositories from a template"
[GitHub Pages]: https://pages.github.com/ "Learn more about GitHub Pages"

[GitLab]: https://about.gitlab.com/ "Visit GitLab website"

[Bitbucket]: https://bitbucket.org "Visit Bitbucket website"

<!-- articles & tutorials -->

[Mind the End of Your Line]: https://adaptivepatchwork.com/2012/03/01/mind-the-end-of-your-line/

[Git documentation » gitattributes]: https://git-scm.com/docs/gitattributes
[Git documentation » gitignore]: https://git-scm.com/docs/gitignore

[Pro Git book]: https://git-scm.com/book/en/v2
[2.2 Git Basics — Recording Changes to the Repository » Ignoring Files]: https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository#_ignoring
[8.1 Customizing Git — Git Configuration]: https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration
[8.2 Customizing Git — Git Attributes]: https://git-scm.com/book/en/v2/Customizing-Git-Git-Attributes

<!-- Alan -->

[Alan Repository Template]: https://github.com/alan-if/alan-repository-template "Visit the Alan Repository Template on GitHub"
[AlanIDE]: https://www.alanif.se/download-alan-v3/alanide "Go to the AlanIDE download page on Alan website"
[Alan Builder]: https://github.com/alan-if/Alan-Builder "Visit the Alan Builder project on GitHub"

<!-- people and organizations -->

[Alan IF Development team]: https://github.com/alan-if "Visit the Alan Interactive Fiction Development team organization on GitHub"

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"
[Tim Clem]:https://adaptivepatchwork.com/about/ "View Tim Clem's profile on Adaptive Patchwork"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->

# puppet-lint: check unsafe interpolations plugin

This repository contains a custom check for puppet-lint, used to identify unsafe interpolations within Puppet manifests, specifically within `exec` resource blocks. The check focuses on ensuring that dynamic expressions, particularly those that could introduce security vulnerabilities, are flagged and reviewed.

## How It Works

1. **Exec Resource Gathering**: Collects all `exec` resources from the Puppet manifest for further analysis.
2. **Title Safety Check**: Iterates over titles of `exec` resources, checking for variables that might be interpolated unsafely.
3. **Parameter Inspection**: Examines the `command`, `onlyif`, and `unless` parameters of each `exec` resource, looking for patterns that suggest unsafe interpolations.

## Warning

This plugin is designed to flag potentially unsafe interpolations within `exec` resource blocks in Puppet manifests. However, in its current state, when it identifies a problem, it may inadvertently cause your CI/CD pipelines to fail. This behavior was not intentional and is a key reason why this check is not currently enforced by default. If you use this plugin, it is recommended to review and address flagged issues promptly. Use this plugin under your own risk!

## Usage

To implement this check, simply add the following line in your Gemfile and run `bundle install`:

```ruby
gem 'puppet-lint-check_unsafe_interpolations'
```

## Development

If you run into an issue with this tool or would like to request a feature you can [raise a PR](https://github.com/puppetlabs/puppet-lint-check_unsafe_interpolations/pulls) with your suggested changes. Alternatively, you can [raise a Github issue](https://github.com/puppetlabs/puppet-lint-check_unsafe_interpolations/issues) with a feature request or to report any bugs.
Every other Tuesday the DevX team holds [office hours](https://puppet.com/community/office-hours) in the [Puppet Community Slack](http://slack.puppet.com/), where you can ask questions about this and any other supported tools.
This session runs at 15:00 (GMT) for about an hour.

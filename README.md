# AwsSdkClient

This is PoC to run AWS APIs without writing code for specific AWS services.

Inspired by https://github.com/fujiwara/aws-sdk-client-go

## Installation

```sh
gem install aws-sdk-client
```

and install `aws-sdk-*` gems what you want.

Example:
```sh
gem install aws-sdk-s3
gem install aws-sdk-ec2
```

or using Budler

```ruby
# frozen_string_literal: true

source "https://rubygems.org"

gem "aws-sdk-client"
# add `aws-sdk-*` gems what you want.
gem "aws-sdk-s3"
gem "aws-sdk-sts"
gem "aws-sdk-iam"
````

## Usage

Example: S3

```sh
aws-sdk-client s3 list-objects-v2 '{"Bucket": "bucket-name", "MaxKeys": 10}'
```

This will returns JSON as compact format.

## Development

After checking out the repo, run `bundle install` to install dependencies.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/okkez/aws-sdk-ruby-cli.

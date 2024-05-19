# AwsSdk::CLI

This is PoC to run AWS APIs without writing code for specific AWS services.

## Installation

```sh
gem install aws-sdk-ruby-cli
```

and install `aws-sdk-*` gems what you want.

Example:
```sh
gem install aws-sdk-s3
gem install aws-sdk-ec2
```

## Usage

Example: S3

```sh
aws-sdk-cli s3 list-objects-v2 '{"Bucket": "bucket-name", "MaxKeys": 10}'
```

## Development

After checking out the repo, run `bundle install` to install dependencies.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/okkez/aws-sdk-ruby-cli.

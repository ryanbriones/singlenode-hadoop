# singlenode-hadoop-cookbook

A simple cookbook that allows you boot up a single-node Hadoop cluster.

## Supported Platforms

This cookbook is tested on a VirtualBox running a hashicorp "precise64" box. See [http://community.opscode.com/cookbooks/hadoop](http://community.opscode.com/cookbooks/hadoop) for more information about supported platforms.

## Attributes

See https://github.com/continuuity/hadoop_cookbook#attributes for attributes for controlling the Hadoop installation

## Usage

### singlenode-hadoop::default

Include `singlenode-hadoop` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[singlenode-hadoop::default]"
  ]
}
```

Sample [Vagrantfile](./Vagrantfile) provided.

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Ryan Carmelo Briones <ryan.briones@brionesandco.com>

Licensed under the BSD License. See [LICENSE](./LICENSE) for more information.

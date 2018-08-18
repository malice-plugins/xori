![logo](https://github.com/malice-plugins/xori/blob/master/docs/xori.png)

[![Circle CI](https://circleci.com/gh/malice-plugins/xori.png?style=shield)](https://circleci.com/gh/malice-plugins/xori) [![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org) [![Docker Stars](https://img.shields.io/docker/stars/malice/xori.svg)](https://hub.docker.com/r/malice/xori/) [![Docker Pulls](https://img.shields.io/docker/pulls/malice/xori.svg)](https://hub.docker.com/r/malice/xori/) [![Docker Image](https://img.shields.io/badge/docker%20image-69.5MB-blue.svg)](https://hub.docker.com/r/malice/xori/)

> Malice Xori Disassembler Plugin

---

## Dependencies

- [malice/alpine](https://hub.docker.com/r/malice/alpine/)

## Installation

1. Install [Docker](https://www.docker.io/).
2. Download [trusted build](https://hub.docker.com/r/malice/xori/) from public [DockerHub](https://hub.docker.com): `docker pull malice/xori`

## Usage

```
docker run --rm -v /path/to/malware:/malware malice/xori xori
```

```bash

```

This will output to stdout and POST to malice results API webhook endpoint.

## Sample Output

### [JSON](https://github.com/malice-plugins/xori/blob/master/docs/results.json)

```json
{
  "xori": {}
}
```

### [Markdown](https://github.com/malice-plugins/xori/blob/master/docs/SAMPLE.md)

---

#### xori

---

## Documentation

- [To write results to ElasticSearch](https://github.com/malice-plugins/xori/blob/master/docs/elasticsearch.md)
- [To create a pe scan micro-service](https://github.com/malice-plugins/xori/blob/master/docs/web.md)
- [To post results to a webhook](https://github.com/malice-plugins/xori/blob/master/docs/callback.md)

## Issues

Find a bug? Want more features? Find something missing in the documentation? Let me know! Please don't hesitate to [file an issue](https://github.com/malice-plugins/xori/issues/new)

## CHANGELOG

See [`CHANGELOG.md`](https://github.com/malice-plugins/xori/blob/master/CHANGELOG.md)

## Contributing

[See all contributors on GitHub](https://github.com/malice-plugins/xori/graphs/contributors).

Please update the [CHANGELOG.md](https://github.com/malice-plugins/xori/blob/master/CHANGELOG)

## Credits

## TODO

## License

MIT Copyright (c) 2018 **blacktop**

# BaselineLambda

This repo contain a Baseline Lambda Nodejs for AWS.

## Starting

These instructions will allow you to obtain a copy of the BaselineLambda for NodeJS for development and testing purposes. See the implementation for notes on how to implement the project on a live system.

### Prerequisites

What things do you need to install the software and how to install them?

```
nodejs v => 6
aws-cli => latest
```

### Installation

A series of step-by-step examples that indicate that you must run a development environment

Place yourself in the BaselineLambda folder

```
cd BaselineLambda
```

Install the dependencies

```
npm install
```

Modify the AWS Cloud Formation template

```
file: template.yaml
```

Modify the credentials of aws cli

```
aws configure
```

Modify the aws settings

```
cd .aws
vi development.cfg
vi production.cfg
```

Run the deploy script

```
./deploy [development|production]
```

## Authors

* **Alex Mejicanos** - *Developer* - [alexmeji](https://github.com/alexmeji) 
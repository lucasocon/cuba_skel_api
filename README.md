# MUKTI API

## Setup

  - Get the code

```
https://github.com/lucasocon/cuba_skel_api.git
```

  - Install dependencies

```
cd project
dep install
```

  - Install test's dependencies

```
cd mukti
dep install -f .gems-test
```

## Launch

```
cd mukti
rackup
```

## Testing

```
rake test:all      # Run tests for all
rake test:libs     # Run tests for libs
rake test:models   # Run tests for models
rake test:routes   # Run tests for routes
```

## Benchmarking

```
rake bench         # Run benchs tests for all
rake bench:all     # Run tests for all
rake bench:routes  # Run tests for routes
```

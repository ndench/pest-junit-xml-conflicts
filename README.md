# A small reproducer for Pest issue https://github.com/pestphp/pest/issues/1095

A quick simple reproduction of the issue with the new Junit output, introduced in Pest 2.32.0 when using infection.

```bash
# Install dependencies
make vendor 

# Run tests, see the output at `build/junit.xml` and `build/coverage-xml
make test

# See infection fail to find the test file
make infection

# Switch to Pest 2.31.0
make pest-2.31

# Check the Junit format again
make test

# See infection successfully find the test file
make infect

# Switch to the first version which changed the junit format
make pest-2.32.0

# Switch back to the latest 2.x Pest version
make pest-latest
```

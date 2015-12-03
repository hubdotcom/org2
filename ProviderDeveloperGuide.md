# Provider Developer Guide #

Use this guide to develop Reporting Providers for the OWASP Report Generator.


# Details #

3 possible ways to add a provider

  1. from ORG2 UI
  1. from MXML from Provider application (we can provide a MXML template to load it into the ORG2 structure), (that way you can just create a Flex project and add modules)
  1. pseudo reflection - drop manifest file in bin and extract structure over bin structure,

ORG2 detects on first load and adds to provider db (if we want to use a db for providers, if not we can just inspect the bin) 2 and 3 to me are for more specific uses of ORG - like when you want to convert it to your own reporting tool
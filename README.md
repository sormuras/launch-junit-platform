# JUnit Platform Console Launcher action

This action downloads the JUnit Platform Console launcher.

## Inputs

### `platform-version`

**Required** The version of the JUnit Platform Console to load. Default `"1.6.0-RC1"`.

## Outputs

### `standalone-jar`

The path of the downloaded JUnit Platform Console Standalone JAR file.

## Example usage

```yaml
- uses: sormuras/setup-junit@master
  id: junit
  with:
    platform-version: '1.6.0-RC1'
- uses: actions/setup-java@v1
- run: java -jar ${{ steps.junit.outputs.standalone-jar }} --help
```

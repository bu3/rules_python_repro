# This is repro repository for an issue with code coverage for python

Just run:
`./run_code_coverage.sh`

it should show something like:
```
INFO: From Coverage report generation:
Jan 27, 2025 11:50:39 A.M. com.google.devtools.coverageoutputgenerator.Main getTracefiles
INFO: Found 1 tracefiles.
Jan 27, 2025 11:50:39 A.M. com.google.devtools.coverageoutputgenerator.Main parseFilesSequentially
INFO: Parsing file bazel-out/darwin_arm64-fastbuild/testlogs/projects/libs/examples/calculator/calculator_test/coverage.dat
Jan 27, 2025 11:50:39 A.M. com.google.devtools.coverageoutputgenerator.Main getGcovInfoFiles
INFO: No gcov info file found.
Jan 27, 2025 11:50:39 A.M. com.google.devtools.coverageoutputgenerator.Main getGcovJsonInfoFiles
INFO: No gcov json file found.
Jan 27, 2025 11:50:39 A.M. com.google.devtools.coverageoutputgenerator.Main getProfdataFileOrNull
INFO: No .profdata file found.
Jan 27, 2025 11:50:39 A.M. com.google.devtools.coverageoutputgenerator.Main runWithArgs
WARNING: There was no coverage found.
Target //projects/libs/examples/calculator:calculator_test up-to-date:
  bazel-bin/projects/libs/examples/calculator/calculator_test
  bazel-bin/projects/libs/examples/calculator/calculator_test.venv.pth
```

and eventually the `combined report` at `bazel-out/_coverage/_coverage_report.dat` is empty as the only test file report `.dat` file which is `bazel-out/darwin_arm64-fastbuild/testlogs/projects/libs/examples/calculator/calculator_test/coverage.dat` in my case
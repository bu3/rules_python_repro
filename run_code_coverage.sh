rm -f bazel-out/_coverage/_coverage_report.dat

bazel coverage --cache_test_results=no --action_env=VERBOSE_COVERAGE=true --combined_report=lcov -- projects/libs/examples/calculator/...

ls bazel-out/darwin_arm64-fastbuild/testlogs/projects/libs/examples/calculator/calculator_test/coverage.dat


echo "Checking the content of the report at bazel-out/_coverage/_coverage_report.dat"
cat bazel-out/_coverage/_coverage_report.dat

if [ -s "bazel-out/_coverage/_coverage_report.dat" ]; then
    echo "Code coverage report is not empty."
    exit 0
else
    echo "ERROR: Code coverage report is empty."
    exit 1
fi

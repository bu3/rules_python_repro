bazel test --cache_test_results=no --action_env=VERBOSE_COVERAGE=true --collect_code_coverage --combined_report=lcov --instrumentation_filter "^//projects/libs/examples/calculator[/:]" -- projects/libs/examples/calculator/...

echo "Checking the content of the report at bazel-out/_coverage/_coverage_report.dat"

cat bazel-out/_coverage/_coverage_report.dat

if [ -s "bazel-out/_coverage/_coverage_report.dat" ]; then
    echo "File is not empty."
    exit 0
else
    echo "ERROR: Code coverage report is empty."
    exit 1
fi
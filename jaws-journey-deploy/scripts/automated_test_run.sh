export AWS_REGION=${AWS_DEFAULT_REGION}
export AUTOMATED_TEST_SUITE="<< parameters.automatedTestSuite >>"
export DEPLOYMENT="<< parameters.deployment >>"
export IS_PRIMARY_DEPLOYMENT="<< parameters.isPrimaryDeployment >>"
./gradlew :${AUTOMATED_TEST_SUITE}:test -Pprofile=${PROFILE} --full-stacktrace -PrunEndToEndTests=true

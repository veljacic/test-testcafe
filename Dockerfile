FROM testcafe/testcafe
ENTRYPOINT "chromium --no-sandbox /tests"
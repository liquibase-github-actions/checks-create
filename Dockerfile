# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.29.1
COPY checks_create.sh /entry.sh
ENTRYPOINT ["/entry.sh"]

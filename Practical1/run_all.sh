#!/bin/bash

./log_processor.sh test_data/legacy_server.log
./backup_counter.sh test_data/sample_files
./error_counter.sh processed_logs.csv

echo "ALL_SCRIPTS_COMPLETED: $(date '+%Y-%m-%d %H:%M:%S')"
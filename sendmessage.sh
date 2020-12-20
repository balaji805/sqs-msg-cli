#!/bin/bash

echo "Enter message"
read MESSAGE

echo
echo "Posting your message"
aws sqs --region us-east-1 send-message --queue-url https://sqs.us-east-1.amazonaws.com/162042740788/sqs-lambda --message-body "$MESSAGE" --delay-seconds 5 > /dev/null

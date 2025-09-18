# atlantis-poc


Testing locally:

1 - Expose the http port 4141 to internet, can use ngrok
```
 ngrok http 4141  
```
```
URL=xxxx
```

2 - Define a randon secret for the Webhook
```
SECRET=xxxx
```

3 - Configure the webhook on GitHub repository
```
{ngrok-url}/events
Content type = application/json
Secret = $SECRET
```

4 - Generate a GitHub token
```
TOKEN=xxxx
```


5 - Run atlantils
```
atlantis server \
--atlantis-url="$URL" \
--gh-user="$USERNAME" \
--gh-token="$TOKEN" \
--gh-webhook-secret="$SECRET" \
--repo-allowlist="$REPO_ALLOWLIST"
```

6 - Create a PR for terraform:
```
echo 'resource "null_resource" "example" {}' > test.tf
```
---
title: "Clean up resources"
weight: 6
chapter: false
pre: " <b> 6. </b> "
---

{{% notice info %}}
  **Note**: If you're using AWS-provided accounts, you can skip this section.
{{% /notice %}}

To avoid incurring unnecessary charges, follow the steps below to delete all the resources you created during this workshop.

---

####  Delete S3 Objects and Buckets
1. Go to the **S3 Console**.
2. Delete all objects in the following buckets:
   - `awsdocsbucket`
   - `openapiBucket`
   - `dataanalysisbucket`
3. Follow [this guide](https://docs.aws.amazon.com/AmazonS3/latest/userguide/delete-objects.html) to delete objects.
4. Once emptied, delete the buckets themselves.

---

####  Delete IAM Roles
1. Open the [IAM Console](https://console.aws.amazon.com/iam/).
2. In the navigation pane, choose **Roles**.
3. Select the checkboxes next to these roles:
   - `AmazonBedrockExecutionRoleForAgents_*`
   - `AmazonBedrockExecutionRoleForKnowledgeBase_*`
   - `AWSServiceRoleForAmazonOpenSearchServerless`
4. At the top of the page, click **Delete**.

---

####  Delete Knowledge Base
1. Open the [Knowledge Base Console](https://us-west-2.console.aws.amazon.com/bedrock/home?region=us-west-2#/knowledge-bases).
2. Select the Knowledge Base.
3. Click **Delete**.
4. Type `delete` to confirm.

---

####  Delete Agent
1. Open the [Agent Console](https://us-west-2.console.aws.amazon.com/bedrock/home?region=us-west-2#/agents).
2. Select the Agent.
3. Click **Delete**.
4. Type `delete` to confirm.

---

####  Delete Vector Database (OpenSearch Collection)
1. Open the [OpenSearch Collections Console](https://us-west-2.console.aws.amazon.com/aos/home?region=us-west-2#opensearch/collections).
2. Select the Collection.
3. Click **Delete**.
4. Type `confirm` to proceed.

---

####  Delete the CloudFormation Stack
1. Open the [CloudFormation Console](https://console.aws.amazon.com/cloudformation).
2. On the **Stacks** page, select the stack: `gen-ai-workshop-cfn`.
3. In the details pane, choose **Delete**.
4. Confirm by selecting **Delete stack** when prompted.


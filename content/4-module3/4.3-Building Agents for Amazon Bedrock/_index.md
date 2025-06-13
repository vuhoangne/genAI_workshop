---
title: "Building Agents for Amazon Bedrock"
weight: 3
chapter: false
pre: " <b> 4.3. </b> "
---

[Amazon Bedrock Agents](https://aws.amazon.com/bedrock/agents/) help you build generative AI assistants that break down user requests into multiple steps. They use developer-provided instructions to create a coordination plan and then execute it by calling APIs and accessing Knowledge Bases to provide a final response to the end user.

In this module, we'll create an **AWS Solutions Architect Agent** that uses our **Knowledge Base** to answer AWS-related questions. We'll also create an **action** to read records from a database. Since LLMs are not designed for data analysis, it's better to build a dedicated tool (Lambda) that the agent can call.

---

####  Exercise 1: Building an Amazon Bedrock Agent

1. Go to the [Agents Console](https://us-west-2.console.aws.amazon.com/bedrock/home?region=us-west-2#/agents), then click **Create Agent**.
2. Fill in the following:

   - **Name**: `Agent-AWS`
   - **Description**: `Agent AWS is an automated, AI-powered agent that helps customers with knowledge of AWS by querying the AWS Well-Architected Framework`

   - Leave other settings as default and click **Create**.

####  Agent Details

- Select **Amazon Nova Pro** as the model.
- Provide the following instruction:

- `You are an expert AWS Certified Solutions Architect. Your role is to help customers understand best practices on building on AWS.`

- Click **Save** at the top.

![agents](/images/4-module3/agents.png?width=90pc)

---

#### ️ Action Group

An **Action** is a task the agent can execute automatically by calling a Lambda function. A set of actions is defined in an **Action Group**, and an OpenAPI schema defines all the APIs in the group. In this exercise, we will use a predefined action that reads records from a database.

To create it:

1. Click **Add** in the **Action group** section.
2. Enter the following information:
   - **Action Group Name**: `data-processing`
   - **Description**: `Actions to process data`
   - **Action group type**: `Define with API schemas`
   - **Lambda Function**: Select an existing function → `data_process_action`
   - **API Schema**: Select an existing OpenAPI schema
     - Click **Browse S3**, choose the bucket with `openapibucket` in its name
     - Select the file `agent_bedrock_schema.json`
     - Click **Choose**, then click **Create**

![agents](/images/4-module3/agents1.png?width=90pc)

---

####  Knowledge Base Integration

Now we'll add the **Knowledge Base** we created earlier.

1. Click **Add** in the **Knowledge Base** section.
2. Select the Knowledge Base created earlier.
3. Use this instruction:

   - `Query the AWS Well-Architected Framework to answer the customer's question`

4. Click **Add** to finish.

![agents](/images/4-module3/agents2.png?width=90pc)

---

####  Using the Agent

To test the Agent in the console:

1. Click **Prepare** in the chat window.
2. Once ready, start asking questions.

For example:

- `What can you tell me about S3 buckets?`

Once the Agent replies, click **Show trace** to see the steps it followed to generate the answer.

![agents](/images/4-module3/agents3.png?width=90pc)

You can also test the record-reading action by asking:

- `Can you help with the data processing task of getting the number of records in the production database?`

![agents](/images/4-module3/agents4.png?width=90pc)

---
{{% notice info %}}
️ It looks like we hit an error. No worries—this was intentional, and we'll fix it in the next section using **Amazon Q** to debug the function.
{{% /notice %}}


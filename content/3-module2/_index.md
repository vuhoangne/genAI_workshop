---
title: "Module 2"
weight: 3
chapter: false
pre: " <b> 3. </b> "
---

#### Use Foundation Models in Amazon Bedrock

####  Overview

[Amazon Bedrock](https://aws.amazon.com/bedrock/) is a fully managed service that offers a choice of high-performing **foundation models (FMs)** from leading AI companies like Stability AI, Anthropic, and Meta, via a single API. It also provides the capabilities you need to build **Generative AI applications** with a focus on:
-  **Security**
-  **Privacy**
-  **Responsible AI**

Because Amazon Bedrock is **serverless**, you don’t need to manage infrastructure. You can securely integrate and deploy Generative AI into your applications using familiar AWS services.

---

####  Module Objective

In this module, you'll learn how to use Amazon Bedrock via the:
- ️ **Console**
-  **API**

To generate:
-  **Text**
- ️ **Images**

---

####  Model Access

Before building with Amazon Bedrock, you need to **grant model access** to your account.

#### ️ Steps to Enable Model Access:

1. Go to the [Model access page](https://us-west-2.console.aws.amazon.com/bedrock/home?region=us-west-2#/modelaccess)
2. Click the **Enable specific models** button
3. Select the checkboxes below to activate models (no cost to enable – pay only for usage):

 **Amazon** (auto-selects all Amazon models)  
 **Anthropic** → Claude 3.5 Sonnet v2, Claude 3.5 Haiku  
 **Meta**  
 **Mistral AI**  
 **Stability AI** → SDXL 1.0  

4. Click **Request model access** to finalize activation

![module2](/images/3-module2/module3.png?width=90pc)

---

####  Monitor Model Access

- Watch the status of each selected model  
- It may take a few minutes for models to move from **In Progress** ️ **Access granted**
- Use the  **Refresh** button to update the status

 Make sure all selected models show **Access granted**

---

####  Congratulations!

{{% notice info %}}
You have successfully configured **Amazon Bedrock**!
{{% /notice %}}


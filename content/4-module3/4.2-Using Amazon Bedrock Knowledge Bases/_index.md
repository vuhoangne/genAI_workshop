---  
title: "Using Amazon Bedrock Knowledge Bases"  
weight: 2  
chapter: false  
pre: " <b> 4.2. </b> "  
---  

[Amazon Bedrock Knowledge Bases](https://aws.amazon.com/bedrock/knowledge-bases/) provides a fully managed RAG (Retrieval Augmented Generation) service for querying uploaded data. By specifying the location of your data in **Amazon S3**, the service will:
- Automatically retrieve documents,
- Chunk them into text blocks,
- Convert them to embeddings,
- Store embeddings in a vector database.

There's also an API for building applications that use the Knowledge Base.

In this module, we'll create a Knowledge Base using a portion of the [AWS Well-Architected Framework](https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html) documentation.

---

####  Exercise 1: Creating a Knowledge Base in the AWS Console

1. Access the [Knowledge Base Console](https://us-west-2.console.aws.amazon.com/bedrock/home?region=us-west-2#/knowledge-bases).

![Create](/images/4-module3/create.png?width=90pc)

2. Click the **Create** button (orange) and select **Knowledge Base with vector store**.

![Create](/images/4-module3/create1.png?width=90pc)

3. Use the default name or enter a custom name → Click **Next**.

![Create](/images/4-module3/create2.png?width=90pc)

4. Click **Browse S3**, select the bucket with a name containing **awsdocsbucket** → Click **Next**.

![Create](/images/4-module3/create3.png?width=90pc)

5. Select **Titan Embeddings V2** as the embedding model → Keep the default Vector store → Click **Next**.

![Create](/images/4-module3/create4.png?width=90pc)

6. Scroll down and select **Create Knowledge Base**.

![Create](/images/4-module3/create5.png?width=90pc)

> Creating a Knowledge Base takes a few minutes. Don't leave this page.

 While waiting, you can complete the survey at: [https://pulse.aws/survey/UBCJUUZV](https://pulse.aws/survey/UBCJUUZV)

---

####  Querying a Knowledge Base

When your Knowledge Base is ready, you can test it directly in the console interface:

1. Click **Sync** to synchronize the data (takes about 1 minute).

![Sync](/images/4-module3/sync.png?width=90pc)

2. Click **Select Model**, choose **Amazon Nova Pro** → Click **Apply**.
3. Enter a question in the **Enter your message here** box, for example:
- `Can you explain what a VPC is?`
4. Click **Run** to receive a response from the model and view the source documents in the **Show result details** section.

> Try different questions to explore further!

![test](/images/4-module3/test2.png?width=90pc)

---

####  Exercise 2: Using the Knowledge Base API

You can also query via API with 2 methods:

- `retrieve`: Returns documents relevant to the question.
- `retrieve_and_generate`: Performs the RAG workflow with a model.

####  Implementation:

1. Open the `rag_examples/kb_rag.py` file in your IDE.
2. Update the `KB_ID` variable with your Knowledge Base ID (found in the Overview section).

![test](/images/4-module3/test3.png?width=90pc)

3. Run the command:

```bash
python3 rag_examples/kb_rag.py
```
4. Try changing the `QUERY` variable on line 4 to see different responses.

>  The code is executing the RAG process: converting the question to an embedding, retrieving relevant documents, and answering with the model.

![test](/images/4-module3/test4.png?width=90pc)

---

####  Wrap up

After creating a Knowledge Base, the next step will be **embedding this Knowledge Base into an Amazon Bedrock Agent** to build a more intelligent automated response system.


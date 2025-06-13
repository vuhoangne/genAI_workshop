---
title: "Generating Text with Amazon Bedrock"
weight: 2
chapter: false
pre: " <b> 3.2.2 </b> "
---

In this module, we'll explore how to use **Amazon Bedrock** [Converse API](https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference.html) to create conversational applications for:

- ️ Summarization  
-  Sentiment Analysis  
-  Question and Answering (Q&A)

 The Converse API provides a consistent API that works with all Amazon Bedrock models that support messages. This means you can write code once and use it with different models. Should a model have unique inference parameters, the Converse API also allows you to pass those unique parameters in a model-specific structure.

 We'll learn how to invoke various foundation models to perform these tasks. Be sure to leverage **Amazon Q Developer** to help you with the exercises.

---

#### ️ Getting Started

 To start, we will be updating a script to run the text generation examples. Inside your Visual Studio Code IDE, open the file:  
`text_examples/gen_text.py`

![genimage](/images/3-module2/text1.png?width=90pc)

 Here we have code to invoke the different models, but we are missing logic to make the code functional. This is where we can leverage **Amazon Q Developer** to turn our ideas into workable code.

 Currently, the code for **text summarization** is already filled out. The exercises will guide you to complete the sections for **sentiment analysis** and **Q&A**.

 You can choose any of the models listed on **line 58** to help you complete the exercises.

 The complete reference code is available at:  
`full_code/gen_text.py`

---

####  Exercise 1: Sentiment Analysis with Amazon Bedrock

 Sentiment analysis is the tech version of “reading the room.” It gauges the mood or opinion embedded in a piece of text. Businesses use it to understand customer feedback, market trends, and social media conversations—turning qualitative data into actionable insights.

 Right now, the function `sentiment_analysis` (line **93**) is waiting for your input. You must fill out the function with a call to a model and a prompt to perform sentiment analysis.

 You can view the `summarize_text` function (line **71**) as an example.

Run the script using this command in the terminal:  
```bash
python3 text_examples/gen_text.py
```

![genimage](/images/3-module2/text2.png?width=90pc)

 The text you’ll be working with is on line 113.

####  Exercise 2: Q&A with Amazon Bedrock 

 Question and Answer (Q&A) systems are like your own personal research assistant. They help you extract specific answers from a sea of information. This is incredibly useful in scenarios ranging from customer service bots to extracting insights from large datasets.

 You must fill out the perform_qa function (line 103) with a call to a model and create a prompt that takes in the question and the source text.

Execute your script with by entering the following code in the Terminal and pressing enter. 


```bash
python3 text_examples/gen_text.py
```

![genimage](/images/3-module2/text3.png?width=90pc)

 Wrap Up
 Now that you have gotten a taste of using Amazon Bedrock for processing text, let’s explore how we can use it for video tasks next!

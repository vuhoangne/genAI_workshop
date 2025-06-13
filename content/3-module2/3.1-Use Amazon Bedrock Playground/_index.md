---
title: "Use Amazon Bedrock Playground"
weight: 1
chapter: false
pre: " <b> 3.1 </b> "
---

Amazon Bedrock Playground provides a quick way to experiment with different foundation models inside the AWS Console. You can compare model outputs, load example prompts, and even export API requests. The following modes are supported:

 [Chat/Text](https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/chat-playground): Experiment with a variety of language processing tasks in a step-by-step interface.  
️ [Image/Video](https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/image-generation-playground): Easily generate compelling images/videos by providing text prompts to pre-trained models.

 You can access the playground from the links above or from the [Amazon Bedrock Console](https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/overview) via the **Playgrounds** menu on the left. Take a few minutes to try out some examples.

---

####  Playground Examples

Here are some examples you can try in each playground:

####  Chat/Text

1. In **Amazon Bedrock**, choose:
- Select **Chat / Text** under **Playgrounds**.
![chat](/images/3-module2/chat.png?width=90pc)
- Click **Select model**.
- Choose **Amazon Nova Pro**.
- Click **Apply**.
![chat](/images/3-module2/chat1.png?width=90pc)

2. Try the following system prompt:
- `You are an expert AWS Solutions Architect that helps customers create scalable, cost-efficient solutions on AWS`
- `How can I create a 3-tier web app on AWS?`

![chat](/images/3-module2/chat2.png?width=90pc)

3. The sidebar contains model configuration options you can customize. Try changing the **temperature** to `1` to make the model more creative in its responses.

---

#### ️ Image

1. In **Amazon Bedrock**, choose:
- Select **Image / Canvas** under **Playgrounds**.
![chat](/images/3-module2/image.png?width=90pc)
- Click **Select model**.
- Choose **Amazon Nova Canvas**.
- Click **Apply**.
![chat](/images/3-module2/image1.png?width=90pc)

2. Try the following prompts:
- `unicorns in a magical forest. Lots of trees and animals around. The mood is bright, and there is lots of natural lighting`  
- `Downtown City, with lots of skyscrapers. At night time, lots of lights in the buildings.`  

 Amazon Bedrock will generate images based on the descriptions you provide.

![chat](/images/3-module2/image2.png?width=90pc)

---

#### ️ Image Actions

With **Nova Canvas**, you can perform actions such as:  
 **Remove background**,  
️ **Remove objects**,  
 **Generate image variations**.  

Try running one of these actions on an image you've created.

![chat](/images/3-module2/remove.png?width=90pc)

---

####  Next Steps

Once you're done experimenting, let’s explore how we can bring the power of **Amazon Bedrock** into real-world applications using the **API**.


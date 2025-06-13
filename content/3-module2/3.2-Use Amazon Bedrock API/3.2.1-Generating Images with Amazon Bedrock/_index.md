---
title: "Using Amazon Bedrock API to Generate Images with Amazon Nova Canvas"
weight: 1
chapter: false
pre: " <b> 3.2.1 </b> "
---

In this section, we will explore how to use the **Amazon Bedrock API** to generate images using **Amazon Nova Canvas**. We'll complete **three coding exercises** to build image generation applications with the help of **Amazon Q Developer**.

####  Introduction to Amazon Nova

[Amazon Nova](https://aws.amazon.com/ai/generative-ai/nova/) is the next generation of advanced foundation models (FMs) that offer cutting-edge intelligence and industry-leading price-performance, exclusively available on Amazon Bedrock.

You can use Amazon Nova to reduce cost and latency for nearly any generative AI task. It supports complex document and video analysis, diagram understanding, compelling video content creation, and sophisticated AI agents optimized for enterprise workloads.

Whether you're developing document-processing applications that handle text and images, generating marketing content at scale, or building AI assistants that can understand and process visual information, Amazon Nova delivers the intelligence and flexibility you need through two model types:

- **Understanding Models**: Accept text, image, or video input and generate text output.
- **Creative Generation Models**: Accept text and/or image input and generate image or video output.

---

####  Amazon Nova Canvas

[Amazon Nova Canvas](https://aws.amazon.com/ai/generative-ai/nova/creative/) is a modern image-generation model that creates professional images from user-provided text or images. It also includes easy-to-use tools for image editing through text instructions, as well as controls to adjust color schemes and layouts. 

This model includes built-in safety features for responsible AI usage, such as watermarking and content moderation.

---

####  Exercise 1: Build a Text-to-Image App

We will begin by creating a [Streamlit](https://streamlit.io/) app that generates images from user prompts and predefined styles. Streamlit allows you to easily build interactive web apps in Python.

####  Goal

Build an app that allows users to:
- Select a model.
- Enter a prompt to send to Amazon Bedrock.
- Display the generated image.

The final app will look like this: **Gen Image App**

![genimage](/images/3-module2/imagegen1.png?width=90pc)

####  Getting Started

In your **Visual Studio Code IDE**, open the file:  
`image_examples/image_gen_st.py`

This file contains code for calling different models but is missing the interactive UI components. This is where **Amazon Q Developer** can help turn our ideas into executable code.

---

####  Amazon Q Developer - Writing Code

Since we already know the intended functionality of the app, ask **Amazon Q** to update the application with the following:

```bash
Can you add the following to my application:

1. A text input box to capture user prompts.
2. A standalone function that can turn a base64 string into an image.
3. A button to call `generate_image_nova`
4. The image return will be a base64 string; use the standalone function to convert it to an image that can be displayed in Streamlit. 

```

![genimage](/images/3-module2/gen1.png?width=90pc)

Amazon Q Developer will process the request and provide updated code for the file.

---

####  Amazon Q Developer - Understanding Code

To understand code functionality:
- Highlight the code.
- Right-click and select: **Send to Amazon Q → Explain**.

Q Developer will return a detailed explanation of the code.

![genimage](/images/3-module2/gen2.png?width=90pc)

---

#### Run Your Code

To test your script:

1. Run it from the terminal:

```bash
streamlit run image_examples/image_gen_st.py
```

2. Click **Open in Browser** (or use the external URL).

3. If successful, you will see the application. Now create the image by entering the prompt, for example then click on the Button
- ```a cat jumping into water```

4. If errors occur, return to the IDE and use Amazon Q Developer to debug.

{{% notice info %}}

 The complete code is available at:
**full_code/image_gen_st_full.py**

{{% /notice %}}

####  Next Steps

For the next exercise, we will **edit images using a prompt**.  
 You can save one of the images you've created or use the image below for practice.

![genimage](/images/3-module2/cat_water_4.png?width=90pc)

---

####  Exercise 2: Build an Image-to-Image App

In this exercise, we will build an app that can **update an image based on a user prompt**.

️ **First, open the file:**
```plaintext
image_examples/image_to_image_st.py
```

 This file already has some code to do image-to-image generation, but **it’s missing some interactive components** to make it fully functional.

 This is where we can take advantage of [inline code suggestions](https://aws.amazon.com/codewhisperer/) ` image_to_image_st.py ` from **Amazon Q Developer** to generate the necessary code.

---

####  Tasks to Complete

 In `image_to_image_st.py`, your task is to **add comments at `# TODO insert your comments` (line 148)** that will help generate the following functionality:

-  `Add a file uploader to upload an image`
-  `Get a user prompt to modify the image`


![genimage](/images/3-module2/code.png?width=90pc)

---

####  How to Use Inline Code Suggestions

- On **Mac**: press `Option + C`
- On **Windows**: press `Alt + C`

 Need help? Try suggestions like those above.


{{% notice info %}}

**Full reference code available at:**
`full_code/image_to_image_st_full.py`

{{% /notice %}}

![genimage](/images/3-module2/cat_mane.png?width=90pc)

---

####  Run Your Code

When you're ready to test, run this command in your Terminal:

```bash
streamlit run image_examples/image_to_image_st.py
```

{{% notice info %}}

Stop it any time using `CTRL + C`

{{% /notice %}}

---

####  Example prompt for a cat image

```plaintext
add a yellow mane to the cat
```

 Make sure to click the button you created. Try experimenting with different prompts!

---

####  In the next exercise, we'll explore more advanced ways to edit images.

---

####  Exercise 3: Build an Image Understanding App

In this part, we’ll explore how to use **Claude 3.5 Sonnet**, Anthropic’s multimodal AI model, to:

- ️ Input an image
-  Receive a detailed text description of the image

We’ll also explore how to use the **/dev feature from Amazon Q Developer** to add new functionality.

---

####  Tasks to Complete

️ Open the file:
```plaintext
image_examples/image_understanding_st.py
```

 This file is missing a few interactive components. You need to:

-  **Display the image** in **column 1**
-  **Add a button** to describe the image using Claude Sonnet

---

####  Use `/dev` in Amazon Q Developer

In the Amazon Q Developer chat window, type:

```plaintext
/dev
```

Once `/dev` is bolded, request:

```plaintext
Can you update image_understanding_st.py to show the image in column 1, and then add a button to describe the image.
```

Amazon Q Developer will:

1.  Create a **feature plan**
2.  Show you the proposed changes
3. ️ Let you click **Generate code**
4.  Allow you to review and then click **Insert code**

 Full reference code available at:
```plaintext
full_code/image_understanding_st_full.py
```


![genimage](/images/3-module2/code2.png?width=90pc)

---

####  Run Your Code

In Terminal, run:

```bash
streamlit run image_examples/image_understanding_st.py
```

 Stop with `CTRL + C`

 Click the button you created and try with different images!

![genimage](/images/3-module2/imagegen2.png?width=90pc)

---

####  Wrap-Up

 Now you know how to use **Amazon Bedrock** to generate and edit images.  
 Next, we’ll explore how to use this tool for **text generation tasks**!


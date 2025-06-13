---
title: "Sử Dụng Amazon Bedrock Playground"
weight: 1
chapter: false
pre: " <b> 3.1 </b> "
---

Amazon Bedrock Playground cung cấp một cách để nhanh chóng thử nghiệm các mô hình nền tảng khác nhau bên trong AWS Console. Bạn có thể so sánh đầu ra của mô hình, tải lời nhắc ví dụ và thậm chí xuất các yêu cầu API. Sau đây là các chế độ được hỗ trợ:

 [Trò chuyện/Văn bản](https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/chat-playground): Thử nghiệm nhiều tác vụ xử lý ngôn ngữ khác nhau trong giao diện từng bước.  
️ [Hình ảnh/Video](https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/image-generation-playground): Dễ dàng tạo ra hình ảnh/video hấp dẫn bằng cách cung cấp lời nhắc văn bản cho các mô hình được đào tạo trước.

 Bạn có thể truy cập sân chơi từ các liên kết ở trên hoặc từ [Amazon Bedrock Console](https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/overview) trong menu **Playgrounds** bên trái. Hãy dành vài phút để thử nghiệm một số ví dụ.

---

####  Ví dụ về sân chơi
Sau đây là một số ví dụ bạn có thể thử ở mỗi sân chơi
####  Trò chuyện/Văn bản

1. Trong **Amazon Bedrock**, chọn : 
- Chọn **Chat / Text** trong **Playgrounds**.
![chat](/images/3-module2/chat.png?width=90pc)
- Chọn **Select model**.
- Chọn **Amazon Nova Pro**. 
- Chọn **Apply**.
![chat](/images/3-module2/chat1.png?width=90pc)

2. Thử lời nhắc hệ thống sau:  
- `You an expert AWS Solutions architect that helps customers create scalable cost efficient solutions on AWS`
- `How can I create a 3 tier web app on AWS?`

![chat](/images/3-module2/chat2.png?width=90pc)


3. Thanh bên có các cấu hình mô hình mà bạn có thể tùy chỉnh. Thử thay đổi **temperature** thành `1` để mô hình trở nên sáng tạo hơn trong phản hồi.

---

#### ️ Hình ảnh

1. Trong **Amazon Bedrock**, chọn : 
- Chọn **Image / Canvas** trong **Playgrounds**.
![chat](/images/3-module2/image.png?width=90pc)
- Chọn **Select model**.
- Chọn **Amazon Nova Canvas**. 
- Chọn **Apply**.
![chat](/images/3-module2/image1.png?width=90pc)

2. Thử một số lời nhắc sau:  
-  `unicorns in a magical forest. Lots of trees and animals around. The mood is bright, and there is lots of natural lighting`  
-  `Downtown City, with lots of skyscrapers. At night time, lots of lights in the buildings.`  

 Amazon Bedrock sẽ tạo ra hình ảnh dựa trên nội dung bạn mô tả.

![chat](/images/3-module2/image2.png?width=90pc)

---

#### ️ Hành động hình ảnh

Với **Nova Canvas**, bạn có thể thực hiện các hành động như:  
 **Xóa nền**,  
️ **Xóa đối tượng**,  
 **Tạo biến thể hình ảnh**.  

Hãy thử chạy một trong các hành động này với hình ảnh bạn đã tạo.

![chat](/images/3-module2/remove.png?width=90pc)

---

####  Tiếp theo

Khi hoàn tất phần thử nghiệm, hãy xem cách chúng ta có thể đưa sức mạnh của **Amazon Bedrock** vào các ứng dụng thực tế bằng cách sử dụng **API**.


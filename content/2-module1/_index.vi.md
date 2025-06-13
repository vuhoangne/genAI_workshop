---
title: "Module 1"
weight: 2
chapter: false
pre: " <b> 2. </b> "
---

#### Xây Dựng Ứng Dụng Generative AI với PartyRock

#### PartyRock là gì?

**PartyRock** là một playground tạo ứng dụng Generative AI có thể chia sẻ, cho phép bạn thử nghiệm kỹ thuật prompt một cách thực tế và thú vị. Chỉ với vài cú nhấp chuột, bạn có thể xây dựng, chia sẻ và tùy biến ứng dụng để khám phá Generative AI.

#### Một số ví dụ ứng dụng:
-  Tạo ứng dụng tạo truyện cười theo chủ đề tuỳ chọn.
-  Tạo và chơi trò chơi đố vui trực tuyến với bạn bè.
-  Tạo AI kể chuyện để dẫn dắt buổi chơi nhập vai kỳ ảo.

![module 1](/images/2-module1/module1.webp?width=90pc)

Thông qua việc xây dựng và chơi với các ứng dụng trên PartyRock, bạn sẽ học được các kỹ thuật quan trọng như:
-  Hiểu cách mô hình nền phản hồi các prompt
- ️ Thử nghiệm kỹ thuật prompt engineering
-  Kết chuỗi prompt để tạo hành vi phức tạp hơn

{{% notice info %}}
  **Lưu ý:** Bạn có thể tạo hồ sơ bằng cách đăng nhập xã hội qua Amazon.com, Apple hoặc Google.  
  PartyRock tách biệt với AWS Console và **không yêu cầu tài khoản AWS**.
{{% /notice %}}

---

#### Bài Tập 1: Xây Dựng Ứng Dụng PartyRock

#### Ứng dụng: MoodWiseBooks

Chúng ta sẽ xây dựng một ứng dụng gợi ý sách dựa trên tâm trạng của bạn.

![module 1](/images/2-module1/module1.webp?width=90pc)

#### Các bước thực hiện:
1. Truy cập [PartyRock website](https://partyrock.aws/)
2. Đăng nhập bằng tài khoản Amazon.com, Apple hoặc Google
3. Nhấn **Generate app**
4. Nhập prompt sau:  
   `Provide book recommendations based on your mood and a chat bot to talk about the books`
5. Nhấn **Generate**

#### Sử Dụng Ứng Dụng

PartyRock sẽ tự động tạo giao diện để:
- Nhận đầu vào từ người dùng
- Đưa ra gợi ý sách
- Bao gồm chatbot để thảo luận về sách

Hãy thử nhập tâm trạng của bạn và nói chuyện với chatbot về các cuốn sách được đề xuất.  
Bạn có thể chia sẻ ứng dụng bằng cách nhấn **Share**.

---

#### Cập Nhật Ứng Dụng

Trong PartyRock, mỗi thành phần giao diện là một **Widget**. Widget có thể:
- Hiển thị nội dung
- Nhận đầu vào từ người dùng
- Kết nối với widget khác
- Tạo đầu ra

#### ️Các loại Widget có hỗ trợ AI:
1. ️ Tạo hình ảnh
2.  Chatbot
3.  Tạo văn bản

Bạn có thể chỉnh sửa các widget AI để thay đổi hành vi và kết quả.

#### Các loại widget khác:
-  **User input** – Cho phép người dùng tương tác
-  **Static text** – Hiển thị mô tả hoặc hướng dẫn
-  **Document upload** – Nhận tài liệu từ người dùng

 Tham khảo thêm tại [PartyRock Guide](https://partyrock.aws/guide)

---

#### Bài Tập 2: Vui Chơi với PartyRock

- Thử thay đổi prompt trong ứng dụng của bạn.
- Thử nghiệm kết chuỗi đầu ra từ widget này làm đầu vào cho widget khác.
- Thêm widget vẽ ảnh từ gợi ý sách 

---

#### Remix Ứng Dụng

Tính năng **Remix** giúp bạn:
- Tạo bản sao ứng dụng về tài khoản cá nhân
- Tuỳ chỉnh và mở rộng ứng dụng có sẵn
- Remix các app công khai từ [PartyRock Discover page](https://partyrock.aws/discover) hoặc bạn bè

---

#### Tạo Snapshot

Khi có phản hồi thú vị hoặc hài hước:
1. Đảm bảo app của bạn đã bật chế độ public
2. Nhấn **Snapshot** ở góc phải trên
3. Chia sẻ URL chứa đầu vào và đầu ra hiện tại

---

#### Tổng Kết

PartyRock cho phép bạn khám phá và tạo nguyên mẫu ý tưởng Generative AI một cách nhanh chóng.  
Để xây dựng ứng dụng sẵn sàng cho sản xuất, bạn có thể hiện thực hoá ý tưởng bằng **Amazon Bedrock**.


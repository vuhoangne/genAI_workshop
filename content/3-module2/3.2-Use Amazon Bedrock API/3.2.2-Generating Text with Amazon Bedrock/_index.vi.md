---
title: "Tạo Văn Bản với Amazon Bedrock"
weight: 2
chapter: false
pre: " <b> 3.2.2 </b> "
---

Trong mô-đun này, chúng ta sẽ khám phá cách sử dụng **Amazon Bedrock** [Converse API](https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference.html) để tạo các ứng dụng hội thoại cho:

- ️ Tóm tắt văn bản  
-  Phân tích cảm xúc  
-  Hỏi và Đáp (Q&A)

 Converse API cung cấp một API thống nhất hoạt động với tất cả các mô hình Amazon Bedrock hỗ trợ tin nhắn. Điều này có nghĩa là bạn chỉ cần viết mã một lần và có thể sử dụng với các mô hình khác nhau. Nếu mô hình có các tham số suy luận riêng biệt, Converse API cũng cho phép bạn truyền các tham số đó trong một cấu trúc dành riêng cho mô hình.

 Chúng ta sẽ học cách gọi các mô hình nền tảng khác nhau để thực hiện các tác vụ này. Hãy tận dụng **Amazon Q Developer** để hỗ trợ bạn hoàn thành các bài tập.

---

#### ️ Bắt đầu

 Để bắt đầu, chúng ta sẽ cập nhật một script để chạy các ví dụ tạo văn bản. Trong Visual Studio Code IDE của bạn, hãy mở file:  
`text_examples/gen_text.py`

![genimage](/images/3-module2/text1.png?width=90pc)

 Ở đây chúng ta có mã gọi đến các mô hình khác nhau, nhưng thiếu logic để mã hoạt động. Đây là lúc bạn có thể sử dụng **Amazon Q Developer** để biến ý tưởng thành mã có thể chạy được.

 Hiện tại, đoạn mã cho chức năng **tóm tắt văn bản** đã được hoàn thành. Các bài tập sẽ hướng dẫn bạn hoàn thiện phần cho **phân tích cảm xúc** và **Hỏi & Đáp (Q&A)**.

 Bạn có thể chọn bất kỳ mô hình nào được liệt kê ở dòng **58** để giúp hoàn thành các bài tập.

 Mã tham khảo đầy đủ có sẵn tại:  
`full_code/gen_text.py`

---

####  Bài Tập 1: Phân Tích Cảm Xúc với Amazon Bedrock

 Phân tích cảm xúc là phiên bản công nghệ của việc “đọc không khí”. Nó đánh giá cảm xúc hoặc quan điểm ẩn trong một đoạn văn bản. Doanh nghiệp sử dụng để hiểu phản hồi khách hàng, xu hướng thị trường và các cuộc trò chuyện trên mạng xã hội — biến dữ liệu định tính thành thông tin có thể hành động.

 Hiện tại, hàm `sentiment_analysis` (dòng **93**) đang chờ bạn hoàn thiện. Bạn cần điền vào hàm này bằng cách gọi đến một mô hình và tạo một prompt để thực hiện phân tích cảm xúc.

 Bạn có thể xem hàm `summarize_text` (dòng **71**) như một ví dụ mẫu.

Chạy script bằng cách sử dụng lệnh sau trong terminal:  
```bash
python3 text_examples/gen_text.py
```

![genimage](/images/3-module2/text2.png?width=90pc)

 Đoạn văn bản bạn sẽ làm việc với nằm ở dòng 113.

####  Bài Tập 2: Hỏi & Đáp với Amazon Bedrock
 Hệ thống Hỏi và Đáp (Q&A) giống như một trợ lý nghiên cứu cá nhân của bạn. Chúng giúp bạn trích xuất câu trả lời cụ thể từ một lượng lớn thông tin. Điều này cực kỳ hữu ích trong các tình huống như chatbot chăm sóc khách hàng hoặc trích xuất thông tin từ tập dữ liệu lớn.

 Bạn cần hoàn thiện hàm perform_qa (dòng 103) bằng cách gọi đến một mô hình và tạo prompt nhận vào câu hỏi và đoạn văn bản nguồn.

Thực thi script bằng cách nhập lệnh sau trong Terminal và nhấn Enter:

```bash
python3 text_examples/gen_text.py
```

![genimage](/images/3-module2/text3.png?width=90pc)

 Tổng Kết
 Giờ bạn đã có cái nhìn tổng quan về cách sử dụng Amazon Bedrock để xử lý văn bản, hãy cùng khám phá cách sử dụng nó cho các tác vụ video tiếp theo!


---  
title: "Sử dụng Amazon Bedrock Knowledge Bases"  
weight: 2  
chapter: false  
pre: " <b> 4.2. </b> "  
---  

[Amazon Bedrock Knowledge Bases](https://aws.amazon.com/bedrock/knowledge-bases/) cung cấp một dịch vụ RAG (Retrieval Augmented Generation) được quản lý hoàn toàn để truy vấn dữ liệu đã tải lên. Bằng cách chỉ định vị trí dữ liệu trong **Amazon S3**, dịch vụ sẽ:
- Tự động lấy tài liệu,
- Chia nhỏ thành các khối văn bản,
- Chuyển đổi thành embedding,
- Lưu embedding vào cơ sở dữ liệu vector.

Ngoài ra còn có API để xây dựng ứng dụng sử dụng Knowledge Base.

Trong module này, chúng ta sẽ tạo một Knowledge Base sử dụng một phần của tài liệu [AWS Well-Architected Framework](https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html).

---

####  Bài tập 1: Tạo Knowledge Base trong AWS Console

1. Truy cập [Knowledge Base Console](https://us-west-2.console.aws.amazon.com/bedrock/home?region=us-west-2#/knowledge-bases).

![Create](/images/4-module3/create.png?width=90pc)

2. Nhấn nút **Create** (màu cam) và chọn **Knowledge Base with vector store**.

![Create](/images/4-module3/create1.png?width=90pc)

3. Đặt tên mặc định hoặc nhập tên tùy ý → Nhấn **Next**.

![Create](/images/4-module3/create2.png?width=90pc)

4. Nhấn **Browse S3**, chọn bucket có tên chứa **awsdocsbucket** → Nhấn **Next**.

![Create](/images/4-module3/create3.png?width=90pc)

5. Chọn **Titan Embeddings V2** làm mô hình embedding → Để mặc định Vector store → Nhấn **Next**.

![Create](/images/4-module3/create4.png?width=90pc)

6. Cuộn xuống và chọn **Create Knowledge Base**.

![Create](/images/4-module3/create5.png?width=90pc)

> Việc tạo Knowledge Base mất vài phút. Đừng rời khỏi trang này.

 Trong lúc đợi, có thể làm khảo sát tại: [https://pulse.aws/survey/UBCJUUZV](https://pulse.aws/survey/UBCJUUZV)

---

####  Querying a Knowledge Base

Khi Knowledge Base đã sẵn sàng, bạn có thể thử ngay trong giao diện console:

1. Nhấn **Sync** để đồng bộ dữ liệu (mất khoảng 1 phút).

![Sync](/images/4-module3/sync.png?width=90pc)

2. Nhấn **Select Model**, chọn **Amazon Nova Pro** → Nhấn **Apply**.
3. Nhập câu hỏi trong khung **Enter your message here**, ví dụ:
- `Can you explain what a VPC is?`
4. Nhấn **Run** để nhận phản hồi từ mô hình và xem nguồn tài liệu ở mục **Show result details**.

>  Hãy thử nhiều câu hỏi khác để khám phá thêm!

![test](/images/4-module3/test2.png?width=90pc)

---

####  Exercise 2: Using the Knowledge Base API

Bạn cũng có thể truy vấn qua API với 2 phương thức:

- `retrieve`: Trả về các tài liệu liên quan đến câu hỏi.
- `retrieve_and_generate`: Thực hiện RAG workflow với mô hình.

####  Thực hiện:

1. Mở file `rag_examples/kb_rag.py` trong IDE.
2. Cập nhật biến `KB_ID` với ID của Knowledge Base (xem trong phần Overview).

![test](/images/4-module3/test3.png?width=90pc)

3. Chạy lệnh:

```bash
python3 rag_examples/kb_rag.py
```
4. Thử thay đổi biến `QUERY` ở dòng 4 để xem các phản hồi khác nhau.

>  Mã lệnh đang thực hiện quy trình RAG: chuyển câu hỏi thành embedding, truy xuất tài liệu liên quan, và trả lời bằng mô hình.

![test](/images/4-module3/test4.png?width=90pc)

---

####  Wrap up

Sau khi đã tạo Knowledge Base, bước tiếp theo sẽ là **nhúng Knowledge Base này vào một Amazon Bedrock Agent** để xây dựng hệ thống phản hồi tự động thông minh hơn.



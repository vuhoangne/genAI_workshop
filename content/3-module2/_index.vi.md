---
title: "Module 2"
weight: 3
chapter: false
pre: " <b> 3. </b> "
---

#### Sử Dụng Foundation Models trong Amazon Bedrock

####  Tổng Quan

[Amazon Bedrock](https://aws.amazon.com/bedrock/) là một dịch vụ được quản lý hoàn toàn, cho phép bạn lựa chọn các **foundation model (FM)** hiệu suất cao từ các công ty AI hàng đầu như Stability AI, Anthropic và Meta thông qua một API duy nhất. Dịch vụ này cung cấp các năng lực cần thiết để xây dựng ứng dụng **AI tạo sinh (Generative AI)** với:
-  **Bảo mật**
-  **Riêng tư**
-  **Responsible AI**

Vì Amazon Bedrock là **serverless**, bạn không cần quản lý hạ tầng. Bạn có thể tích hợp và triển khai AI tạo sinh vào ứng dụng của mình một cách an toàn thông qua các dịch vụ AWS quen thuộc.

---

####  Mục Tiêu Của Module

Trong module này, bạn sẽ học cách sử dụng Amazon Bedrock thông qua:
- ️ **Giao diện Console**
-  **Giao diện API**

Để tạo:
-  **Văn bản**
- ️ **Hình ảnh**

---

####  Cấp Quyền Truy Cập Mô Hình

Trước khi bắt đầu sử dụng Amazon Bedrock, bạn cần **cấp quyền truy cập các mô hình** cho tài khoản của mình.

#### ️ Các Bước Cấp Quyền:

1. Truy cập trang [Model access](https://us-west-2.console.aws.amazon.com/bedrock/home?region=us-west-2#/modelaccess)
2. Nhấn nút **Enable specific models**
3. Chọn các checkbox dưới đây để kích hoạt các mô hình (việc kích hoạt không tốn phí – bạn chỉ trả tiền cho việc sử dụng):

 **Amazon** (chọn mục này sẽ tự động chọn tất cả các mô hình Amazon)  
 **Anthropic** → Claude 3.5 Sonnet v2, Claude 3.5 Haiku  
 **Meta**  
 **Mistral AI**  
 **Stability AI** → SDXL 1.0  

4. Nhấn **Request model access** để yêu cầu kích hoạt các mô hình

![module2](/images/3-module2/module3.png?width=90pc)

---

####  Theo Dõi Trạng Thái Truy Cập

- Theo dõi trạng thái truy cập của từng mô hình đã chọn  
- Có thể mất vài phút để trạng thái chuyển từ **In Progress** ️ **Access granted**
- Dùng nút  **Refresh** để cập nhật trạng thái

 Đảm bảo tất cả mô hình đã chọn hiển thị trạng thái **Access granted**

---

####  Chúc Mừng!

{{% notice info %}}
Bạn đã cấu hình thành công **Amazon Bedrock**!
{{% /notice %}}


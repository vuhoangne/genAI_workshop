---
title: "Xây dựng Agents cho Amazon Bedrock"
weight: 3
chapter: false
pre: " <b> 4.3. </b> "
---

[Amazon Bedrock Agents](https://aws.amazon.com/bedrock/agents/) giúp bạn xây dựng các trợ lý AI tạo sinh có khả năng phân tích yêu cầu của người dùng thành nhiều bước. Chúng sử dụng hướng dẫn do nhà phát triển cung cấp để tạo kế hoạch phối hợp và sau đó thực hiện nó bằng cách gọi API và truy cập Knowledge Bases để cung cấp câu trả lời cuối cùng cho người dùng.

Trong module này, chúng ta sẽ tạo một **Agent Kiến trúc sư Giải pháp AWS** sử dụng **Knowledge Base** của chúng ta để trả lời các câu hỏi liên quan đến AWS. Chúng ta cũng sẽ tạo một **hành động (action)** để đọc bản ghi từ cơ sở dữ liệu. Vì các mô hình ngôn ngữ lớn (LLM) không được thiết kế để phân tích dữ liệu, tốt hơn là xây dựng một công cụ chuyên dụng (Lambda) mà agent có thể gọi.

---

####  Bài tập 1: Xây dựng Agent Amazon Bedrock

1. Truy cập [Agents Console](https://us-west-2.console.aws.amazon.com/bedrock/home?region=us-west-2#/agents), sau đó nhấp vào **Create Agent**.
2. Điền các thông tin sau:

   - **Name**: `Agent-AWS`
   - **Description**: `Agent AWS là một agent tự động, dựa trên AI giúp khách hàng với kiến thức về AWS bằng cách truy vấn AWS Well-Architected Framework`

   - Để các cài đặt khác mặc định và nhấp vào **Create**.

####  Chi tiết Agent

- Chọn **Amazon Nova Pro** làm mô hình.
- Cung cấp hướng dẫn sau:

- `Bạn là một Kiến trúc sư Giải pháp AWS được chứng nhận chuyên nghiệp. Vai trò của bạn là giúp khách hàng hiểu các phương pháp tốt nhất khi xây dựng trên AWS.`

- Nhấp vào **Save** ở trên cùng.

![agents](/images/4-module3/agents.png?width=90pc)

---

#### ️ Nhóm Hành động (Action Group)

**Hành động (Action)** là một tác vụ mà agent có thể tự động thực hiện bằng cách gọi một hàm Lambda. Một tập hợp các hành động được định nghĩa trong một **Nhóm Hành động (Action Group)**, và một schema OpenAPI định nghĩa tất cả các API trong nhóm. Trong bài tập này, chúng ta sẽ sử dụng một hành động được định nghĩa trước để đọc bản ghi từ cơ sở dữ liệu.

Để tạo nó:

1. Nhấp vào **Add** trong phần **Action group**.
2. Nhập các thông tin sau:
   - **Action Group Name**: `data-processing`
   - **Description**: `Actions to process data`
   - **Action group type**: `Define with API schemas`
   - **Lambda Function**: Chọn một hàm hiện có → `data_process_action`
   - **API Schema**: Chọn một schema OpenAPI hiện có
     - Nhấp vào **Browse S3**, chọn bucket có tên `openapibucket`
     - Chọn tệp `agent_bedrock_schema.json`
     - Nhấp vào **Choose**, sau đó nhấp vào **Create**

![agents](/images/4-module3/agents1.png?width=90pc)

---

####  Tích hợp Knowledge Base

Bây giờ chúng ta sẽ thêm **Knowledge Base** mà chúng ta đã tạo trước đó.

1. Nhấp vào **Add** trong phần **Knowledge Base**.
2. Chọn Knowledge Base đã tạo trước đó.
3. Sử dụng hướng dẫn này:

   - `Truy vấn AWS Well-Architected Framework để trả lời câu hỏi của khách hàng`

4. Nhấp vào **Add** để hoàn tất.

![agents](/images/4-module3/agents2.png?width=90pc)

---

####  Sử dụng Agent

Để kiểm tra Agent trong bảng điều khiển:

1. Nhấp vào **Prepare** trong cửa sổ trò chuyện.
2. Khi đã sẵn sàng, bắt đầu đặt câu hỏi.

Ví dụ:

- `Bạn có thể cho tôi biết gì về S3 buckets?`

Khi Agent trả lời, nhấp vào **Show trace** để xem các bước mà nó đã thực hiện để tạo ra câu trả lời.

![agents](/images/4-module3/agents3.png?width=90pc)

Bạn cũng có thể kiểm tra hành động đọc bản ghi bằng cách hỏi:

- `Bạn có thể giúp tôi với nhiệm vụ xử lý dữ liệu để lấy số lượng bản ghi trong cơ sở dữ liệu sản xuất?`

![agents](/images/4-module3/agents4.png?width=90pc)

---
{{% notice info %}}
️ Có vẻ như chúng ta gặp phải lỗi. Đừng lo lắng—điều này là có chủ đích, và chúng ta sẽ sửa nó trong phần tiếp theo bằng cách sử dụng **Amazon Q** để gỡ lỗi hàm.
{{% /notice %}}


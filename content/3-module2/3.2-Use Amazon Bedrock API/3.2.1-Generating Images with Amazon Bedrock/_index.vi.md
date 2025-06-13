---
title: "Sử dụng Amazon Bedrock API để Tạo Ảnh với Amazon Nova Canvas"
weight: 1
chapter: false
pre: " <b> 3.2.1 </b> "
---

Trong phần này, chúng ta sẽ khám phá cách sử dụng **Amazon Bedrock API** để tạo hình ảnh bằng **Amazon Nova Canvas**. Chúng ta sẽ hoàn thành **ba bài tập mã hóa** để xây dựng các ứng dụng tạo hình ảnh với sự trợ giúp của **Amazon Q Developer**.

####  Giới thiệu về Amazon Nova

[Amazon Nova](https://aws.amazon.com/ai/generative-ai/nova/) là thế hệ tiếp theo của các mô hình nền tảng tiên tiến (FMs) cung cấp trí tuệ vượt trội và hiệu suất giá thành hàng đầu ngành, chỉ có trên Amazon Bedrock.

Bạn có thể sử dụng Amazon Nova để giảm chi phí và độ trễ cho hầu hết các tác vụ AI sinh. Nó hỗ trợ phân tích tài liệu và video phức tạp, hiểu sơ đồ, tạo nội dung video hấp dẫn và xây dựng các tác nhân AI tinh vi được tối ưu hóa cho công việc doanh nghiệp.

Cho dù bạn đang phát triển ứng dụng xử lý tài liệu văn bản và hình ảnh, tạo nội dung tiếp thị ở quy mô lớn, hay xây dựng trợ lý AI có thể hiểu và xử lý thông tin trực quan, Amazon Nova đều cung cấp trí tuệ và tính linh hoạt cần thiết thông qua hai loại mô hình:

- **Mô hình Hiểu (Understanding Models)**: Nhận đầu vào là văn bản, hình ảnh hoặc video và tạo đầu ra là văn bản.
- **Mô hình Tạo Sáng Tạo (Creative Generation Models)**: Nhận đầu vào là văn bản và/hoặc hình ảnh và tạo đầu ra là hình ảnh hoặc video.

---

####  Amazon Nova Canvas

[Amazon Nova Canvas](https://aws.amazon.com/ai/generative-ai/nova/creative/) là một mô hình tạo hình ảnh hiện đại giúp tạo ra hình ảnh chuyên nghiệp từ văn bản hoặc hình ảnh người dùng cung cấp. Nó cũng bao gồm các công cụ chỉnh sửa hình ảnh dễ sử dụng thông qua hướng dẫn bằng văn bản, cũng như các điều khiển để điều chỉnh bảng màu và bố cục.

Mô hình này bao gồm các tính năng an toàn tích hợp cho việc sử dụng AI có trách nhiệm, như đóng dấu bản quyền và kiểm duyệt nội dung.

---

####  Bài Tập 1: Xây dựng Ứng dụng Từ Văn Bản Thành Hình Ảnh

Chúng ta sẽ bắt đầu bằng cách tạo một ứng dụng [Streamlit](https://streamlit.io/) để tạo ảnh từ lời nhắc người dùng và các phong cách được định sẵn. Streamlit cho phép bạn dễ dàng xây dựng các ứng dụng web tương tác bằng Python.

####  Mục tiêu

Xây dựng ứng dụng cho phép người dùng:
- Chọn mô hình.
- Nhập lời nhắc để gửi tới Amazon Bedrock.
- Hiển thị hình ảnh được tạo.

Ứng dụng cuối cùng sẽ như sau: **Gen Image App**

![genimage](/images/3-module2/imagegen1.png?width=90pc)

####  Bắt Đầu

Trong **Visual Studio Code IDE**, mở tệp:  
`image_examples/image_gen_st.py`

Tệp này chứa mã để gọi các mô hình khác nhau nhưng thiếu các thành phần giao diện tương tác. Đây là lúc **Amazon Q Developer** sẽ giúp biến ý tưởng thành mã thực thi.

---

####  Amazon Q Developer - Viết Mã

Vì chúng ta đã biết chức năng dự định của ứng dụng, hãy yêu cầu **Amazon Q** cập nhật ứng dụng với nội dung sau:

```bash
Can you add the following to my application:

1. A text input box to capture user prompts.
2. A standalone function that can turn a base64 string into an image.
3. A button to call `generate_image_nova`
4. The image return will be a base64 string; use the standalone function to convert it to an image that can be displayed in Streamlit. 
```

![genimage](/images/3-module2/gen1.png?width=90pc)

Amazon Q Developer sẽ xử lý yêu cầu và cung cấp mã được cập nhật cho tệp.

---

####  Amazon Q Developer - Hiểu Mã

Để hiểu chức năng của mã:
- Bôi đen đoạn mã.
- Nhấp chuột phải và chọn: **Send to Amazon Q → Explain**.

Q Developer sẽ trả lại giải thích chi tiết về mã.

![genimage](/images/3-module2/gen2.png?width=90pc)

---

#### Chạy Mã

Để kiểm tra mã của bạn:

1. Chạy từ terminal:

```bash
streamlit run image_examples/image_gen_st.py
```

2. Nhấp vào **Open in Browser** (hoặc dùng URL ngoài).

3. Nếu thành công, bạn sẽ thấy ứng dụng. Hãy tạo hình ảnh bằng cách nhập lời nhắc, ví dụ:
- `a cat jumping into water` và nhấp vào nút.

4. Nếu có lỗi, quay lại IDE và sử dụng Amazon Q Developer để gỡ lỗi.

>  Mã đầy đủ có tại: `full_code/image_gen_st_full.py`

---

####  Bước tiếp theo

Trong bài tập tiếp theo, chúng ta sẽ **chỉnh sửa hình ảnh bằng một lời nhắc (prompt)**.  
 Bạn có thể lưu lại một trong các hình ảnh đã tạo trước đó hoặc sử dụng hình ảnh bên dưới để thực hành.

![genimage](/images/3-module2/cat_water_4.png?width=90pc)

---


####  Bài Tập 2: Xây dựng Ứng dụng Từ Hình Ảnh Thành Hình Ảnh

Trong bài tập này, ch###  Bài tập 2: Xây dựng ứng dụng Chuyển Đổi Ảnh (Image-to-Image App)

Trong bài tập này, chúng ta sẽ xây dựng một ứng dụng có thể **chỉnh sửa ảnh dựa trên lời nhắc từ người dùng**.

️ **Trước tiên, hãy mở tệp sau:**
```plaintext
image_examples/image_to_image_st.py
```

 Tệp này đã có một số đoạn mã dùng để chuyển đổi ảnh, nhưng **vẫn thiếu một số thành phần tương tác** để hoạt động một cách đầy đủ.

 Đây là lúc bạn có thể tận dụng tính năng [gợi ý mã trực tiếp](https://aws.amazon.com/codewhisperer/) trong `image_to_image_st.py` từ **Amazon Q Developer** để tạo phần mã còn thiếu.

---

####  Nhiệm vụ cần hoàn thành

 Trong tệp `image_to_image_st.py`, nhiệm vụ của bạn là **thêm các chú thích tại dòng `# TODO insert your comments` (dòng 148)** để hỗ trợ sinh ra các chức năng sau:

-  `Thêm thành phần để người dùng tải ảnh lên`
-  `Thêm ô nhập lời nhắc (prompt) để người dùng yêu cầu chỉnh sửa ảnh`

![genimage](/images/3-module2/code.png?width=90pc)

---

####  Cách sử dụng gợi ý mã trực tiếp (Inline Code Suggestions)

- Trên **Mac**: nhấn `Option + C`  
- Trên **Windows**: nhấn `Alt + C`

 Cần trợ giúp? Hãy thử nhập các gợi ý như ở trên để Amazon Q Developer hỗ trợ bạn.

{{% notice info %}}

**Mã tham khảo đầy đủ có sẵn tại:**
`full_code/image_to_image_st_full.py`

{{% /notice %}}

![genimage](/images/3-module2/cat_mane.png?width=90pc)

---

####  Chạy mã của bạn

Khi đã sẵn sàng kiểm tra ứng dụng, hãy chạy lệnh sau trong Terminal:

```bash
streamlit run image_examples/image_to_image_st.py
```

{{% notice info %}}

Dừng ứng dụng bất cứ lúc nào bằng `CTRL + C`

{{% /notice %}}

---

####  Ví dụ về lời nhắc chỉnh sửa ảnh mèo

```plaintext
add a yellow mane to the cat
```

 Nhớ nhấn vào nút mà bạn đã tạo để thực hiện yêu cầu. Hãy thử với các lời nhắc khác nhau để khám phá!

---

####  Trong bài tiếp theo, chúng ta sẽ tìm hiểu cách chỉnh sửa ảnh nâng cao hơn.

---

####  Bài tập 3: Xây dựng ứng dụng Hiểu Ảnh (Image Understanding App)

Trong phần này, chúng ta sẽ khám phá cách sử dụng **Claude 3.5 Sonnet**, mô hình AI đa phương thức của Anthropic, để:

- ️ Nhập một ảnh
-  Nhận mô tả chi tiết dạng văn bản về ảnh đó

Chúng ta cũng sẽ khám phá cách sử dụng **tính năng /dev của Amazon Q Developer** để thêm chức năng mới.

---

####  Nhiệm vụ cần hoàn thành

️ Mở tệp:
```plaintext
image_examples/image_understanding_st.py
```

 Tệp này còn thiếu một số thành phần tương tác. Bạn cần:

-  **Hiển thị ảnh** ở **cột 1**
-  **Thêm nút bấm** để mô tả ảnh bằng Claude Sonnet

---

####  Sử dụng `/dev` trong Amazon Q Developer

Trong cửa sổ chat Amazon Q Developer, nhập:

```plaintext
/dev
```

Khi `/dev` được in đậm, yêu cầu:

```plaintext
Can you update image_understanding_st.py to show the image in column 1, and then add a button to describe the image.
```

Amazon Q Developer sẽ:

1.  Tạo **kế hoạch tính năng**
2.  Hiển thị các thay đổi đề xuất
3. ️ Cho phép bạn bấm **Generate code**
4.  Cho phép bạn xem lại và bấm **Insert code**

 Mã tham khảo đầy đủ có tại:
```plaintext
full_code/image_understanding_st_full.py
```

![genimage](/images/3-module2/code2.png?width=90pc)

---

####  Chạy mã của bạn

Trong Terminal, chạy:

```bash
streamlit run image_examples/image_understanding_st.py
```

 Dừng bằng `CTRL + C`

 Nhấn nút bạn đã tạo và thử với các ảnh khác nhau!

![genimage](/images/3-module2/imagegen2.png?width=90pc)

---

####  Kết luận

 Giờ bạn đã biết cách sử dụng **Amazon Bedrock** để tạo và chỉnh sửa ảnh.  
 Tiếp theo, chúng ta sẽ khám phá cách dùng công cụ này cho các tác vụ **tạo văn bản**!


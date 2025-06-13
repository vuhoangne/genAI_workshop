---
title: "Retrieval Augmented Generation với Amazon Bedrock"
weight: 1
chapter: false
pre: " <b> 4.1. </b> "
---

Trước khi đi sâu vào quy trình RAG, điều quan trọng là phải hiểu về **embeddings**. Embeddings biểu diễn tài liệu dưới dạng các vector trong không gian đa chiều. Các vector này nắm bắt bản chất của nội dung ở định dạng mà máy tính có thể xử lý. Bằng cách chuyển đổi văn bản thành embeddings, chúng ta cho phép máy tính "hiểu" và so sánh các đoạn văn bản khác nhau dựa trên sự tương đồng về ngữ cảnh của chúng.

![embed](/images/4-module3/embed1.png?width=90pc)

####  Trực quan hóa Embedding

Sau khi embeddings được tạo ra, bước tiếp theo là lưu trữ và tổ chức chúng để truy xuất hiệu quả. Đây là lúc **cơ sở dữ liệu vector** phát huy tác dụng. Cơ sở dữ liệu vector cho phép chúng ta lưu trữ và truy vấn embeddings, tạo điều kiện cho việc truy xuất nhanh chóng và phù hợp các tài liệu dựa trên biểu diễn vector của chúng. Về cơ bản, nó đóng vai trò như cầu nối giữa dữ liệu thô và những hiểu biết có thể hành động được từ các mô hình ngôn ngữ lớn (LLMs). Trong module này, chúng ta sẽ sử dụng **FAISS**.

#### ️ Tăng cường RAG với Amazon Bedrock

Với nền tảng embeddings và cơ sở dữ liệu vector, chúng ta đã sẵn sàng triển khai quy trình RAG sử dụng **Amazon Bedrock**. Phần này trình bày cách sử dụng các mô hình ngôn ngữ lớn để xử lý các truy vấn đầu vào, truy xuất embeddings tài liệu liên quan từ cơ sở dữ liệu vector và tạo ra các phản hồi mạch lạc, phù hợp với ngữ cảnh bằng LLMs. Chúng ta cũng sẽ tận dụng **LangChain**, một framework được thiết kế để đơn giản hóa việc xây dựng các ứng dụng sử dụng LLM.

---

####  Bài tập 1: Bắt đầu với RAG

Mở `rag_examples/base_rag.py`. Hãy xem qua mã để hiểu cách RAG hoạt động.

Chúng ta bắt đầu với danh sách các câu ví dụ (dòng 15):

```python
sentences = [
    # Pets
    "Your dog is so cute.",
    "How cute your dog is!",
    "You have such a cute dog!",
    # Cities in the US
    "New York City is the place where I work.",
    "I work in New York City.",
    # Color
    "What color do you like the most?",
    "What is your favorite color?",
]
```

 Bây giờ hãy xem cách triển khai quy trình RAG trong ```rag_with_bedrock``` (dòng 60)

1. **Tạo Bedrock Embeddings**
 Chúng ta khởi tạo hàm embedding bằng cách gọi **BedrockEmbeddings**.
 Chúng ta đang sử dụng mô hình embedding văn bản Amazon Titan để chuyển đổi văn bản thành định dạng vector để so sánh tương đồng.

```python
embeddings = BedrockEmbeddings(
    client=bedrock_runtime,
    model_id="amazon.titan-embed-text-v1",
)
```

2. **Tìm kiếm Vector với FAISS**
Chúng ta tạo một kho lưu trữ vector cục bộ bằng FAISS.from_texts, lập chỉ mục các embeddings câu
vào cơ sở dữ liệu vector có thể tìm kiếm. Sau đó, chúng ta có thể vector hóa một truy vấn và truy xuất các tài liệu tương tự.

```python
local_vector_store = FAISS.from_texts(sentences, embeddings)
docs = local_vector_store.similarity_search(query)
```

3. **Gọi RAG Prompt**: Chúng ta biên soạn nội dung của các tài liệu đã truy xuất để tạo thành một chuỗi ngữ cảnh. Sau đó, chúng ta tạo một prompt bao gồm ngữ cảnh và truy vấn. Cuối cùng, chúng ta gọi hàm call_claude với prompt của chúng ta để nhận câu trả lời.

```python
for doc in docs:
    context += doc.page_content

prompt = f"""Use the following pieces of context to answer the question at the end.

{context}

Question: {query}
Answer:"""

model_id = "us.amazon.nova-lite-v1:0"
system_prompts = [{"text": "You are a helpful AI"}]
message_1 = {
    "role": "user",
    "content": [{"text": f"{prompt}"}],
}
messages = [message_1]

result = generate_conversation(model_id, system_prompts, messages)
return result
```
Để kiểm tra mã, hãy chạy:

- `python3 rag_examples/base_rag.py`

 Thử thay đổi truy vấn ở dòng 109. Ví dụ:
- thử `What city do I work in?`

![rag](/images/4-module3/rag.png?width=90pc)

####  Bài tập 2: Trò chuyện với PDF
Có một ví dụ khác về cách trò chuyện với PDF. Trong `rag_examples/chat_with_pdf.py`, chúng ta có hàm `chunk_doc_to_text` sẽ tiếp nhận PDF và chia nhỏ mỗi 1000 ký tự để lưu trữ trong cơ sở dữ liệu vector. Quá trình này có thể mất một thời gian tùy thuộc vào máy chủ, vì vậy chúng tôi đã chia nhỏ dữ liệu được lưu trữ trong thư mục `local_index`.

 Trong ví dụ này, chúng tôi đã lưu trữ tất cả văn bản từ [AWS Well Architected Framework](https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html), tài liệu nêu bật các phương pháp tốt nhất để thiết kế và vận hành các hệ thống đáng tin cậy, an toàn, hiệu quả, tiết kiệm chi phí và bền vững trên đám mây.

Bây giờ hãy thử chạy mã bằng cách nhập lệnh sau vào Terminal và nhấn Enter:

```bash
python3 rag_examples/chat_with_pdf.py
```

 Bạn có thể thay đổi truy vấn ở dòng 123. Hãy thử nghiệm để xem mô hình có thể sử dụng ngữ cảnh để tìm ra câu trả lời chính xác như thế nào. Ví dụ, hãy thử:
- `What are some good use cases for non-SQL databases?`
- `What is the Well-Architected Framework?`
- `How can I improve security in the cloud?`

 Bạn thậm chí có thể thử các câu hỏi ngoài chủ đề như `what are popular ice cream flavors` để xem mô hình xử lý các câu hỏi ngoài ngữ cảnh như thế nào.

![rag](/images/4-module3/rag1.png?width=90pc)

####  Tổng kết

 Giờ đây bạn đã có cái nhìn tổng quan về việc sử dụng Amazon Bedrock cho RAG, hãy cùng khám phá cách tạo quy trình RAG có thể mở rộng.


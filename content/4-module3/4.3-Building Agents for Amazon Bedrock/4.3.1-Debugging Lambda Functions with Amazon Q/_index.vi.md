---
title: "Gỡ lỗi hàm Lambda với Amazon Q"
weight: 1
chapter: false
pre: " <b> 4.3.1 </b> "
---

#### ️ Gỡ lỗi các hàm Lambda với Amazon Q

[AWS Lambda](https://aws.amazon.com/lambda/) là một dịch vụ điện toán không máy chủ cho phép bạn chạy các ứng dụng và dịch vụ mà không cần cung cấp hoặc quản lý máy chủ. Nó tự động xử lý tài nguyên tính toán cơ bản, giúp bạn tập trung vào mã của mình và dễ dàng mở rộng quy mô.

Trong phần này, bạn sẽ cố tình cập nhật hàm Lambda `data_process_action` với một số lỗi. Mục tiêu là sử dụng **Amazon Q** để gỡ lỗi và sửa các lỗi này.

---

####  Bắt đầu

1. Mở [hàm Lambda `data_process_action`](https://us-west-2.console.aws.amazon.com/lambda/home?region=us-west-2#/functions/data_process_action?tab=code) trong bảng điều khiển AWS Lambda.
2. Nhấn nút **Test** để gọi hàm.
3. Trong cửa sổ cấu hình sự kiện kiểm tra:
   - Nhập tên sự kiện, ví dụ: `test-event`.
   - Dán đoạn JSON sau để mô phỏng cuộc gọi từ Agent:

```json
{
  "agent": {
    "alias": "TSTALIASID",
    "name": "Agent-AWS",
    "version": "DRAFT",
    "id": "ADI6ICMMZZ"
  },
  "sessionId": "975786472213626",
  "httpMethod": "GET",
  "sessionAttributes": {},
  "inputText": "Can you get the number of records in the databse",
  "promptSessionAttributes": {},
  "apiPath": "/get_num_records",
  "messageVersion": "1.0",
  "actionGroup": "agent_action_group"
}
```

4. Nhấn lại **Test** để chạy hàm.

---

#### ‍ Lỗi đầu tiên

Lần chạy đầu tiên có thể bị lỗi do thiếu các thư viện cần thiết. Đừng lo — **Amazon Q** trong bảng điều khiển sẽ hỗ trợ bạn:

1. Nhấn vào **biểu tượng Q** ở thanh bên phải màn hình để mở cửa sổ trò chuyện với Amazon Q.
2. Đặt câu hỏi:

- `Làm sao để thêm AWS Lambda layer pandas chính thức vào hàm Lambda mà không dùng CLI?`

3. Làm theo hướng dẫn của Q để tích hợp **Lambda Layer có sẵn chứa thư viện Pandas**.

![debug1.png](/images/4-module3/debug1.png?width=90pc)

---

####  Gỡ lỗi chuyên sâu với Amazon Q

Ngoài cửa sổ trò chuyện, bạn có thể sử dụng chức năng **Troubleshoot with Amazon Q** (Gỡ lỗi với Amazon Q) để nhận hỗ trợ cụ thể hơn:

1. Trong bảng điều khiển Lambda, ở tab **Test**, nhấn **Test** để chạy lại hàm.
2. Khi lỗi mới xuất hiện, nhấn nút **Troubleshoot with Amazon Q**.

![debug2.png](/images/4-module3/debug2.png?width=90pc)

3. Nhấn **Help me resolve** để nhờ Q đưa ra giải pháp.
4. Làm theo các đề xuất của Q như:
   - Cập nhật biến môi trường `S3_OBJECT` nếu cần.
     - Tên tệp nên là: `clickstream_data.csv`
   - Sửa các lỗi logic khác trong mã nếu có, dưới sự hướng dẫn của Q.

![debug3.png](/images/4-module3/debug3.png?width=90pc)

---

####  Sau khi sửa lỗi

- Kiểm tra lại hàm Lambda để đảm bảo lỗi đã được xử lý.
- Tiếp tục sử dụng **Troubleshoot with Q** cho từng lỗi nếu vẫn còn phát sinh.
- Khi chạy thành công, hàm sẽ trả về kết quả xử lý dữ liệu chính xác và không có lỗi.

![debug4.png](/images/4-module3/debug4.png?width=90pc)

---

**Cần trợ giúp? Đây là những việc cần làm tiếp theo**

- Cập nhật biến môi trường S3_OBJECT thành clickstream_data.csv
- Sửa lỗi đánh máy trong đường dẫn tệp (thay /tmp/data,csv bằng /tmp/data.csv) trong mã hàm Lambda.
- Thay đổi length thành len trong mã hàm Lambda

**Đây là mã hoàn chỉnh để tham khảo**

```python
import os
import json
import pandas
import boto3

S3_BUCKET = os.environ["S3_BUCKET"]
S3_OBJECT = os.environ["S3_OBJECT"]

def lambda_handler(event, context):
    # Print the received event to the logs
    print("Received event: ")
    print(event)

    # Initialize response code to None
    response_code = None

    # Extract the action group, api path, and parameters from the prediction
    action = event["actionGroup"]
    api_path = event["apiPath"]
    inputText = event["inputText"]
    httpMethod = event["httpMethod"]

    print(f"inputText: {inputText}")

    # Check the api path to determine which tool function to call
    if api_path == "/get_num_records":
        s3 = boto3.client("s3")
        s3.download_file(S3_BUCKET, S3_OBJECT, "/tmp/data.csv")
        df = pandas.read_csv("/tmp/data.csv")

        # Get count of dataframe
        count = len(df)

        response_body = {"application/json": {"body": str(count)}}
        response_code = 200
    else:
        # If the api path is not recognized, return an error message
        body = {"{}::{} is not a valid api, try another one.".format(action, api_path)}
        response_code = 400
        response_body = {"application/json": {"body": str(body)}}

    # Print the response body to the logs
    print(f"Response body: {response_body}")

    # Create a dictionary containing the response details
    action_response = {
        "actionGroup": action,
        "apiPath": api_path,
        "httpMethod": httpMethod,
        "httpStatusCode": response_code,
        "responseBody": response_body,
    }

    # Return the list of responses as a dictionary
    api_response = {"messageVersion": "1.0", "response": action_response}

    return api_response
```

####  Kiểm tra Agent

Khi hàm Lambda đã được sửa, quay lại Agent và hỏi lại:

- `Can you help with the data processing task of getting the number of records in the production database?`

Lần này, Agent sẽ trả lời chính xác. Bạn cũng có thể xem **trace** để theo dõi cách Agent "suy nghĩ" qua các bước để tạo ra câu trả lời chính xác.

![debug5.png](/images/4-module3/debug5.png?width=90pc)

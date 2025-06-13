---
title: "Dọn dẹp tài nguyên"
weight: 6
chapter: false
pre: " <b> 6. </b> "
---

{{% notice info %}}
 ️ **Lưu ý**: Nếu bạn đang sử dụng tài khoản do AWS cung cấp, bạn có thể bỏ qua phần này.
{{% /notice %}}

Để tránh phát sinh chi phí không cần thiết, hãy thực hiện các bước dưới đây để xóa tất cả các tài nguyên bạn đã tạo trong suốt quá trình làm workshop.

---

####  Xóa đối tượng và Bucket trong S3
1. Truy cập **S3 Console**.
2. Xóa tất cả các đối tượng trong các bucket sau:
   - `awsdocsbucket`
   - `openapiBucket`
   - `dataanalysisbucket`
3. Làm theo [hướng dẫn này](https://docs.aws.amazon.com/AmazonS3/latest/userguide/delete-objects.html) để xóa đối tượng.
4. Sau khi đã làm trống, xóa luôn các bucket đó.

---

####  Xóa IAM Roles
1. Truy cập [IAM Console](https://console.aws.amazon.com/iam/).
2. Trong thanh điều hướng, chọn **Roles**.
3. Chọn các role sau:
   - `AmazonBedrockExecutionRoleForAgents_*`
   - `AmazonBedrockExecutionRoleForKnowledgeBase_*`
   - `AWSServiceRoleForAmazonOpenSearchServerless`
4. Nhấn **Delete** ở phía trên trang.

---

####  Xóa Knowledge Base
1. Truy cập [Knowledge Base Console](https://us-west-2.console.aws.amazon.com/bedrock/home?region=us-west-2#/knowledge-bases).
2. Chọn Knowledge Base cần xóa.
3. Nhấn **Delete**.
4. Gõ `delete` để xác nhận.

---

####  Xóa Agent
1. Truy cập [Agent Console](https://us-west-2.console.aws.amazon.com/bedrock/home?region=us-west-2#/agents).
2. Chọn Agent cần xóa.
3. Nhấn **Delete**.
4. Gõ `delete` để xác nhận.

---

####  Xóa Vector Database (OpenSearch Collection)
1. Truy cập [OpenSearch Collections Console](https://us-west-2.console.aws.amazon.com/aos/home?region=us-west-2#opensearch/collections).
2. Chọn Collection cần xóa.
3. Nhấn **Delete**.
4. Gõ `confirm` để xác nhận.

---

####  Xóa CloudFormation Stack
1. Truy cập [CloudFormation Console](https://console.aws.amazon.com/cloudformation).
2. Tại trang **Stacks**, chọn stack: `gen-ai-workshop-cfn`.
3. Trong phần chi tiết, chọn **Delete**.
4. Xác nhận bằng cách chọn **Delete stack** khi được yêu cầu.


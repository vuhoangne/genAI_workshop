---
title: "Hiểu Video với Amazon Bedrock"
weight: 3
chapter: false
pre: " <b> 3.2.3 </b> "
---

Trong phần này, chúng ta sẽ tìm hiểu cách tận dụng [Amazon Nova](https://aws.amazon.com/ai/generative-ai/nova/) để phân tích và hiểu nội dung video.

---

####  Bài tập 1: Hiểu Video

Trong bài tập này, chúng ta sẽ khám phá cách sử dụng các mô hình hiểu của Amazon Nova để phân tích nội dung video. Hãy tưởng tượng bạn đang xây dựng một **hệ thống quản lý nội dung** tự động tạo ra các tiêu đề hấp dẫn cho nội dung video. Điều này có thể hữu ích cho:

- Một công ty truyền thông xử lý số lượng lớn video  
- Một nhóm tiếp thị tổ chức tài sản video  
- Một nền tảng học trực tuyến phân loại video giáo dục  

Chúng ta sẽ tạo một script phân tích [tệp MP4](https://d2908q01vomqb2.cloudfront.net/artifacts/AWSNews/2024/AWSNEWS-1259-nova-pro-input-video.mp4?_=1) về biển và sử dụng khả năng hiểu nâng cao của Nova để tạo ra **các tiêu đề sáng tạo và phù hợp** dựa trên nội dung video. Điều này thể hiện khả năng của Nova trong việc hiểu thông tin hình ảnh phức tạp và tạo ra văn bản giống con người.

---

####  Bắt đầu

Mở tệp:

```plaintext
video_examples/video_understanding.py
```

Tệp này đã chứa mã để nhập video và gửi yêu cầu đến Amazon Nova. Tuy nhiên, nó **còn thiếu định dạng dữ liệu chính xác** để gửi video đến Amazon Bedrock.

Đây là lúc bạn có thể sử dụng **Amazon Q Developer** để thực hiện chỉnh sửa trực tiếp nhanh chóng để hoàn thành chức năng còn thiếu.

---

####  Sử dụng Amazon Q Developer để Chỉnh sửa Trực tiếp

Để hoàn thành chức năng định dạng video:

1. Bôi đen hàm `encode_video_to_base64` ở dòng 17  
2. Nhấn `⌘ + I` trên Mac hoặc `Ctrl + I` trên Windows  
3. Nhập lệnh sau:

```plaintext
Finish the TODO and return the correct data
```

![vid1](/images/3-module2/vid1.png?width=90pc)

---

#### Chạy Mã của Bạn

Khi bạn đã sẵn sàng để kiểm tra script:

```bash
cd video_examples
python3 video_understanding.py
```

Nếu thành công, bạn sẽ thấy **các tiêu đề được tạo ra cho video của bạn**.

Nếu gặp lỗi, hãy sử dụng **Amazon Q Developer** để giúp gỡ lỗi.

 Bạn cũng có thể tham khảo giải pháp hoàn chỉnh tại đây:

```plaintext
full_code/video_understanding_full.py
```

![vid2](/images/3-module2/vid2.png?width=90pc)

---

####  Khám phá Khả năng của Nova

Khi triển khai cơ bản hoạt động, hãy thử nghiệm với các lệnh khác nhau để khám phá sức mạnh của Nova:

- Tạo **tóm tắt video chi tiết** để phân loại nội dung  
- Tạo **mô tả hấp dẫn** cho mạng xã hội  
- Tạo **phân tích từng cảnh** cho việc chỉnh sửa video  
- Trích xuất **các khoảnh khắc hoặc điểm nổi bật chính** để xem trước nhanh  
- Tạo **thẻ nội dung** để cải thiện khả năng tìm kiếm  

Các trường hợp sử dụng này cho thấy cách Nova có thể được tích hợp vào các **quy trình công việc và kịch bản tự động hóa nội dung** khác nhau.

---

####  Tổng kết

Giờ đây bạn đã có kinh nghiệm sử dụng **Amazon Bedrock** để **hiểu video** và **tạo văn bản**, chúng ta sẽ chuyển sang một trong những trường hợp sử dụng phổ biến nhất trong AI Tạo sinh:

> **Trò chuyện với tài liệu của bạn** ️

Phần tiếp theo này sẽ dựa trên những gì bạn đã học và chỉ cho bạn cách tạo **trải nghiệm tương tác với nội dung dựa trên tài liệu**.


# Script để cập nhật tất cả các hình ảnh trong các file markdown
# Thêm tham số ?width=90pc vào tất cả các hình ảnh

$contentDir = "c:\GenAIbuildingws\content"
$files = Get-ChildItem -Path $contentDir -Recurse -Include "*.md"

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw
    
    # Tìm và thay thế tất cả các hình ảnh không có tham số width
    $updatedContent = $content -replace '!\[(.*?)\]\((.*?\.(?:png|jpg|jpeg|gif|webp))\)', '![$1]($2?width=90pc)'
    
    # Tránh thêm ?width=90pc hai lần
    $updatedContent = $updatedContent -replace '\?width=90pc\?width=90pc', '?width=90pc'
    
    # Lưu nội dung đã cập nhật
    Set-Content -Path $file.FullName -Value $updatedContent
    
    Write-Host "Đã cập nhật file: $($file.FullName)"
}

Write-Host "Hoàn tất cập nhật tất cả các hình ảnh!"

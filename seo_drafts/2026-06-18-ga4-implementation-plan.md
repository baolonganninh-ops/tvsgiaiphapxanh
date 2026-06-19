# Cài đặt Google Analytics GA4 — Kế hoạch thực thi

## Thông tin cơ bản
- **Ngày phác thảo:** 2026-06-18
- **Trạng thái:** ⏳ Chờ duyệt (KHÔNG tự động publish)
- **Thực thi:** Cron 21:00 ngày 19/06/2026 (tự động)

## Thông tin GA4
- **Measurement ID:** G-Q04NF8X8Y0
- **Loại:** gtag.js (Google Tag)
- **Vị trí chèn:** Ngay sau thẻ `<head>` (best practice)

## Script chuẩn GA4 (gtag.js)
```html
<!-- Google Analytics GA4 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-Q04NF8X8Y0"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-Q04NF8X8Y0');
</script>
<!-- End Google Analytics -->
```

## Danh sách 5 trang cần cài đặt
| # | File | Trạng thái |
|---|------|------------|
| 1 | `index.html` | Trang chủ |
| 2 | `dich-vu.html` | Dịch vụ tổng quát |
| 3 | `dich-vu-bao-ve-su-kien.html` | Pillar 1: Sự kiện |
| 4 | `dich-vu-bao-ve-le-tet.html` | Pillar 2: Lễ Tết |
| 5 | `dich-vu-bao-ve-cong-trinh.html` | Pillar 3: Công trình |

## Quy trình tự động (Cron 21:00)
1. Clone repo `baolonganninh-ops/tvsgiaiphapxanh` ra thư mục tạm
2. Đọc nội dung từng file HTML
3. Tìm thẻ `<head>` → chèn GA4 script ngay sau
4. Kiểm tra không trùng lặp (chưa có G-Q04NF8X8Y0)
5. Commit & push lên `main` branch
6. Verify deployment trên GitHub Pages
7. Gửi báo cáo kết quả qua Telegram

## Kiểm tra sau khi triển khai
- ✅ Realtime GA4: truy cập trang → thấy 1 active user (mình)
- ✅ Network tab: request đến `collect?v=2&tid=G-Q04NF8X8Y0`
- ✅ Console: không lỗi JS
- ✅ View page source: script nằm ngay sau `<head>`

## Lưu ý
- Không ghi đè tracking cũ (nếu có)
- Không dùng GTM container — dùng gtag.js trực tiếp
- Cross-domain tracking: không cần (chỉ 1 domain)

---
**Người tạo:** TVS SEO Expert 🦝
**Chờ phê duyệt từ:** Sếp Thuan
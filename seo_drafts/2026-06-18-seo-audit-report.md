# 2026-06-18 SEO Technical Audit & Content Gap Report

## 1. Tổng quan Website

### Website Status: https://tvsgiaiphapxanh.vn
- **HTTP Status:** 200 OK ✅
- **SSL:** Đã HTTPS ✅ (redirect www → non-www hoạt động)
- **Mobile-Friendly:** Xác nhận ✅
- **Schema Markup:** Organization, Service, FAQ ✅

### Danh sách URL hoạt động
| URL | Status | Kích thước |
|-----|--------|-----------|
| / (index.html) | ✅ 200 | 41,970 bytes |
| /dich-vu.html | ✅ 200 | 29,760 bytes |
| /CNAME | ✅ | www.tvsgiaiphapxanh.vn (23 bytes) |

### Danh sách URL BỊ LỖI 404 (Broken Pages)
| URL | Status | Ghi chú |
|-----|--------|---------|
| /dich-vu-bao-ve-su-kien.html | ❌ 404 | Pillar page chưa deploy |
| /dich-vu-bao-ve-le-tet.html | ❌ 404 | Pillar page chưa deploy |
| /dich-vu-bao-ve-cong-trinh.html | ❌ 404 | Pillar page chưa deploy |
| /bang-gia-bao-ve.html | ❌ 404 | Pricing page chưa deploy |

---

## 2. Content Gaps (Khoảng trống nội dung)

### 4 Pillar Pages CHƯA được deploy lên GitHub Pages
Các file đã tồn tại trên workspace nhưng chưa push lên repo:
- `workspace/bang-gia-bao-ve.html` — Giá tham khảo chi tiết
- `workspace/dich-vu-bao-ve-su-kien.html` — Pillar: Bảo vệ Sự kiện
- `workspace/dich-vu-bao-ve-le-tet.html` — Pillar: Bảo vệ Lễ Tết
- `workspace/dich-vu-bao-ve-cong-trinh.html` — Pillar: Bảo vệ Công trường

**⚠️ LƯU Ý:** Từ phiên 2026-06-17, các file này đã được tạo (~6,600+ từ) nhưng bị chặn deploy do:
- Chưa có GitHub PAT (Personal Access Token) từ Sếp
- Git repo skill folder không có remote URL cấu hình

---

## 3. On-Page SEO Analysis

### Trang chủ (/)
- **Từ khóa xuất hiện:** "bảo vệ", "TPHCM", "chuyên nghiệp", "thời vụ"
- **Cấu trúc Heading:** H1 ✅, H2 ✅, H3 ✅
- **Schema:** Organization + Service ✅
- **Internal Links:** → dich-vu.html ✅
- **CTA:** Hotline 0913 660 071, Form báo giá ✅

### Dịch vụ (dich-vu.html)
- **Từ khóa:** Các loại hình bảo vệ (sự kiện, lễ tết, công trường, VIP)
- **Schema:** Service ✅
- **Cấu trúc:** Card layout responsive ✅
- **Internal Links:** Quay về trang chủ ✅

### Mật độ từ khóa (ước tính)
| Từ khóa | Trang chủ | dich-vu.html | Đánh giá |
|---------|-----------|-------------|----------|
| "bảo vệ" | ~2.5% | ~3.0% | ⚠️ Cần phân bổ lại |
| "TPHCM" | ~0.8% | ~0.5% | ✅ Tự nhiên |
| "thời vụ" | ~1.0% | ~0.8% | ✅ Tự nhiên |
| "chuyên nghiệp" | ~1.2% | ~1.0% | ✅ Tự nhiên |

---

## 4. Technical SEO Issues

### ❌ Lỗi cần sửa
1. **404 Broken Links:** 4 pillar pages chưa deploy (xem Section 1)
2. **Git Remote:** Repo skill folder chưa có remote URL → không push được
3. **Content Trùng lặp:** workspace có nhiều bản sao (final-zip/, tmp-early/, tmp-extract/, tvs-final-seo-2026/)
4. **Counter Widget:** Trang chủ hiển thị "0" cho tất cả counters (chưa kết nối data)
5. **Chưa có GA4:** Google Analytics chưa được cấu hình
6. **Chưa có sitemap.xml** và **robots.txt**

### ✅ Đã tốt
1. HTTPS hoạt động
2. CNAME đúng (www.tvsgiaiphapxanh.vn)
3. Schema markup đầy đủ
4. Responsive design
5. Nội dung gốc không nhồi nhét keyword

---

## 5. SEO Drafts — Đang chờ duyệt

Đã tạo bản nháp trong thư mục `seo_drafts/`:
- [ ] `2026-06-18-bao-ve-su-kien-chuan-seo.md` — Outline Pillar 1
- [ ] `2026-06-18-bao-ve-le-tet-chuan-seo.md` — Outline Pillar 2
- [ ] `2026-06-18-bao-ve-cong-trinh-chuan-seo.md` — Outline Pillar 3
- [ ] `2026-06-18-bang-gia-bao-ve-chuan-seo.md` — Outline Pricing Page

**⚠️ KHÔNG TỰ ĐỘNG PUBLISH — Chờ Sếp phê duyệt nội dung**

---

## 6. Kế Hoạch Hành Động

### 🔴 Ưu tiên cao (Cần Sếp hỗ trợ)
1. **Cung cấp GitHub PAT** (Personal Access Token scope: repo) để push 4 pillar pages
2. **Xác nhận GA4 Measurement ID** để thêm tracking vào website
3. **Xác nhận sitemap.xml** cần tạo hay tự động generate

### 🟡 Ưu tiên trung bình (Tự động xử lý)
1. Push 4 pillar pages lên GitHub Pages khi có PAT
2. Tạo sitemap.xml & robots.txt
3. Sửa counter widget (hiện hiển "0")
4. Setup Google Search Console verification

### 🟢 Duy trì (Cron tự động)
1. **21:00 hàng ngày:** Technical SEO Audit + Content Gap Analysis
2. **08:00 hàng ngày:** Rank Tracking + Báo cáo thứ hạng

---

**Người thực hiện:** OpenClaw TVS SEO Expert 🦝
**Ngày:** 2026-06-18
**Phiên bản Kỹ năng:** 2.0.0

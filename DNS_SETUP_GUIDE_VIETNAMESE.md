# Hướng dẫn Cấu hình DNS - tvsgiaiphapxanh.vn

## Bước 1 — Thêm remote GitHub (một lần)
Mở Terminal (hoặc Git Bash) tại folder `tvssite`:

```bash
cd /path/to/your/repo/tvssite

# Replace TENNGUOIDUNG with your GitHub username
# Ví dụ: sếp có repo tại https://github.com/thuanit400/tvs-giai-phap-xanh.git
git remote add origin https://github.com/TENNGUOIDUNG/tvs-giai-phap-xanh.git
```

## Bước 2 — Đẩy code lên (lần đầu)

```bash
# Sử dụng Personal Access Token (PAT) làm mật khẩu
git push origin main
```

**Tạo PAT mới (nếu chưa có):**
- Đăng nhập GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
- Tạo token mới, cấp quyền **repo**
- Sao chép chuỗi token dài (có thể là `ghp_...`)
- Dùng token đó làm mật khẩu khi Git yêu cầu

## Bước 3 — Cấu hình DNS tên miền (Mắt Bão, iNet, Tenten...)

Đăng nhập vào trang quản trị tên miền (nhà cung cấp sếp dùng)

### 3.1 — Bản ghi A (trỏ tên miền đến GitHub Pages)
- **Type:** A
- **Host/Name/@:** `@` hoặc `tvsgiaiphapxanh`
- **TTL:** `1` (hoặc cao hơn tùy ý)
- **Value/Points to:** `185.199.108.153` (GitHub Pages có thể thay đổi)

### 3.2 — Bản ghi CNAME (điều hướng www và sub)
- **Type:** CNAME
- **Host/Name:** `www` (hoặc `*.tvsgiaiphapxanh.vn` nếu có)
- **Value:** `tvsgiaiphapxanh.github.io`

*Cách lấy IP chính xác (185.199.108.153):*
1. Dùng `curl -I https://tvsgiaiphapxanh.github.io` (hoặc `dig`)
2. Sử dụng tool kiểm tra DNS (ví dụ: https://www.who.is/dns-record/)

## Bước 4 — Chờ (có thể mất 24-48 giờ để DNS toàn cầu)

Sau khi đẩy code (gồm file CNAME) và cập nhật DNS, truy cập `https://tvsgiaiphapxanh.vn` để kiểm tra.

**Nếu vẫn trỏ về `tvsgiaiphapxanh.github.io`:** Xóa cache trình duyệt hoặc thử `https://www.tvsgiaiphapxanh.vn`.

## Các bước tiếp theo (tùy chọn)
- Tạo file `robots.txt` + `sitemap.xml` (nếu muốn SEO)
- Đăng ký SSL (Let's Encrypt) hoặc dùng Cloudflare
- Cấu hình email qua GitHub Pages (sửa host email riêng)

Gửi mail `hello@tvsgiaiphapxanh.vn` nếu sếp cần xác thực, deploy CI/CD, hoặc bất kỳ sự hỗ trợ nào khác 🦝
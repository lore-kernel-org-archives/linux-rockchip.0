From: Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] drm/rockchip: add CONFIG_OF dependency for lvds
Date: Mon,  6 Nov 2017 14:58:43 +0100
Message-ID: <20171106135852.1355487-1-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-rockchip@lists.infradead.org, Jeffy Chen <jeffy.chen@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Chris Zhong <zyw@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QnVpbGQtdGVzdGluZyBvbiByYW5kY29uZmlnIGtlcm5lbHMgcmV2ZWFsZWQgYSBkZXBlbmRlbmN5
IGluIHRoZQpuZXdseSBhZGRlZCBsdmRzIHN1Yi1kcml2ZXI6Cgpkcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfbHZkcy5jOiBJbiBmdW5jdGlvbiAncm9ja2NoaXBfbHZkc19iaW5kJzoK
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2x2ZHMuYzozODA6MjQ6IGVycm9yOiAn
c3RydWN0IGRybV9icmlkZ2UnIGhhcyBubyBtZW1iZXIgbmFtZWQgJ29mX25vZGUnCiAgIHJlbW90
ZSA9IGx2ZHMtPmJyaWRnZS0+b2Zfbm9kZTsKCldlIGNvdWxkIHdvcmsgYXJvdW5kIHRoYXQgaW4g
dGhlIGNvZGUsIGFkZGluZyBhIEtjb25maWcgZGVwZW5kZW5jeQpzZWVtcyBlYXNpZXIuCgpGaXhl
czogMzRjYzBhYTI1NDU2ICgiZHJtL3JvY2tjaGlwOiBBZGQgc3VwcG9ydCBmb3IgUm9ja2NoaXAg
U29jIExWRFMiKQpTaWduZWQtb2ZmLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL0tjb25maWcgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZp
ZwppbmRleCAzYzcwYzYyMjRiZDIuLjBjY2M3NjIxN2VlNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL0tjb25maWcKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tj
b25maWcKQEAgLTYwLDcgKzYwLDcgQEAgY29uZmlnIFJPQ0tDSElQX0lOTk9fSERNSQogY29uZmln
IFJPQ0tDSElQX0xWRFMKIAlib29sICJSb2NrY2hpcCBMVkRTIHN1cHBvcnQiCiAJZGVwZW5kcyBv
biBEUk1fUk9DS0NISVAKLQlkZXBlbmRzIG9uIFBJTkNUUkwKKwlkZXBlbmRzIG9uIFBJTkNUUkwg
JiYgT0YKIAloZWxwCiAJICBDaG9vc2UgdGhpcyBvcHRpb24gdG8gZW5hYmxlIHN1cHBvcnQgZm9y
IFJvY2tjaGlwIExWRFMgY29udHJvbGxlcnMuCiAJICBSb2NrY2hpcCByazMyODggU29DIGhhcyBM
VkRTIFRYIENvbnRyb2xsZXIgY2FuIGJlIHVzZWQsIGFuZCBpdAotLSAKMi45LjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5n
IGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

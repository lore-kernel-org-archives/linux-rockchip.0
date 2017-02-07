From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH] drm/rockchip: cdn-dp: fix cdn-dp complie warning
Date: Tue,  7 Feb 2017 09:34:01 +0800
Message-ID: <1486431241-11374-1-git-send-email-mark.yao@rock-chips.com>
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
To: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Zml4IHdhcm5pbmc6Cgpkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLXJlZy5jOjYzMjoy
NDogd2FybmluZzoKICAndmFsWzFdJyBtYXkgYmUgdXNlZCB1bmluaXRpYWxpemVkIGluIHRoaXMg
ZnVuY3Rpb24gWy1XbWF5YmUtdW5pbml0aWFsaXplZF0KICBtc2FfbWlzYyA9IDIgKiB2YWxbMF0g
KyAzMiAqIHZhbFsxXSArCgpTaWduZWQtb2ZmLWJ5OiBNYXJrIFlhbyA8bWFyay55YW9Acm9jay1j
aGlwcy5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1yZWcuYyB8IDIg
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtcmVnLmMgYi9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvY2RuLWRwLXJlZy5jCmluZGV4IDNhNWI4YTQuLjMxOWRiYmEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtcmVnLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1yZWcuYwpAQCAtNTkyLDcgKzU5Miw3IEBAIHN0YXRp
YyBpbnQgY2RuX2RwX2dldF9tc2FfbWlzYyhzdHJ1Y3QgdmlkZW9faW5mbyAqdmlkZW8sCiAJCQkg
ICAgICAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpCiB7CiAJdTMyIG1zYV9taXNjOwot
CXU4IHZhbFsyXTsKKwl1OCB2YWxbMl0gPSB7MH07CiAKIAlzd2l0Y2ggKHZpZGVvLT5jb2xvcl9m
bXQpIHsKIAljYXNlIFBYTF9SR0I6Ci0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

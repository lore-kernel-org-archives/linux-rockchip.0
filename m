From: Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH v3 4/4] drm/rockchip: vop: Add more RGB output interface type
Date: Mon,  9 Oct 2017 16:07:04 +0800
Message-ID: <1507536424-110871-1-git-send-email-hjc@rock-chips.com>
References: <1507536396-106827-1-git-send-email-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1507536396-106827-1-git-send-email-hjc@rock-chips.com>
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
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

VGhpcyBwYXRjaCBhZGQgc2VyaWFsIFJHQiBvdXRwdXQgaW50ZXJmYWNlIGZvciByb2NrY2hpcCB2
b3AsIHRoZQptb3JlIGluZm8gYWJvdXQgc2VyaWFsIFJHQiBvdXRwdXQgaW50ZXJmYWNlIGRlc2Ny
aWJlZCBhdCB0aGUKZm9sbG93aW5nIGZpbGU6CgpEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9wYW5lbC9wYW5lbC1yZ2IudHh0CgpTaWduZWQtb2ZmLWJ5OiBTYW5keSBI
dWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgotLS0KQ2hhbmdlcyBpbiB2MzogTm9uZQpDaGFuZ2Vz
IGluIHYyOiBOb25lCgogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Au
aCB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5oIGIvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuaAppbmRleCA1NmJiZDJlLi41OWEwMWMzIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmgKQEAgLTIwOSw2
ICsyMDksOCBAQCBzdHJ1Y3Qgdm9wX2RhdGEgewogI2RlZmluZSBST0NLQ0hJUF9PVVRfTU9ERV9Q
ODg4CTAKICNkZWZpbmUgUk9DS0NISVBfT1VUX01PREVfUDY2NgkxCiAjZGVmaW5lIFJPQ0tDSElQ
X09VVF9NT0RFX1A1NjUJMgorI2RlZmluZSBST0NLQ0hJUF9PVVRfTU9ERV9TODg4CTgKKyNkZWZp
bmUgUk9DS0NISVBfT1VUX01PREVfUzg4OF9EVU1NWQkxMgogLyogZm9yIHVzZSBzcGVjaWFsIG91
dGZhY2UgKi8KICNkZWZpbmUgUk9DS0NISVBfT1VUX01PREVfQUFBQQkxNQogCi0tIAoyLjcuNAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZl
bCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

From: Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH v4 4/4] drm/rockchip: vop: Add more RGB output interface type
Date: Wed,  1 Nov 2017 15:55:01 +0800
Message-ID: <1509522902-134382-1-git-send-email-hjc@rock-chips.com>
References: <1509522753-118639-1-git-send-email-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1509522753-118639-1-git-send-email-hjc@rock-chips.com>
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
dWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgpSZXZpZXdlZC1ieTogU2VhbiBQYXVsIDxzZWFucGF1
bEBjaHJvbWl1bS5vcmc+Ci0tLQpDaGFuZ2VzIGluIHY0OiBOb25lCkNoYW5nZXMgaW4gdjM6IE5v
bmUKQ2hhbmdlcyBpbiB2MjogTm9uZQoKIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fdm9wLmggfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmgKaW5kZXggNTZiYmQyZS4u
NTlhMDFjMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV92b3AuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5o
CkBAIC0yMDksNiArMjA5LDggQEAgc3RydWN0IHZvcF9kYXRhIHsKICNkZWZpbmUgUk9DS0NISVBf
T1VUX01PREVfUDg4OAkwCiAjZGVmaW5lIFJPQ0tDSElQX09VVF9NT0RFX1A2NjYJMQogI2RlZmlu
ZSBST0NLQ0hJUF9PVVRfTU9ERV9QNTY1CTIKKyNkZWZpbmUgUk9DS0NISVBfT1VUX01PREVfUzg4
OAk4CisjZGVmaW5lIFJPQ0tDSElQX09VVF9NT0RFX1M4ODhfRFVNTVkJMTIKIC8qIGZvciB1c2Ug
c3BlY2lhbCBvdXRmYWNlICovCiAjZGVmaW5lIFJPQ0tDSElQX09VVF9NT0RFX0FBQUEJMTUKIAot
LSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

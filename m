From: Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 3/3] drm/rockchip: vop: Add more RGB output interface type
Date: Thu, 14 Sep 2017 11:43:28 +0800
Message-ID: <1505360608-377-1-git-send-email-hjc@rock-chips.com>
References: <1505360594-196508-1-git-send-email-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1505360594-196508-1-git-send-email-hjc@rock-chips.com>
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
ZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC1yZ2IudHh0CgpTaWduZWQtb2ZmLWJ5OiBT
YW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wLmggfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV92b3AuaCBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmgKaW5k
ZXggNTZiYmQyZS4uNTlhMDFjMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV92b3AuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX3ZvcC5oCkBAIC0yMDksNiArMjA5LDggQEAgc3RydWN0IHZvcF9kYXRhIHsKICNkZWZp
bmUgUk9DS0NISVBfT1VUX01PREVfUDg4OAkwCiAjZGVmaW5lIFJPQ0tDSElQX09VVF9NT0RFX1A2
NjYJMQogI2RlZmluZSBST0NLQ0hJUF9PVVRfTU9ERV9QNTY1CTIKKyNkZWZpbmUgUk9DS0NISVBf
T1VUX01PREVfUzg4OAk4CisjZGVmaW5lIFJPQ0tDSElQX09VVF9NT0RFX1M4ODhfRFVNTVkJMTIK
IC8qIGZvciB1c2Ugc3BlY2lhbCBvdXRmYWNlICovCiAjZGVmaW5lIFJPQ0tDSElQX09VVF9NT0RF
X0FBQUEJMTUKIAotLSAKMi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcmktZGV2ZWwK

From: Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH v2 3/3] drm/rockchip: vop: Add more RGB output interface type
Date: Fri, 22 Sep 2017 11:00:42 +0800
Message-ID: <1506049242-117801-1-git-send-email-hjc@rock-chips.com>
References: <1506049221-117283-1-git-send-email-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1506049221-117283-1-git-send-email-hjc@rock-chips.com>
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
YW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgotLS0KTm8gY2hhbmdlcyBpbiB2MjoKCiBk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5oIHwgMiArKwogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmggYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX3ZvcC5oCmluZGV4IDU2YmJkMmUuLjU5YTAxYzMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuaApAQCAtMjA5LDYgKzIwOSw4IEBAIHN0cnVj
dCB2b3BfZGF0YSB7CiAjZGVmaW5lIFJPQ0tDSElQX09VVF9NT0RFX1A4ODgJMAogI2RlZmluZSBS
T0NLQ0hJUF9PVVRfTU9ERV9QNjY2CTEKICNkZWZpbmUgUk9DS0NISVBfT1VUX01PREVfUDU2NQky
CisjZGVmaW5lIFJPQ0tDSElQX09VVF9NT0RFX1M4ODgJOAorI2RlZmluZSBST0NLQ0hJUF9PVVRf
TU9ERV9TODg4X0RVTU1ZCTEyCiAvKiBmb3IgdXNlIHNwZWNpYWwgb3V0ZmFjZSAqLwogI2RlZmlu
ZSBST0NLQ0hJUF9PVVRfTU9ERV9BQUFBCTE1CiAKLS0gCjIuNy40CgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApk
cmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

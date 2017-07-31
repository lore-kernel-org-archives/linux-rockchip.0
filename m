From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH 5/6] drm/rockchip: vop: report error when check resource error
Date: Mon, 31 Jul 2017 17:49:55 +0800
Message-ID: <1501494596-7090-1-git-send-email-mark.yao@rock-chips.com>
References: <1501494569-6825-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1501494569-6825-1-git-send-email-mark.yao@rock-chips.com>
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

VGhlIHVzZXIgd291bGQgYmUgY29uZnVzZWQgd2hpbGUgZmFjaW5nIGEgZXJyb3IgY29tbWl0IHdp
dGhvdXQKYW55IGVycm9yIHJlcG9ydC4KClNpZ25lZC1vZmYtYnk6IE1hcmsgWWFvIDxtYXJrLnlh
b0Byb2NrLWNoaXBzLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX3ZvcC5jIHwgNCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlw
X2RybV92b3AuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMK
aW5kZXggZmEwZDlmNy4uOTk5YzJlMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV92b3AuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX3ZvcC5jCkBAIC02NzQsOCArNjc0LDEwIEBAIHN0YXRpYyBpbnQgdm9wX3BsYW5l
X2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKIAkgKiBTcmMueDEgY2FuIGJl
IG9kZCB3aGVuIGRvIGNsaXAsIGJ1dCB5dXYgcGxhbmUgc3RhcnQgcG9pbnQKIAkgKiBuZWVkIGFs
aWduIHdpdGggMiBwaXhlbC4KIAkgKi8KLQlpZiAoaXNfeXV2X3N1cHBvcnQoZmItPmZvcm1hdC0+
Zm9ybWF0KSAmJiAoKHN0YXRlLT5zcmMueDEgPj4gMTYpICUgMikpCisJaWYgKGlzX3l1dl9zdXBw
b3J0KGZiLT5mb3JtYXQtPmZvcm1hdCkgJiYgKChzdGF0ZS0+c3JjLngxID4+IDE2KSAlIDIpKSB7
CisJCURSTV9FUlJPUigiSW52YWxpZCBTb3VyY2U6IFl1diBmb3JtYXQgbm90IHN1cHBvcnQgb2Rk
IHhwb3NcbiIpOwogCQlyZXR1cm4gLUVJTlZBTDsKKwl9CiAKIAlyZXR1cm4gMDsKIH0KLS0gCjEu
OS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJp
LWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

From: Chris Zhong <zyw@rock-chips.com>
Subject: [PATCH v5 03/11] drm/rockchip: return a true clock rate to
 adjusted_mode
Date: Thu, 26 Nov 2015 15:50:17 +0800
Message-ID: <1448524225-5489-4-git-send-email-zyw@rock-chips.com>
References: <1448524225-5489-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1448524225-5489-1-git-send-email-zyw@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org, mark.yao@rock-chips.com, treding@nvidia.com
Cc: Chris Zhong <zyw@rock-chips.com>, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

U2luY2UgdGhlIG1pcGkgZHNpIGRyaXZlciBuZWVkIHRvIHVzZSB0aGUgY2xvY2sgb2Ygdm9wIHRv
IG1ha2UgdGhlCmNhbGN1bGF0aW9uIG9mIEJsYW5raW5nLiBCdXQgc29tZXRpbWVzIHRoZSBjbG9j
ayBkcml2ZXIgY2FuIG5vdCBzZXQgYQphY2N1cmF0ZSBjbG9ja19yYXRlIGZvciB2b3AsIGdldCBp
dCBieSBjbGtfcm91bmRfcmF0ZSBiZWZvcmUgbW9kZV9zZXQsCnNvIHdlIGNhbiBnZXQgdGhlIHRy
dWUgdmFsdWUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBaaG9uZyA8enl3QHJvY2stY2hpcHMuY29t
PgpBY2tlZC1ieTogTWFyayBZYW8gPG1hcmsueWFvQHJvY2stY2hpcHMuY29tPgoKLS0tCgpDaGFu
Z2VzIGluIHY1OiBOb25lCkNoYW5nZXMgaW4gdjQ6Ci0gdXNlIGNsa19yb3VuZF9yYXRlIHRvIGNo
ZWNrIHRoZSBjbG9jayByYXRlIGluIHZvcF9jcnRjX21vZGVfZml4dXAKCkNoYW5nZXMgaW4gdjM6
IE5vbmUKQ2hhbmdlcyBpbiB2MjogTm9uZQoKIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fdm9wLmMgfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Au
YyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKaW5kZXggNWQ4
YWU1ZS4uZWZmNTQ1YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2RybV92b3AuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcC5jCkBAIC0xMTM2LDkgKzExMzYsMTQgQEAgc3RhdGljIGJvb2wgdm9wX2NydGNfbW9kZV9m
aXh1cChzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCiAJCQkJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5
X21vZGUgKm1vZGUsCiAJCQkJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUp
CiB7CisJc3RydWN0IHZvcCAqdm9wID0gdG9fdm9wKGNydGMpOworCiAJaWYgKGFkanVzdGVkX21v
ZGUtPmh0b3RhbCA9PSAwIHx8IGFkanVzdGVkX21vZGUtPnZ0b3RhbCA9PSAwKQogCQlyZXR1cm4g
ZmFsc2U7CiAKKwlhZGp1c3RlZF9tb2RlLT5jbG9jayA9CisJCWNsa19yb3VuZF9yYXRlKHZvcC0+
ZGNsaywgbW9kZS0+Y2xvY2sgKiAxMDAwKSAvIDEwMDA7CisKIAlyZXR1cm4gdHJ1ZTsKIH0KIAot
LSAKMi42LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

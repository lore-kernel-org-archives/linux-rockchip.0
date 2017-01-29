From: John Keeping <john@metanate.com>
Subject: [PATCH v3 21/24] drm/rockchip: dw-mipi-dsi: defer probe if panel is
 not loaded
Date: Sun, 29 Jan 2017 13:24:41 +0000
Message-ID: <20170129132444.25251-22-john@metanate.com>
References: <20170129132444.25251-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170129132444.25251-1-john@metanate.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhpcyBlbnN1cmVzIHRoYXQgdGhlIG91dHB1dCByZXNvbHV0aW9uIGlzIGtub3duIGJlZm9yZSBm
YmNvbiBsb2Fkcy4KClNpZ25lZC1vZmYtYnk6IEpvaG4gS2VlcGluZyA8am9obkBtZXRhbmF0ZS5j
b20+Ci0tLQpVbmNoYW5nZWQgaW4gdjMKVW5jaGFuZ2VkIGluIHYyCgogZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2R3LW1pcGktZHNpLmMgfCAxMSArKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9k
dy1taXBpLWRzaS5jCmluZGV4IGY1YjE1Mzc3ZWY4NS4uNWJhZDkyZTIzNzBlIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYwpAQCAtMTE3NiwxMCArMTE3NiwxNyBAQCBzdGF0
aWMgaW50IGR3X21pcGlfZHNpX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNl
ICptYXN0ZXIsCiAKIAlkc2ktPmRzaV9ob3N0Lm9wcyA9ICZkd19taXBpX2RzaV9ob3N0X29wczsK
IAlkc2ktPmRzaV9ob3N0LmRldiA9IGRldjsKLQlyZXR1cm4gbWlwaV9kc2lfaG9zdF9yZWdpc3Rl
cigmZHNpLT5kc2lfaG9zdCk7CisJcmV0ID0gbWlwaV9kc2lfaG9zdF9yZWdpc3RlcigmZHNpLT5k
c2lfaG9zdCk7CisJaWYgKCFyZXQgJiYgIWRzaS0+cGFuZWwpIHsKKwkJbWlwaV9kc2lfaG9zdF91
bnJlZ2lzdGVyKCZkc2ktPmRzaV9ob3N0KTsKKwkJZHJtX2VuY29kZXJfY2xlYW51cCgmZHNpLT5l
bmNvZGVyKTsKKwkJZHJtX2Nvbm5lY3Rvcl9jbGVhbnVwKCZkc2ktPmNvbm5lY3Rvcik7CisJCXJl
dCA9IC1FUFJPQkVfREVGRVI7CisJfQogCiBlcnJfcGxscmVmOgotCWNsa19kaXNhYmxlX3VucHJl
cGFyZShkc2ktPnBsbHJlZl9jbGspOworCWlmIChyZXQpCisJCWNsa19kaXNhYmxlX3VucHJlcGFy
ZShkc2ktPnBsbHJlZl9jbGspOwogCXJldHVybiByZXQ7CiB9CiAKLS0gCjIuMTEuMC4xOTcuZ2I1
NTZkZTUuZGlydHkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZl
bAo=

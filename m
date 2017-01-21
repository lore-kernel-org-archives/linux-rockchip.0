From: John Keeping <john@metanate.com>
Subject: [PATCH v2 08/26] drm/rockchip: dw-mipi-dsi: include bad value in
 error message
Date: Sat, 21 Jan 2017 16:31:10 +0000
Message-ID: <20170121163128.22240-9-john@metanate.com>
References: <20170121163128.22240-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170121163128.22240-1-john@metanate.com>
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

QXMgYW4gYWlkIHRvIGRlYnVnZ2luZy4KClNpZ25lZC1vZmYtYnk6IEpvaG4gS2VlcGluZyA8am9o
bkBtZXRhbmF0ZS5jb20+Ci0tLQpVbmNoYW5nZWQgaW4gdjIKLS0tCiBkcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvZHctbWlwaS1kc2kuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2R3LW1pcGktZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ku
YwppbmRleCAyZTZhZDQ1OTFlYmYuLjkyZGJjM2U1NjYwMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2R3LW1pcGktZHNpLmMKQEAgLTY0NCw3ICs2NDQsOCBAQCBzdGF0aWMgc3NpemVfdCBkd19t
aXBpX2RzaV9ob3N0X3RyYW5zZmVyKHN0cnVjdCBtaXBpX2RzaV9ob3N0ICpob3N0LAogCQlyZXQg
PSBkd19taXBpX2RzaV9kY3NfbG9uZ193cml0ZShkc2ksIG1zZyk7CiAJCWJyZWFrOwogCWRlZmF1
bHQ6Ci0JCWRldl9lcnIoZHNpLT5kZXYsICJ1bnN1cHBvcnRlZCBtZXNzYWdlIHR5cGVcbiIpOwor
CQlkZXZfZXJyKGRzaS0+ZGV2LCAidW5zdXBwb3J0ZWQgbWVzc2FnZSB0eXBlIDB4JTAyeFxuIiwK
KwkJCW1zZy0+dHlwZSk7CiAJCXJldCA9IC1FSU5WQUw7CiAJfQogCi0tIAoyLjExLjAuMTk3Lmdi
NTU2ZGU1LmRpcnR5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2
ZWwK

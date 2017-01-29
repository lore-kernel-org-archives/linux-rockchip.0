From: John Keeping <john@metanate.com>
Subject: [PATCH v3 07/24] drm/rockchip: dw-mipi-dsi: include bad value in
 error message
Date: Sun, 29 Jan 2017 13:24:27 +0000
Message-ID: <20170129132444.25251-8-john@metanate.com>
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

QXMgYW4gYWlkIHRvIGRlYnVnZ2luZy4KClNpZ25lZC1vZmYtYnk6IEpvaG4gS2VlcGluZyA8am9o
bkBtZXRhbmF0ZS5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBaaG9uZyA8enl3QHJvY2stY2hpcHMu
Y29tPgotLS0KdjM6Ci0gQWRkIENocmlzJyBSZXZpZXdlZC1ieQpVbmNoYW5nZWQgaW4gdjIKCiBk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYyB8IDMgKystCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvZHctbWlwaS1kc2kuYwppbmRleCAyZTZhZDQ1OTFlYmYuLjkyZGJjM2U1NjYwMyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMKQEAgLTY0NCw3ICs2NDQsOCBAQCBzdGF0
aWMgc3NpemVfdCBkd19taXBpX2RzaV9ob3N0X3RyYW5zZmVyKHN0cnVjdCBtaXBpX2RzaV9ob3N0
ICpob3N0LAogCQlyZXQgPSBkd19taXBpX2RzaV9kY3NfbG9uZ193cml0ZShkc2ksIG1zZyk7CiAJ
CWJyZWFrOwogCWRlZmF1bHQ6Ci0JCWRldl9lcnIoZHNpLT5kZXYsICJ1bnN1cHBvcnRlZCBtZXNz
YWdlIHR5cGVcbiIpOworCQlkZXZfZXJyKGRzaS0+ZGV2LCAidW5zdXBwb3J0ZWQgbWVzc2FnZSB0
eXBlIDB4JTAyeFxuIiwKKwkJCW1zZy0+dHlwZSk7CiAJCXJldCA9IC1FSU5WQUw7CiAJfQogCi0t
IAoyLjExLjAuMTk3LmdiNTU2ZGU1LmRpcnR5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcmktZGV2ZWwK

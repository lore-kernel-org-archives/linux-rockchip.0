From: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [PATCH 21/26] drm/rockchip: Use drm_fb_helper_fill_info
Date: Thu, 24 Jan 2019 17:58:26 +0100
Message-ID: <20190124165831.16427-22-daniel.vetter@ffwll.ch>
References: <20190124165831.16427-1-daniel.vetter@ffwll.ch>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190124165831.16427-1-daniel.vetter@ffwll.ch>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhpcyB3aWxsIHNldCBhbiBmYiBuYW1lIGZvciB0aGUgZmlyc3QgdGltZSEKClNpZ25lZC1vZmYt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogU2FuZHkgSHVh
bmcgPGhqY0Byb2NrLWNoaXBzLmNvbT4KQ2M6ICJIZWlrbyBTdMO8Ym5lciIgPGhlaWtvQHNudGVj
aC5kZT4KQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogbGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9kcm1fZmJkZXYuYyB8IDQgKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fZmJkZXYuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fZmJkZXYuYwppbmRleCA3YmQzYjg5MDIyYmUuLmQxMjE2NDg3OGUwNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9mYmRldi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmJkZXYuYwpAQCAtOTAsMTMg
KzkwLDExIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHJtX2ZiZGV2X2NyZWF0ZShzdHJ1Y3QgZHJt
X2ZiX2hlbHBlciAqaGVscGVyLAogCQlnb3RvIG91dDsKIAl9CiAKLQlmYmktPnBhciA9IGhlbHBl
cjsKIAlmYmktPmZsYWdzID0gRkJJTkZPX0ZMQUdfREVGQVVMVDsKIAlmYmktPmZib3BzID0gJnJv
Y2tjaGlwX2RybV9mYmRldl9vcHM7CiAKIAlmYiA9IGhlbHBlci0+ZmI7Ci0JZHJtX2ZiX2hlbHBl
cl9maWxsX2ZpeChmYmksIGZiLT5waXRjaGVzWzBdLCBmYi0+Zm9ybWF0LT5kZXB0aCk7Ci0JZHJt
X2ZiX2hlbHBlcl9maWxsX3ZhcihmYmksIGhlbHBlciwgc2l6ZXMtPmZiX3dpZHRoLCBzaXplcy0+
ZmJfaGVpZ2h0KTsKKwlkcm1fZmJfaGVscGVyX2ZpbGxfaW5mbyhmYmksIGhlbHBlcik7CiAKIAlv
ZmZzZXQgPSBmYmktPnZhci54b2Zmc2V0ICogYnl0ZXNfcGVyX3BpeGVsOwogCW9mZnNldCArPSBm
YmktPnZhci55b2Zmc2V0ICogZmItPnBpdGNoZXNbMF07Ci0tIAoyLjIwLjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

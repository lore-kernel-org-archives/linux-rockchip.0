From: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [PATCH 06/10] drm/xrockchip: plane_state->fb iff plane_state->crtc
Date: Fri, 13 Dec 2019 18:26:08 +0100
Message-ID: <20191213172612.1514842-6-daniel.vetter@ffwll.ch>
References: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20191213172612.1514842-1-daniel.vetter@ffwll.ch>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Q2hlY2tpbmcgYm90aCBpcyBvbmUgdG9vIG11Y2gsIHNvIHdyYXAgYSBXQVJOX09OIGFyb3VuZCBp
dCB0byBzdG9wZQp0aGUgY29weXBhc3RhLgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8
ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMu
Y29tPgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPgpDYzogbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Au
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4IGQwNGIz
NDkyYmRhYy4uY2VjYjJjYzc4MWY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX3ZvcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fdm9wLmMKQEAgLTcyNCw3ICs3MjQsNyBAQCBzdGF0aWMgaW50IHZvcF9wbGFuZV9h
dG9taWNfY2hlY2soc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiAJaW50IG1heF9zY2FsZSA9IHdp
bi0+cGh5LT5zY2wgPyBGUkFDXzE2XzE2KDgsIDEpIDoKIAkJCQkJRFJNX1BMQU5FX0hFTFBFUl9O
T19TQ0FMSU5HOwogCi0JaWYgKCFjcnRjIHx8ICFmYikKKwlpZiAoIWNydGMgfHwgV0FSTl9PTigh
ZmIpKQogCQlyZXR1cm4gMDsKIAogCWNydGNfc3RhdGUgPSBkcm1fYXRvbWljX2dldF9leGlzdGlu
Z19jcnRjX3N0YXRlKHN0YXRlLT5zdGF0ZSwgY3J0Yyk7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxp
c3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

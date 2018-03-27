From: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [PATCH 2/5] drm/rockchip: fixup comment for gem_free_object_unlocked
Date: Tue, 27 Mar 2018 10:23:53 +0200
Message-ID: <20180327082356.24516-2-daniel.vetter@ffwll.ch>
References: <20180327082356.24516-1-daniel.vetter@ffwll.ch>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180327082356.24516-1-daniel.vetter@ffwll.ch>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, linux-rockchip@lists.infradead.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

SnVzdCB3YW50IHRvIGNsZWFuIG91dCBhbGwgZ3JlcCBoaXRzLiBnZW1fZnJlZV9vYmplY3QgaXMg
ZGVwcmVjYXRlZC4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
aW50ZWwuY29tPgpDYzogU2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBzLmNvbT4KQ2M6ICJIZWlr
byBTdMO8Ym5lciIgPGhlaWtvQHNudGVjaC5kZT4KQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwotLS0K
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgfCA0ICsrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMKaW5kZXggMDc0ZGI3YTkyODA5Li5h
OGRiNzU4ZDUyM2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9n
ZW0uYwpAQCAtMzU3LDggKzM1Nyw4IEBAIHJvY2tjaGlwX2dlbV9jcmVhdGVfb2JqZWN0KHN0cnVj
dCBkcm1fZGV2aWNlICpkcm0sIHVuc2lnbmVkIGludCBzaXplLAogfQogCiAvKgotICogcm9ja2No
aXBfZ2VtX2ZyZWVfb2JqZWN0IC0gKHN0cnVjdCBkcm1fZHJpdmVyKS0+Z2VtX2ZyZWVfb2JqZWN0
IGNhbGxiYWNrCi0gKiBmdW5jdGlvbgorICogcm9ja2NoaXBfZ2VtX2ZyZWVfb2JqZWN0IC0gKHN0
cnVjdCBkcm1fZHJpdmVyKS0+Z2VtX2ZyZWVfb2JqZWN0X3VubG9ja2VkCisgKiBjYWxsYmFjayBm
dW5jdGlvbgogICovCiB2b2lkIHJvY2tjaGlwX2dlbV9mcmVlX29iamVjdChzdHJ1Y3QgZHJtX2dl
bV9vYmplY3QgKm9iaikKIHsKLS0gCjIuMTYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpLWRldmVsCg==

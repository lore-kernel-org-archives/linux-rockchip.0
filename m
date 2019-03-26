From: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [PATCH 17/21] drm/rockchip: Use drm_fb_helper_fill_info
Date: Tue, 26 Mar 2019 14:20:04 +0100
Message-ID: <20190326132008.11781-17-daniel.vetter@ffwll.ch>
References: <20190326132008.11781-1-daniel.vetter@ffwll.ch>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <intel-gfx-bounces@lists.freedesktop.org>
In-Reply-To: <20190326132008.11781-1-daniel.vetter@ffwll.ch>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhpcyB3aWxsIHNldCBhbiBmYiBuYW1lIGZvciB0aGUgZmlyc3QgdGltZSEKCnYyOiBSZWJhc2UK
ClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgpTaWduZWQtb2Zm
LWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFNhbmR5IEh1
YW5nIDxoamNAcm9jay1jaGlwcy5jb20+CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRl
Y2guZGU+CkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX2ZiZGV2LmMgfCA0ICstLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX2ZiZGV2LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX2ZiZGV2LmMKaW5kZXggMGNiY2VmODhkNGQ3Li4zMDQ1OWRlNjZiNjcgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmJkZXYuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiZGV2LmMKQEAgLTkwLDEy
ICs5MCwxMCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2RybV9mYmRldl9jcmVhdGUoc3RydWN0IGRy
bV9mYl9oZWxwZXIgKmhlbHBlciwKIAkJZ290byBvdXQ7CiAJfQogCi0JZmJpLT5wYXIgPSBoZWxw
ZXI7CiAJZmJpLT5mYm9wcyA9ICZyb2NrY2hpcF9kcm1fZmJkZXZfb3BzOwogCiAJZmIgPSBoZWxw
ZXItPmZiOwotCWRybV9mYl9oZWxwZXJfZmlsbF9maXgoZmJpLCBmYi0+cGl0Y2hlc1swXSwgZmIt
PmZvcm1hdC0+ZGVwdGgpOwotCWRybV9mYl9oZWxwZXJfZmlsbF92YXIoZmJpLCBoZWxwZXIsIHNp
emVzLT5mYl93aWR0aCwgc2l6ZXMtPmZiX2hlaWdodCk7CisJZHJtX2ZiX2hlbHBlcl9maWxsX2lu
Zm8oZmJpLCBoZWxwZXIsIHNpemVzKTsKIAogCW9mZnNldCA9IGZiaS0+dmFyLnhvZmZzZXQgKiBi
eXRlc19wZXJfcGl4ZWw7CiAJb2Zmc2V0ICs9IGZiaS0+dmFyLnlvZmZzZXQgKiBmYi0+cGl0Y2hl
c1swXTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4

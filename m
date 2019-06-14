From: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [PATCH 27/59] drm/rockchip: Drop
 drm_gem_prime_export/import
Date: Fri, 14 Jun 2019 22:35:43 +0200
Message-ID: <20190614203615.12639-28-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <intel-gfx-bounces@lists.freedesktop.org>
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics Development <intel-gfx@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhleSdyZSB0aGUgZGVmYXVsdC4KCkFzaWRlOiBXb3VsZCBiZSByZWFsbHkgbmljZSB0byBzd2l0
Y2ggdGhlIG90aGVycyBvdmVyIHRvCmRybV9nZW1fb2JqZWN0X2Z1bmNzLgoKU2lnbmVkLW9mZi1i
eTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBTYW5keSBIdWFu
ZyA8aGpjQHJvY2stY2hpcHMuY29tPgpDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNo
LmRlPgpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCkNjOiBsaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV9kcnYuYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2
LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCmluZGV4IDU5
MDkxYjYyNDFlYy4uNzgyOTc5ZjFiNTVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fZHJ2LmMKQEAgLTIxOSw4ICsyMTksNiBAQCBzdGF0aWMgc3RydWN0IGRybV9k
cml2ZXIgcm9ja2NoaXBfZHJtX2RyaXZlciA9IHsKIAkuZHVtYl9jcmVhdGUJCT0gcm9ja2NoaXBf
Z2VtX2R1bWJfY3JlYXRlLAogCS5wcmltZV9oYW5kbGVfdG9fZmQJPSBkcm1fZ2VtX3ByaW1lX2hh
bmRsZV90b19mZCwKIAkucHJpbWVfZmRfdG9faGFuZGxlCT0gZHJtX2dlbV9wcmltZV9mZF90b19o
YW5kbGUsCi0JLmdlbV9wcmltZV9pbXBvcnQJPSBkcm1fZ2VtX3ByaW1lX2ltcG9ydCwKLQkuZ2Vt
X3ByaW1lX2V4cG9ydAk9IGRybV9nZW1fcHJpbWVfZXhwb3J0LAogCS5nZW1fcHJpbWVfZ2V0X3Nn
X3RhYmxlCT0gcm9ja2NoaXBfZ2VtX3ByaW1lX2dldF9zZ190YWJsZSwKIAkuZ2VtX3ByaW1lX2lt
cG9ydF9zZ190YWJsZQk9IHJvY2tjaGlwX2dlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUsCiAJLmdl
bV9wcmltZV92bWFwCQk9IHJvY2tjaGlwX2dlbV9wcmltZV92bWFwLAotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

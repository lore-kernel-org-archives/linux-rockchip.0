From: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: [PATCH] drm/rockchip: make rockchip_gem_alloc_object static
Date: Wed,  9 Oct 2019 13:10:22 +0100
Message-ID: <20191009121022.17478-1-ben.dooks@codethink.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-kernel@lists.codethink.co.uk
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Ben Dooks <ben.dooks@codethink.co.uk>, Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhlIHJvY2tjaGlwX2dlbV9hbGxvY19vYmplY3QgZnVuY3Rpb24gaXMgbm90IGV4cG9ydGVkIHNv
Cm1ha2UgaXQgc3RhdGljIHRvIGF2b2lkIHRoZSBmb2xsb3dpbmcgc3BhcnNlIHdhcm5pbmc6Cgpk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jOjI5NzoyODogd2Fybmlu
Zzogc3ltYm9sICdyb2NrY2hpcF9nZW1fYWxsb2Nfb2JqZWN0JyB3YXMgbm90IGRlY2xhcmVkLiBT
aG91bGQgaXQgYmUgc3RhdGljPwoKU2lnbmVkLW9mZi1ieTogQmVuIERvb2tzIDxiZW4uZG9va3NA
Y29kZXRoaW5rLmNvLnVrPgotLS0KQ2M6IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+
CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+CkNjOiBEYXZpZCBBaXJsaWUg
PGFpcmxpZWRAbGludXguaWU+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+CkNj
OiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
LS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jIHwgMiArLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMKaW5kZXggMjkxZTg5YjQwNDVmLi43
NTgyZDBlNmE2MGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9n
ZW0uYwpAQCAtMjk0LDcgKzI5NCw3IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX2dlbV9yZWxlYXNl
X29iamVjdChzdHJ1Y3Qgcm9ja2NoaXBfZ2VtX29iamVjdCAqcmtfb2JqKQogCWtmcmVlKHJrX29i
aik7CiB9CiAKLXN0cnVjdCByb2NrY2hpcF9nZW1fb2JqZWN0ICoKK3N0YXRpYyBzdHJ1Y3Qgcm9j
a2NoaXBfZ2VtX29iamVjdCAqCiAJcm9ja2NoaXBfZ2VtX2FsbG9jX29iamVjdChzdHJ1Y3QgZHJt
X2RldmljZSAqZHJtLCB1bnNpZ25lZCBpbnQgc2l6ZSkKIHsKIAlzdHJ1Y3Qgcm9ja2NoaXBfZ2Vt
X29iamVjdCAqcmtfb2JqOwotLSAKMi4yMy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

From: Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] drm: rockchip: select DRM_GEM_CMA_HELPER
Date: Thu, 16 Jun 2016 14:27:57 +0200
Message-ID: <20160616122800.1174015-1-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhlIHJvY2tjaGlwIGRybSBkcml2ZXIgc3RhcnRlZCB1c2luZyBkcm1fZ2VtX2NtYV92bV9vcHMs
IGJ1dCB0aGF0IG1pZ2h0Cm5vdCBiZSBwYXJ0IG9mIHRoZSBrZXJuZWwsIGNhdXNpbmcgdGhlIGxp
bmsgdG8gZmFpbDoKCmRyaXZlcnMvZ3B1L2J1aWx0LWluLm86KC5kYXRhKzB4YjIzNCk6IHVuZGVm
aW5lZCByZWZlcmVuY2UgdG8gYGRybV9nZW1fY21hX3ZtX29wcycKClRoaXMgYWRkcyBhIEtjb25m
aWcgJ3NlbGVjdCcgc3RhdGVtZW50IHRvIGVuYWJsZSBpdCBsaWtlIHRoZSBvdGhlcgp1c2VyIGRv
LgoKU2lnbmVkLW9mZi1ieTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KRml4ZXM6IDgw
ZjY3Y2Q4MGFkZCAoImRybS9yb2NrY2hpcDogVXNlIGNtYSBnZW0gdm0gb3BzIikKLS0tCiBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcg
Yi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwppbmRleCBkMzBiZGMzOGE3NjAuLmU0
ODYxMWU4M2MwMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcK
KysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKQEAgLTIsNiArMiw3IEBAIGNv
bmZpZyBEUk1fUk9DS0NISVAKIAl0cmlzdGF0ZSAiRFJNIFN1cHBvcnQgZm9yIFJvY2tjaGlwIgog
CWRlcGVuZHMgb24gRFJNICYmIFJPQ0tDSElQX0lPTU1VCiAJZGVwZW5kcyBvbiBSRVNFVF9DT05U
Uk9MTEVSCisJc2VsZWN0IERSTV9HRU1fQ01BX0hFTFBFUgogCXNlbGVjdCBEUk1fS01TX0hFTFBF
UgogCXNlbGVjdCBEUk1fS01TX0ZCX0hFTFBFUgogCXNlbGVjdCBEUk1fUEFORUwKLS0gCjIuOS4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2
ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

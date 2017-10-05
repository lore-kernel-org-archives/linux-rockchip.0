From: Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] drm/rockchip: add PINCTRL dependency for LVDS
Date: Thu,  5 Oct 2017 14:09:39 +0200
Message-ID: <20171005120957.485433-1-arnd@arndb.de>
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-rockchip@lists.infradead.org, Jeffy Chen <jeffy.chen@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Chris Zhong <zyw@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhlIG5ldyBkcml2ZXIgZmFpbHMgdG8gYnVpbGQgd2hlbiBDT05GSUdfUElOQ1RSTCBpcyBkaXNh
YmxlZDoKCmRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmM6IEluIGZ1bmN0
aW9uICdyb2NrY2hpcF9sdmRzX2dyZl9jb25maWcnOgpkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfbHZkcy5jOjIyOTozOTogZXJyb3I6IGRlcmVmZXJlbmNpbmcgcG9pbnRlciB0byBp
bmNvbXBsZXRlIHR5cGUgJ3N0cnVjdCBkZXZfcGluX2luZm8nCiAgIGlmIChsdmRzLT5waW5zICYm
ICFJU19FUlIobHZkcy0+cGlucy0+ZGVmYXVsdF9zdGF0ZSkpCgpUaGlzIGFkZHMgdGhlIHJlc3Bl
Y3RpdmUgS2NvbmZpZyBkZXBlbmRlbmN5LgoKRml4ZXM6IDM0Y2MwYWEyNTQ1NiAoImRybS9yb2Nr
Y2hpcDogQWRkIHN1cHBvcnQgZm9yIFJvY2tjaGlwIFNvYyBMVkRTIikKU2lnbmVkLW9mZi1ieTog
QXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvS2NvbmZpZyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvS2NvbmZpZwppbmRleCAwYzMxZjBhMjdiOWMuLjNjNzBjNjIyNGJkMiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL0tjb25maWcKQEAgLTYwLDYgKzYwLDcgQEAgY29uZmlnIFJPQ0tDSElQX0lO
Tk9fSERNSQogY29uZmlnIFJPQ0tDSElQX0xWRFMKIAlib29sICJSb2NrY2hpcCBMVkRTIHN1cHBv
cnQiCiAJZGVwZW5kcyBvbiBEUk1fUk9DS0NISVAKKwlkZXBlbmRzIG9uIFBJTkNUUkwKIAloZWxw
CiAJICBDaG9vc2UgdGhpcyBvcHRpb24gdG8gZW5hYmxlIHN1cHBvcnQgZm9yIFJvY2tjaGlwIExW
RFMgY29udHJvbGxlcnMuCiAJICBSb2NrY2hpcCByazMyODggU29DIGhhcyBMVkRTIFRYIENvbnRy
b2xsZXIgY2FuIGJlIHVzZWQsIGFuZCBpdAotLSAKMi45LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

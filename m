From: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Subject: [PATCH v2 2/2] drm/rockchip: Drop owner assignment from
 platform_driver
Date: Fri, 10 Jul 2015 19:37:33 +0900
Message-ID: <1436524653-29132-3-git-send-email-k.kozlowski@samsung.com>
References: <1436524653-29132-1-git-send-email-k.kozlowski@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-reply-to: <1436524653-29132-1-git-send-email-k.kozlowski@samsung.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: David Airlie <airlied@linux.ie>, Mark Yao <mark.yao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <k.kozlowski@samsung.com>
List-Id: linux-rockchip.vger.kernel.org

cGxhdGZvcm1fZHJpdmVyIGRvZXMgbm90IG5lZWQgdG8gc2V0IGFuIG93bmVyIGJlY2F1c2UKcGxh
dGZvcm1fZHJpdmVyX3JlZ2lzdGVyKCkgd2lsbCBzZXQgaXQuCgpTaWduZWQtb2ZmLWJ5OiBLcnp5
c3p0b2YgS296bG93c2tpIDxrLmtvemxvd3NraUBzYW1zdW5nLmNvbT4KCi0tLQpDaGFuZ2VzIHNp
bmNlIHYxOgoxLiBTcGxpdCBvd25lciByZW1vdmFsIGZyb20gcm9ja2NoaXAgdG8gc2VwYXJhdGUg
cGF0Y2ggKHNwb3R0ZWQgYnkgTWFyawogICBZYW8pLgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9k
cnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKaW5kZXgg
MDFiNTU4ZmUzNjk1Li45YTBjMjkxMTI3MmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV9kcnYuYwpAQCAtNTU1LDcgKzU1NSw2IEBAIHN0YXRpYyBzdHJ1Y3QgcGxh
dGZvcm1fZHJpdmVyIHJvY2tjaGlwX2RybV9wbGF0Zm9ybV9kcml2ZXIgPSB7CiAJLnByb2JlID0g
cm9ja2NoaXBfZHJtX3BsYXRmb3JtX3Byb2JlLAogCS5yZW1vdmUgPSByb2NrY2hpcF9kcm1fcGxh
dGZvcm1fcmVtb3ZlLAogCS5kcml2ZXIgPSB7Ci0JCS5vd25lciA9IFRISVNfTU9EVUxFLAogCQku
bmFtZSA9ICJyb2NrY2hpcC1kcm0iLAogCQkub2ZfbWF0Y2hfdGFibGUgPSByb2NrY2hpcF9kcm1f
ZHRfaWRzLAogCQkucG0gPSAmcm9ja2NoaXBfZHJtX3BtX29wcywKLS0gCjEuOS4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

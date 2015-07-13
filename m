From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v2 2/2] drm/rockchip: Drop owner assignment from
 platform_driver
Date: Mon, 13 Jul 2015 14:03:02 +0800
Message-ID: <55A35496.5060206@rock-chips.com>
References: <1436524653-29132-1-git-send-email-k.kozlowski@samsung.com>
 <1436524653-29132-3-git-send-email-k.kozlowski@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1436524653-29132-3-git-send-email-k.kozlowski@samsung.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Krzysztof Kozlowski <k.kozlowski@samsung.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNeW5tDA35pyIMTDml6UgMTg6MzcsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4g
cGxhdGZvcm1fZHJpdmVyIGRvZXMgbm90IG5lZWQgdG8gc2V0IGFuIG93bmVyIGJlY2F1c2UKPiBw
bGF0Zm9ybV9kcml2ZXJfcmVnaXN0ZXIoKSB3aWxsIHNldCBpdC4KPgo+IFNpZ25lZC1vZmYtYnk6
IEtyenlzenRvZiBLb3psb3dza2kgPGsua296bG93c2tpQHNhbXN1bmcuY29tPgo+Cj4gLS0tCj4g
Q2hhbmdlcyBzaW5jZSB2MToKPiAxLiBTcGxpdCBvd25lciByZW1vdmFsIGZyb20gcm9ja2NoaXAg
dG8gc2VwYXJhdGUgcGF0Y2ggKHNwb3R0ZWQgYnkgTWFyawo+ICAgICBZYW8pLgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyB8IDEgLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV9kcnYuYwo+IGluZGV4IDAxYjU1OGZlMzY5NS4uOWEwYzI5MTEyNzJhIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4gQEAg
LTU1NSw3ICs1NTUsNiBAQCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciByb2NrY2hpcF9k
cm1fcGxhdGZvcm1fZHJpdmVyID0gewo+ICAgCS5wcm9iZSA9IHJvY2tjaGlwX2RybV9wbGF0Zm9y
bV9wcm9iZSwKPiAgIAkucmVtb3ZlID0gcm9ja2NoaXBfZHJtX3BsYXRmb3JtX3JlbW92ZSwKPiAg
IAkuZHJpdmVyID0gewo+IC0JCS5vd25lciA9IFRISVNfTU9EVUxFLAo+ICAgCQkubmFtZSA9ICJy
b2NrY2hpcC1kcm0iLAo+ICAgCQkub2ZfbWF0Y2hfdGFibGUgPSByb2NrY2hpcF9kcm1fZHRfaWRz
LAo+ICAgCQkucG0gPSAmcm9ja2NoaXBfZHJtX3BtX29wcywKVGhhbmtzIGZvciB0aGUgZml4LCBh
cHBsaWVkIHRvIG15IGRybS1uZXh0IGJyYW5jaCwgOi0pCgotLSAK77ytYXJrCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcg
bGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

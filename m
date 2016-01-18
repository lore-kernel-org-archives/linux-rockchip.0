From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip/dsi: fix handling
 mipi_dsi_pixel_format_to_bpp result
Date: Mon, 18 Jan 2016 08:46:10 +0800
Message-ID: <569C35D2.5060709@rock-chips.com>
References: <1452761942-23864-1-git-send-email-a.hajda@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1452761942-23864-1-git-send-email-a.hajda@samsung.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Andrzej Hajda <a.hajda@samsung.com>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, list@263.net, DRM DRIVERS FOR ROCKCHIP <dri-devel@lists.freedesktop.org>, ARM/Rockchip SoC support <linux-rockchip@lists.infradead.org>, open@263.net, Marek Szyprowski <m.szyprowski@samsung.com>
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNuW5tDAx5pyIMTTml6UgMTY6NTksIEFuZHJ6ZWogSGFqZGEgd3JvdGU6Cj4gVGhlIGZ1
bmN0aW9uIGNhbiByZXR1cm4gbmVnYXRpdmUgdmFsdWUgc28gaXQgc2hvdWxkIGJlIGFzc2lnbmVk
IHRvIHNpZ25lZAo+IHZhcmlhYmxlLgo+Cj4gVGhlIHByb2JsZW0gaGFzIGJlZW4gZGV0ZWN0ZWQg
dXNpbmcgcGF0Y2gKPiBzY3JpcHRzL2NvY2NpbmVsbGUvdGVzdHMvdW5zaWduZWRfbGVzc2VyX3Ro
YW5femVyby5jb2NjaS4KPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHJ6ZWogSGFqZGEgPGEuaGFqZGFA
c2Ftc3VuZy5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1k
c2kuYyB8IDMgKystCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGkt
ZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYwo+IGluZGV4IDdi
ZmUyNDMuLmY4ZjhmMjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
LW1pcGktZHNpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ku
Ywo+IEBAIC00NjEsMTAgKzQ2MSwxMSBAQCBzdGF0aWMgaW50IGR3X21pcGlfZHNpX3BoeV9pbml0
KHN0cnVjdCBkd19taXBpX2RzaSAqZHNpKQo+ICAgCj4gICBzdGF0aWMgaW50IGR3X21pcGlfZHNp
X2dldF9sYW5lX2JwcyhzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSkKPiAgIHsKPiAtCXVuc2lnbmVk
IGludCBicHAsIGksIHByZTsKPiArCXVuc2lnbmVkIGludCBpLCBwcmU7Cj4gICAJdW5zaWduZWQg
bG9uZyBtcGNsaywgcGxscmVmLCB0bXA7Cj4gICAJdW5zaWduZWQgaW50IG0gPSAxLCBuID0gMSwg
dGFyZ2V0X21icHMgPSAxMDAwOwo+ICAgCXVuc2lnbmVkIGludCBtYXhfbWJwcyA9IGRwdGRpbl9t
YXBbQVJSQVlfU0laRShkcHRkaW5fbWFwKSAtIDFdLm1heF9tYnBzOwo+ICsJaW50IGJwcDsKPiAg
IAo+ICAgCWJwcCA9IG1pcGlfZHNpX3BpeGVsX2Zvcm1hdF90b19icHAoZHNpLT5mb3JtYXQpOwo+
ICAgCWlmIChicHAgPCAwKSB7CgpMb29rcyBnb29kIGZvciBtZSwgQXBwbGllZCB0byBteSBkcm0t
bmV4dCBicmFuY2guIDotKQoKVGhhbmtzLgoKLS0gCu+8rWFyayBZYW8KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0
CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

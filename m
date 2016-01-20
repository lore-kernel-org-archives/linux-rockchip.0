From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [patch] drm: rockchip: signedness bug in
 dw_mipi_dsi_get_lane_bps()
Date: Thu, 21 Jan 2016 00:14:25 +0100
Message-ID: <181674264.ynnWZU1Yz8@phil>
References: <20160120095352.GA19898@mwanda>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20160120095352.GA19898@mwanda>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

SGkgRGFuLAoKQW0gTWl0dHdvY2gsIDIwLiBKYW51YXIgMjAxNiwgMTI6NTM6NTIgc2NocmllYiBE
YW4gQ2FycGVudGVyOgo+ICJicHAiIG5lZWRzIHRvIGJlIHNpZ25lZCBmb3IgdGhlIGVycm9yIGhh
bmRsaW5nIHRvIHdvcmsuCj4gCj4gRml4ZXM6IDg0ZTA1NDA4ZmNmZSAoJ2RybTogcm9ja2NoaXA6
IFN1cHBvcnQgU3lub3BzeXMgRFcgTUlQSSBEU0knKQo+IFNpZ25lZC1vZmYtYnk6IERhbiBDYXJw
ZW50ZXIgPGRhbi5jYXJwZW50ZXJAb3JhY2xlLmNvbT4KClRoZXJlJ3MgYWxzbyAiZHJtL3JvY2tj
aGlwL2RzaTogZml4IGhhbmRsaW5nIG1pcGlfZHNpX3BpeGVsX2Zvcm1hdF90b19icHAgCnJlc3Vs
dCIgZnJvbSBBbmRyemVqIEhhamRhIGZyb20gamFudWFyeSB0aGUgMTR0aCBkb2luZyB0aGUgc2Ft
ZSBjaGFuZ2UuCgoKSGVpa28KCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9kdy1taXBpLWRzaS5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1k
c2kuYyBpbmRleCA3YmZlMjQzLi5jMzVlNWFmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2R3LW1pcGktZHNpLmMKPiBAQCAtNDYxLDcgKzQ2MSw4IEBAIHN0YXRpYyBpbnQgZHdfbWlwaV9k
c2lfcGh5X2luaXQoc3RydWN0IGR3X21pcGlfZHNpCj4gKmRzaSkKPiAKPiAgc3RhdGljIGludCBk
d19taXBpX2RzaV9nZXRfbGFuZV9icHMoc3RydWN0IGR3X21pcGlfZHNpICpkc2kpCj4gIHsKPiAt
CXVuc2lnbmVkIGludCBicHAsIGksIHByZTsKPiArCWludCBicHA7Cj4gKwl1bnNpZ25lZCBpbnQg
aSwgcHJlOwo+ICAJdW5zaWduZWQgbG9uZyBtcGNsaywgcGxscmVmLCB0bXA7Cj4gIAl1bnNpZ25l
ZCBpbnQgbSA9IDEsIG4gPSAxLCB0YXJnZXRfbWJwcyA9IDEwMDA7Cj4gIAl1bnNpZ25lZCBpbnQg
bWF4X21icHMgPSBkcHRkaW5fbWFwW0FSUkFZX1NJWkUoZHB0ZGluX21hcCkgLSAKMV0ubWF4X21i
cHM7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmkt
ZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

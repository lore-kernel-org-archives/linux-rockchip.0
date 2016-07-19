From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: Delete an unnecessary check before
 drm_gem_object_unreference_unlocked()
Date: Tue, 19 Jul 2016 09:59:29 +0800
Message-ID: <578D8981.2070102@rock-chips.com>
References: <5307CAA2.8060406@users.sourceforge.net>
 <alpine.DEB.2.02.1402212321410.2043@localhost6.localdomain6>
 <530A086E.8010901@users.sourceforge.net>
 <alpine.DEB.2.02.1402231635510.1985@localhost6.localdomain6>
 <530A72AA.3000601@users.sourceforge.net>
 <alpine.DEB.2.02.1402240658210.2090@localhost6.localdomain6>
 <530B5FB6.6010207@users.sourceforge.net>
 <alpine.DEB.2.10.1402241710370.2074@hadrien>
 <530C5E18.1020800@users.sourceforge.net>
 <alpine.DEB.2.10.1402251014170.2080@hadrien>
 <530CD2C4.4050903@users.sourceforge.net>
 <alpine.DEB.2.10.1402251840450.7035@hadrien>
 <530CF8FF.8080600@users.sourceforge.net>
 <alpine.DEB.2.02.1402252117150.2047@localhost6.localdomain6>
 <530DD06F.4090703@users.sourceforge.net>
 <alpine.DEB.2.02.1402262129250.2221@localhost6.localdomain6>
 <5317A59D.4@users.sourceforge.net>
 <b66399ed-278b-b85d-4a21-b34164936ef6@users.sourceforge.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <b66399ed-278b-b85d-4a21-b34164936ef6@users.sourceforge.net>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: SF Markus Elfring <elfring@users.sourceforge.net>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Julia Lawall <julia.lawall@lip6.fr>, kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNuW5tDA35pyIMTXml6UgMjE6MzUsIFNGIE1hcmt1cyBFbGZyaW5nIHdyb3RlOgo+IEZy
b206IE1hcmt1cyBFbGZyaW5nIDxlbGZyaW5nQHVzZXJzLnNvdXJjZWZvcmdlLm5ldD4KPiBEYXRl
OiBGcmksIDE1IEp1bCAyMDE2IDE1OjIzOjIyICswMjAwCj4KPiBUaGUgZHJtX2dlbV9vYmplY3Rf
dW5yZWZlcmVuY2VfdW5sb2NrZWQoKSBmdW5jdGlvbiB0ZXN0cyB3aGV0aGVyCj4gaXRzIGFyZ3Vt
ZW50IGlzIE5VTEwgYW5kIHRoZW4gcmV0dXJucyBpbW1lZGlhdGVseS4KPiBUaHVzIHRoZSB0ZXN0
IGFyb3VuZCB0aGUgY2FsbCBpcyBub3QgbmVlZGVkLgo+Cj4gVGhpcyBpc3N1ZSB3YXMgZGV0ZWN0
ZWQgYnkgdXNpbmcgdGhlIENvY2NpbmVsbGUgc29mdHdhcmUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBN
YXJrdXMgRWxmcmluZyA8ZWxmcmluZ0B1c2Vycy5zb3VyY2Vmb3JnZS5uZXQ+Cj4gLS0tCj4gICBk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMgfCA4ICsrLS0tLS0tCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYwo+IGluZGV4IDIwZjEyYmMu
LjZmNjRlNzkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlw
X2RybV9mYi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9m
Yi5jCj4gQEAgLTQzLDE0ICs0MywxMCBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKnJvY2tjaGlw
X2ZiX2dldF9nZW1fb2JqKHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLAo+ICAgc3RhdGljIHZv
aWQgcm9ja2NoaXBfZHJtX2ZiX2Rlc3Ryb3koc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIpCj4g
ICB7Cj4gICAJc3RydWN0IHJvY2tjaGlwX2RybV9mYiAqcm9ja2NoaXBfZmIgPSB0b19yb2NrY2hp
cF9mYihmYik7Cj4gLQlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iajsKPiAgIAlpbnQgaTsKPiAg
IAo+IC0JZm9yIChpID0gMDsgaSA8IFJPQ0tDSElQX01BWF9GQl9CVUZGRVI7IGkrKykgewo+IC0J
CW9iaiA9IHJvY2tjaGlwX2ZiLT5vYmpbaV07Cj4gLQkJaWYgKG9iaikKPiAtCQkJZHJtX2dlbV9v
YmplY3RfdW5yZWZlcmVuY2VfdW5sb2NrZWQob2JqKTsKPiAtCX0KPiArCWZvciAoaSA9IDA7IGkg
PCBST0NLQ0hJUF9NQVhfRkJfQlVGRkVSOyBpKyspCj4gKwkJZHJtX2dlbV9vYmplY3RfdW5yZWZl
cmVuY2VfdW5sb2NrZWQocm9ja2NoaXBfZmItPm9ialtpXSk7Cj4gICAKR29vZCwgVGhhbmtzIGZv
ciB0aGUgZml4ZXMsIEFwcGxpZWQgdG8gbXkgZHJtLWZpeGVzLgoKPiAgIAlkcm1fZnJhbWVidWZm
ZXJfY2xlYW51cChmYik7Cj4gICAJa2ZyZWUocm9ja2NoaXBfZmIpOwoKCi0tIArvvK1hcmsgWWFv
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRl
dmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

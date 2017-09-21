From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH 7/7] drm/rockchip: Cocci spatch "vma_pages"
Date: Thu, 21 Sep 2017 09:02:22 +0800
Message-ID: <d2298979-3094-744c-3d28-76a0ba4a1137@rock-chips.com>
References: <1505946334393-568186305-0-diffsplit-thomas@m3y3r.de>
 <1505946334393-988165015-7-diffsplit-thomas@m3y3r.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1505946334393-988165015-7-diffsplit-thomas@m3y3r.de>
Content-Language: en-US
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Thomas Meyer <thomas@m3y3r.de>, airlied@linux.ie, heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxN+W5tDA55pyIMjHml6UgMDY6MjksIFRob21hcyBNZXllciB3cm90ZToKPiBVc2Ugdm1h
X3BhZ2VzIGZ1bmN0aW9uIG9uIHZtYSBvYmplY3QgaW5zdGVhZCBvZiBleHBsaWNpdCBjb21wdXRh
dGlvbi4KPiBGb3VuZCBieSBjb2NjaW5lbGxlIHNwYXRjaCAiYXBpL3ZtYV9wYWdlcy5jb2NjaSIK
Pgo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBNZXllciA8dGhvbWFzQG0zeTNyLmRlPgo+IC0tLQpM
b29rcyBnb29kIGZvciBtZToKQWNrZWQtYnk6IE1hcmsgWWFvIDxtYXJrLnlhb0Byb2NrLWNoaXBz
LmNvbT4KCj4KPiBkaWZmIC11IC1wIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlw
X2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwo+IEBAIC0yMjAs
NyArMjIwLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9kcm1fZ2VtX29iamVjdF9tbWFwXwo+ICAg
ewo+ICAgCXN0cnVjdCByb2NrY2hpcF9nZW1fb2JqZWN0ICpya19vYmogPSB0b19yb2NrY2hpcF9v
Ymoob2JqKTsKPiAgIAl1bnNpZ25lZCBpbnQgaSwgY291bnQgPSBvYmotPnNpemUgPj4gUEFHRV9T
SElGVDsKPiAtCXVuc2lnbmVkIGxvbmcgdXNlcl9jb3VudCA9ICh2bWEtPnZtX2VuZCAtIHZtYS0+
dm1fc3RhcnQpID4+IFBBR0VfU0hJRlQ7Cj4gKwl1bnNpZ25lZCBsb25nIHVzZXJfY291bnQgPSB2
bWFfcGFnZXModm1hKTsKPiAgIAl1bnNpZ25lZCBsb25nIHVhZGRyID0gdm1hLT52bV9zdGFydDsK
PiAgIAl1bnNpZ25lZCBsb25nIG9mZnNldCA9IHZtYS0+dm1fcGdvZmY7Cj4gICAJdW5zaWduZWQg
bG9uZyBlbmQgPSB1c2VyX2NvdW50ICsgb2Zmc2V0Owo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+Cj4KPgoKLS0gCu+8rWFy
ayBZYW8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
cmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

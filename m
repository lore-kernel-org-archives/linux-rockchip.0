From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: fix NULL check on devm_kzalloc() return
 value
Date: Fri, 7 Jul 2017 08:56:28 +0800
Message-ID: <595EDC3C.1010801@rock-chips.com>
References: <20170706215833.GA25411@embeddedgus>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170706215833.GA25411@embeddedgus>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: "Gustavo A. R. Silva" <garsilva@embeddedor.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxN+W5tDA35pyIMDfml6UgMDU6NTgsIEd1c3Rhdm8gQS4gUi4gU2lsdmEgd3JvdGU6Cj4g
VGhlIHJpZ2h0IHZhcmlhYmxlIHRvIGNoZWNrIGhlcmUgaXMgcG9ydCwgbm90IGRwLgo+Cj4gVGhp
cyBpc3N1ZSB3YXMgZGV0ZWN0ZWQgdXNpbmcgQ29jY2luZWxsZSBhbmQgdGhlIGZvbGxvd2luZyBz
ZW1hbnRpYyBwYXRjaDoKPgo+IEBACj4gZXhwcmVzc2lvbiB4Owo+IGlkZW50aWZpZXIgZmxkOwo+
IEBACj4KPiAqIHggPSBkZXZtX2t6YWxsb2MoLi4uKTsKPiAgICAuLi4gd2hlbiAhPSB4ID09IE5V
TEwKPiAgICB4LT5mbGQKPgo+IFNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGdh
cnNpbHZhQGVtYmVkZGVkb3IuY29tPgoKVGhhbmtzIGZvciB0aGUgZml4LAoKQWNrZWQtYnk6IE1h
cmsgWWFvIDxtYXJrLnlhb0Byb2NrLWNoaXBzLmNvbT4KCj4gLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1k
cC1jb3JlLmMKPiBpbmRleCAxNGZhMWY4Li45YjBiMDU4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL2Nkbi1kcC1jb3JlLmMKPiBAQCAtMTE5NSw3ICsxMTk1LDcgQEAgc3RhdGljIGludCBj
ZG5fZHBfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAkJCWNvbnRpbnVl
Owo+ICAgCj4gICAJCXBvcnQgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnBvcnQpLCBHRlBf
S0VSTkVMKTsKPiAtCQlpZiAoIWRwKQo+ICsJCWlmICghcG9ydCkKPiAgIAkJCXJldHVybiAtRU5P
TUVNOwo+ICAgCj4gICAJCXBvcnQtPmV4dGNvbiA9IGV4dGNvbjsKCgotLSAK77ytYXJrIFlhbwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZl
bCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

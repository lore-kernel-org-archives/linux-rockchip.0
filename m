From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v4 03/13] drm/rockchip: return a true clock rate to
 adjusted_mode
Date: Fri, 20 Nov 2015 16:57:04 +0800
Message-ID: <564EE060.5040404@rock-chips.com>
References: <1448007339-10966-1-git-send-email-zyw@rock-chips.com>
 <1448007339-10966-4-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1448007339-10966-4-git-send-email-zyw@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Chris Zhong <zyw@rock-chips.com>, heiko@sntech.de, linux-rockchip@lists.infradead.org, treding@nvidia.com, emil.l.velikov@gmail.com
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rmk+kernel@arm.linux.org.uk, ajaykumar.rs@samsung.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNeW5tDEx5pyIMjDml6UgMTY6MTUsIENocmlzIFpob25nIHdyb3RlOgo+IFNpbmNlIHRo
ZSBtaXBpIGRzaSBkcml2ZXIgbmVlZCB0byB1c2UgdGhlIGNsb2NrIG9mIHZvcCB0byBtYWtlIHRo
ZQo+IGNhbGN1bGF0aW9uIG9mIEJsYW5raW5nLiBCdXQgc29tZXRpbWVzIHRoZSBjbG9jayBkcml2
ZXIgY2FuIG5vdCBzZXQgYQo+IGFjY3VyYXRlIGNsb2NrX3JhdGUgZm9yIHZvcCwgZ2V0IGl0IGJ5
IGNsa19yb3VuZF9yYXRlIGJlZm9yZSBtb2RlX3NldCwKPiBzbyB3ZSBjYW4gZ2V0IHRoZSB0cnVl
IHZhbHVlLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgWmhvbmcgPHp5d0Byb2NrLWNoaXBzLmNv
bT4KPgo+IC0tLQo+Cj4gQ2hhbmdlcyBpbiB2NDoKPiB1c2UgY2xrX3JvdW5kX3JhdGUgdG8gY2hl
Y2sgdGhlIGNsb2NrIHJhdGUgaW4gdm9wX2NydGNfbW9kZV9maXh1cAo+Cj4gQ2hhbmdlcyBpbiB2
MzogTm9uZQo+IENoYW5nZXMgaW4gdjI6IE5vbmUKPgo+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV92b3AuYyB8IDUgKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX3ZvcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92
b3AuYwo+IGluZGV4IDVkOGFlNWUuLmVmZjU0NWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPiBAQCAtMTEzNiw5ICsxMTM2LDE0IEBAIHN0YXRp
YyBib29sIHZvcF9jcnRjX21vZGVfZml4dXAoc3RydWN0IGRybV9jcnRjICpjcnRjLAo+ICAgCQkJ
CWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlLAo+ICAgCQkJCXN0cnVjdCBkcm1f
ZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlKQo+ICAgewo+ICsJc3RydWN0IHZvcCAqdm9wID0g
dG9fdm9wKGNydGMpOwo+ICsKPiAgIAlpZiAoYWRqdXN0ZWRfbW9kZS0+aHRvdGFsID09IDAgfHwg
YWRqdXN0ZWRfbW9kZS0+dnRvdGFsID09IDApCj4gICAJCXJldHVybiBmYWxzZTsKPiAgIAo+ICsJ
YWRqdXN0ZWRfbW9kZS0+Y2xvY2sgPQo+ICsJCWNsa19yb3VuZF9yYXRlKHZvcC0+ZGNsaywgbW9k
ZS0+Y2xvY2sgKiAxMDAwKSAvIDEwMDA7Cj4gKwo+ICAgCXJldHVybiB0cnVlOwo+ICAgfQo+ICAg
Ckxvb2tzIGdvb2QgZm9yIG1lLCBzbwogICAgIEFja2VkLWJ5OiBNYXJrIFlhbyA8bWFyay55YW9A
cm9jay1jaGlwcy5jb20+CgoKLS0gCu+8rWFyayBZYW8KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

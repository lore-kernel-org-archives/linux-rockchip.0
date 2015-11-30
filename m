From: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: override thermal settings on
 veyron-speedy
Date: Mon, 30 Nov 2015 22:00:41 +0800
Message-ID: <565C5689.60208@gmail.com>
References: <2402718.WBE9iyTUZ2@diego> <2523702.pCcOIjvoVs@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2523702.pCcOIjvoVs@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Romain Perier <romain.perier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgSGVpa28sCgrlnKggMjAxNeW5tDEx5pyIMzDml6UgMjE6MTQsIEhlaWtvIFN0w7xibmVyIOWG
memBkzoKPiBBY2NvcmRpbmcgdG8gYSBjb21taXQgb24gdGhlIENocm9tZU9TIGtlcm5lbCwgdGhl
IHRlbXBlcmF0dXJlIG9mIHRoZSBTcGVlZHkKPiBzdXJmYWNlIGlzIG92ZXIgc2tpbiB0ZW1wZXJh
dHVyZSBzcGVjLiBTbyBhZGp1c3QgdGhlIHRoZXJtYWwgc2V0dGluZ3MKPiB0byBtaW1pYyB0aGUg
Q2hyb21lT1MgdHJlZSB0byBzdGF5IHdpdGhpbiB0aGVzZSBzcGVjIGxpbWl0cy4KPgo+IFNpZ25l
ZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckBjb2xsYWJvcmEuY29tPgo+
IC0tLQo+ICAgYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzIHwgOCAr
KysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0cyBiL2FyY2gvYXJt
L2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0cwo+IGluZGV4IGE3ZWE3ZDAuLmIzNGE3
YjUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHku
ZHRzCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzCj4g
QEAgLTg4LDYgKzg4LDE0IEBACj4gICAJfTsKPiAgIH07Cj4gICAKPiArJmNwdV9hbGVydDAgewo+
ICsJdGVtcGVyYXR1cmUgPSA8NjUwMDA+Owo+ICt9Owo+ICsKPiArJmNwdV9hbGVydDEgewo+ICsJ
dGVtcGVyYXR1cmUgPSA8NzAwMDA+Owo+ICt9Owo+ICsKCgpZZXAsIGFzIHRoZSBtYXNzIG9mIHRo
ZXJtYWwgZGF0YSBmcm9tIE9FTSB3aXRoIGFsbCBraW5kcyBvZiB0ZXN0aW5nLgpUaGUgNjUvNzAg
ZGVncmVlIGlzIHZlcnkgc3VpdCBmb3Igc3BlZWR5LiAoZS5nLjogUG93ZXIsIFBlcmZvcm1hbmNl
KS4KClNvLCAgZmVlbCBmcmVlIGFkZCBteSB0YWc6IDotKQoKUmV2aWV3ZWQtYnk6IENhZXNhciBX
YW5nIDx3eHRAcm9jay1jaGlwcy5jb20+CgoKPiAgICZyazgwOCB7Cj4gICAJcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsKPiAgIAlwaW5jdHJsLTAgPSA8JnBtaWNfaW50X2w+OwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

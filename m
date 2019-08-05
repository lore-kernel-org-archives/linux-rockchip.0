From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 03/15] rockchip: rk3288: Print reset reason
Date: Mon, 5 Aug 2019 20:30:21 +0800
Message-ID: <98408a3c-84bd-d54b-1b3a-49901c85ba3c@rock-chips.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-4-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190729074711.16988-4-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Wadim Egorov <w.egorov-guT5V/WYfQezQB+pC5nmwQ@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMTkvNy8yOSDkuIvljYgzOjQ2LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFByaW50IHRoZSBy
ZWFzb24gZm9yIHJlc2V0IGluc3RlYWQgb2Ygc3RvcmluZyBpdCBpbnRvCj4gZW52IHZhcmlhYmxl
IGluIHJrMzI4OC4KPgo+IFRoaXMgd291bGQgaGVscCB0byBmaW5kIHRoZSByZXNldCByZWFzb24g
ZGlyZWN0bHkKPiBvbiBVLUJvb3QgcHJvcGVyIGxvZ3MuCj4KPiBDYzogV2FkaW0gRWdvcm92IDx3
LmVnb3JvdkBwaHl0ZWMuZGU+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1h
cnVsYXNvbHV0aW9ucy5jb20+Cj4gLS0tCj4gICBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzI4
OC1ib2FyZC5jIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyODgt
Ym9hcmQuYyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMjg4LWJvYXJkLmMKPiBpbmRleCBk
M2VjMTQxZmVhLi42MTMyNjRkN2VlIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL21hY2gtcm9ja2No
aXAvcmszMjg4LWJvYXJkLmMKPiArKysgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzI4OC1i
b2FyZC5jCj4gQEAgLTcyLDcgKzcyLDcgQEAgc3RhdGljIHZvaWQgcmszMjg4X2RldGVjdF9yZXNl
dF9yZWFzb24odm9pZCkKPiAgIAkJcmVhc29uID0gInVua25vd24gcmVzZXQiOwo+ICAgCX0KPiAg
IAo+IC0JZW52X3NldCgicmVzZXRfcmVhc29uIiwgcmVhc29uKTsKPiArCXByaW50ZigiUmVzZXQg
Y2F1c2U6ICVzXG4iLCByZWFzb24pOwoKCldoeSB0aGlzIG5lZWQgdG8gc2V0IGFzIGVudiBiZWZv
cmU/IEkgZGlkbid0IHRvdWNoIHRoaXMgY29kZSB3aGVuIEkgbWlncmF0ZQoKdGhlIGNvZGUgdG8g
dXNlIGNvbW1vbiBib2FyZCBmaWxlLiBJZiB0aGlzIG5vIG5lZWQgdG8gc2V0IGVudiwgdGhlbiB0
aGlzCgpjYWxsIGJhY2sgY2FuIGdvdG8gYm9hcmRfaW5pdCgpIGluc3RlYWQgb2YgYm9hcmRfbGF0
ZV9pbml0KCkuCgoKVGhhbmtzLAoKLSBLZXZlcgoKPiAgIAo+ICAgCS8qCj4gICAJICogQ2xlYXIg
Y3J1X2dsYl9yc3Rfc3QsIHNvIHdlIGNhbiBkZXRlcm1pbmUgdGhlIGxhc3QgcmVzZXQgY2F1c2UK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=

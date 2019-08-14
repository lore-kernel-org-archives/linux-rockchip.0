From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH 03/15] rockchip: rk3288: Print reset reason
Date: Wed, 14 Aug 2019 15:10:38 +0530
Message-ID: <CAMty3ZApcHpSmLtf4kTm+YqzpYMtGSU6N_Sm_xZNue2o73UvtQ@mail.gmail.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-4-jagan@amarulasolutions.com>
 <98408a3c-84bd-d54b-1b3a-49901c85ba3c@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <98408a3c-84bd-d54b-1b3a-49901c85ba3c-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Wadim Egorov <w.egorov-guT5V/WYfQezQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCA2OjAwIFBNIEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9j
ay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4KPiBPbiAyMDE5LzcvMjkg5LiL5Y2IMzo0NiwgSmFnYW4g
VGVraSB3cm90ZToKPiA+IFByaW50IHRoZSByZWFzb24gZm9yIHJlc2V0IGluc3RlYWQgb2Ygc3Rv
cmluZyBpdCBpbnRvCj4gPiBlbnYgdmFyaWFibGUgaW4gcmszMjg4Lgo+ID4KPiA+IFRoaXMgd291
bGQgaGVscCB0byBmaW5kIHRoZSByZXNldCByZWFzb24gZGlyZWN0bHkKPiA+IG9uIFUtQm9vdCBw
cm9wZXIgbG9ncy4KPiA+Cj4gPiBDYzogV2FkaW0gRWdvcm92IDx3LmVnb3JvdkBwaHl0ZWMuZGU+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNv
bT4KPiA+IC0tLQo+ID4gICBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzI4OC1ib2FyZC5jIHwg
MiArLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyODgtYm9hcmQu
YyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMjg4LWJvYXJkLmMKPiA+IGluZGV4IGQzZWMx
NDFmZWEuLjYxMzI2NGQ3ZWUgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlw
L3JrMzI4OC1ib2FyZC5jCj4gPiArKysgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzI4OC1i
b2FyZC5jCj4gPiBAQCAtNzIsNyArNzIsNyBAQCBzdGF0aWMgdm9pZCByazMyODhfZGV0ZWN0X3Jl
c2V0X3JlYXNvbih2b2lkKQo+ID4gICAgICAgICAgICAgICByZWFzb24gPSAidW5rbm93biByZXNl
dCI7Cj4gPiAgICAgICB9Cj4gPgo+ID4gLSAgICAgZW52X3NldCgicmVzZXRfcmVhc29uIiwgcmVh
c29uKTsKPiA+ICsgICAgIHByaW50ZigiUmVzZXQgY2F1c2U6ICVzXG4iLCByZWFzb24pOwo+Cj4K
PiBXaHkgdGhpcyBuZWVkIHRvIHNldCBhcyBlbnYgYmVmb3JlPyBJIGRpZG4ndCB0b3VjaCB0aGlz
IGNvZGUgd2hlbiBJIG1pZ3JhdGUKCkRvbid0IGtub3cgdGhlIHByb3BlciByZWFzb24gZm9yIHRo
aXMsIGllIHdoeSBJIGhhdmUgQ0NlZCBXYWRpbS4KCldhZGltLCBhbnkgY29tbWVudHM/CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

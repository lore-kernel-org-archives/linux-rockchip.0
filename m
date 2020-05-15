From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v3_2/6=5d_clk=3a_rk3399=3a_Enable/Disable_?=
 =?UTF-8?B?dGhlIFBDSUVQSFkgY2xr44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9j?=
 =?UTF-8?Q?kchip-bounces+kever=2eyang=3drock-chips=2ecom=40lists=2einfradead?=
 =?UTF-8?B?Lm9yZ+S7o+WPkeOAkQ==?=
Date: Fri, 15 May 2020 10:52:56 +0800
Message-ID: <4d8e20db-c14b-8ea1-ab95-1c7f2be98074@rock-chips.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
 <20200509165624.20791-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200509165624.20791-3-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: patrick-Er2xLVyhcs+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMjAvNS8xMCDkuIrljYgxMjo1NiwgSmFnYW4gVGVraSB3cm90ZToKPiBFbmFibGUvRGlz
YWJsZSB0aGUgUENJRVBIWSBjbGsgZm9yIHJrMzM5OS4KPgo+IENMSyBpcyBjbGVhciBpbiBib3Ro
IGVuYWJsZSBhbmQgZGlzYWJsZSBmdW5jdGlvbmFsaXR5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFn
YW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIg
WWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+
IENoYW5nZXMgZm9yIHYzOgo+IC0gbm9uZQo+Cj4gICBkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtf
cmszMzk5LmMgfCA2ICsrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYyBiL2RyaXZl
cnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYwo+IGluZGV4IDVkMmJkYjQyYzcuLjVmYjcyZDgz
YzIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jCj4gKysr
IGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jCj4gQEAgLTExMzYsNiArMTEzNiw5
IEBAIHN0YXRpYyBpbnQgcmszMzk5X2Nsa19lbmFibGUoc3RydWN0IGNsayAqY2xrKQo+ICAgCWNh
c2UgSENMS19IT1NUMV9BUkI6Cj4gICAJCXJrX2NscnJlZygmcHJpdi0+Y3J1LT5jbGtzZWxfY29u
WzIwXSwgQklUKDgpKTsKPiAgIAkJYnJlYWs7Cj4gKwljYXNlIFNDTEtfUENJRVBIWV9SRUY6Cj4g
KwkJcmtfY2xycmVnKCZwcml2LT5jcnUtPmNsa3NlbF9jb25bMThdLCBCSVQoMTApKTsKPiArCQli
cmVhazsKPiAgIAlkZWZhdWx0Ogo+ICAgCQlkZWJ1ZygiJXM6IHVuc3VwcG9ydGVkIGNsayAlbGRc
biIsIF9fZnVuY19fLCBjbGstPmlkKTsKPiAgIAkJcmV0dXJuIC1FTk9FTlQ7Cj4gQEAgLTEyMDks
NiArMTIxMiw5IEBAIHN0YXRpYyBpbnQgcmszMzk5X2Nsa19kaXNhYmxlKHN0cnVjdCBjbGsgKmNs
aykKPiAgIAljYXNlIEhDTEtfSE9TVDFfQVJCOgo+ICAgCQlya19zZXRyZWcoJnByaXYtPmNydS0+
Y2xrc2VsX2NvblsyMF0sIEJJVCg4KSk7Cj4gICAJCWJyZWFrOwo+ICsJY2FzZSBTQ0xLX1BDSUVQ
SFlfUkVGOgo+ICsJCXJrX2NscnJlZygmcHJpdi0+Y3J1LT5jbGtzZWxfY29uWzE4XSwgQklUKDEw
KSk7Cj4gKwkJYnJlYWs7Cj4gICAJZGVmYXVsdDoKPiAgIAkJZGVidWcoIiVzOiB1bnN1cHBvcnRl
ZCBjbGsgJWxkXG4iLCBfX2Z1bmNfXywgY2xrLT5pZCk7Cj4gICAJCXJldHVybiAtRU5PRU5UOwoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

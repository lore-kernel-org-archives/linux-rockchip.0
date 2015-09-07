From: Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 2/4] ARM: multi_v7_defconfig: Enable ACT8865 PMIC driver
Date: Mon, 7 Sep 2015 18:49:02 +0800
Message-ID: <55ED6B9E.1030705@rock-chips.com>
References: <1441570566-14001-1-git-send-email-sjoerd.simons@collabora.co.uk>
 <1441570566-14001-3-git-send-email-sjoerd.simons@collabora.co.uk>
 <3043964.0UPNRg7XJB@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <3043964.0UPNRg7XJB@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org>
Cc: Krzysztof Kozlowski <k.kozlowski-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Russell King <linux-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Geert Uytterhoeven <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Ray Jui <rjui-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Javier Martinez Canillas <javier-JPH+aEBZ4P+UEJcrhfAQsw@public.gmane.org>, Kukjin Kim <kgene-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Alexandre Belloni <alexandre.belloni-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>, Stephen Warren <swarren-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>, Thierry Reding <treding-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>, Lee Jones <lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

UE1JQyBSSzgwOCB1c2VkIG9uIG1hbnkgcmszMjg4IGJvYXJkcyAsc3VjaCBhcyBQb3BtZXRhbC4K
SXQgaXMgYSBNRkQgd2l0aCBmdW5jdGlvbiByZWd1bGF0b3IgYW5kIFJUQy4gU28gaWYgeW91IHBs
YW4gdG8gZW5hYmxlClJLODA4LCBwbGVhc2UgYWxzbyBlbmFibGUgQ09ORklHX1JUQ19EUlZfUks4
MDguCgp0aGFua3MuCgpPbiAyMDE15bm0MDnmnIgwN+aXpSAxNzozMywgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gSGksCj4KPiBJIGd1ZXNzIG9uZSBjb3VsZCByZW5hbWUgdGhhdCB0byBzb21ldGhp
bmcgbGlrZQo+ICJBUk06IG11bHRpX3Y3X2RlZmNvbmZpZzogRW5hYmxlIHJlZ3VsYXRvcnMgdXNl
ZCBvbiBtb3N0IHJvY2tjaGlwIGJvYXJkcyIKPgo+IGFuZCBhcyB3ZWxsIGFkZAo+Cj4gQ09ORklH
X1JFR1VMQVRPUl9GQU41MzU1NT15Cj4gQ09ORklHX01GRF9SSzgwOD15Cj4gQ09ORklHX1JFR1VM
QVRPUl9SSzgwOD15Cj4KPiBmYW41MzU1IGlzIHRoZSBkcml2ZXIgcHJvdmlkaW5nIHN1cHBvcnQg
Zm9yIHRoZSBzeXI4MnggdXNlZCBvbiBhbGwgcmszMjg4Cj4gYm9hcmRzIHdpdGggYW4gYWN0ODg0
Ni4KPgo+Cj4KPiBBbSBTb25udGFnLCA2LiBTZXB0ZW1iZXIgMjAxNSwgMjI6MTY6MDQgc2Nocmll
YiBTam9lcmQgU2ltb25zOgo+PiBBY3RpdmUgU2VtaSBhY3Q4ODQ2IGlzIHVzZWQgYXMgdGhlIFBN
SUMgb24gdmFyaW91cyBSb2NrY2hpcCBib2FyZHMsCj4+IGVuYWJsZSB0aGUgQUNUODg2NSBkcml2
ZXIgdG8gc3VwcG9ydCB0aGlzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTam9lcmQgU2ltb25zIDxz
am9lcmQuc2ltb25zQGNvbGxhYm9yYS5jby51az4KPgo+PiAtLS0KPj4KPj4gICBhcmNoL2FybS9j
b25maWdzL211bHRpX3Y3X2RlZmNvbmZpZyB8IDEgKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vY29uZmlncy9tdWx0aV92N19k
ZWZjb25maWcKPj4gYi9hcmNoL2FybS9jb25maWdzL211bHRpX3Y3X2RlZmNvbmZpZyBpbmRleCAy
NWExZDU3NC4uNzA1OGZlZiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm0vY29uZmlncy9tdWx0aV92
N19kZWZjb25maWcKPj4gKysrIGIvYXJjaC9hcm0vY29uZmlncy9tdWx0aV92N19kZWZjb25maWcK
Pj4gQEAgLTQwMSw2ICs0MDEsNyBAQCBDT05GSUdfTUZEX1RQUzY1MDkwPXkKPj4gICBDT05GSUdf
TUZEX1RQUzY1ODZYPXkKPj4gICBDT05GSUdfTUZEX1RQUzY1OTEwPXkKPj4gICBDT05GSUdfUkVH
VUxBVE9SX0FCODUwMD15Cj4+ICtDT05GSUdfUkVHVUxBVE9SX0FDVDg4NjU9eQo+PiAgIENPTkZJ
R19SRUdVTEFUT1JfQVMzNzExPXkKPj4gICBDT05GSUdfUkVHVUxBVE9SX0FTMzcyMj15Cj4+ICAg
Q09ORklHX1JFR1VMQVRPUl9BWFAyMFg9eQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+Cj4KPgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

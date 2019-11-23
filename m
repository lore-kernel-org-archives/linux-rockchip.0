From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v2 06/10] fastboot: rockchip: Fix rk3328 default mmc device
Date: Sat, 23 Nov 2019 22:21:23 +0800
Message-ID: <00e0c1e1-b6f7-f3b7-d5cb-ece26ed806c7@rock-chips.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
 <20191119082623.6165-7-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191119082623.6165-7-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMTkvMTEvMTkg5LiL5Y2INDoyNiwgSmFnYW4gVGVraSB3cm90ZToKPiBUZWNobmljYWxs
eSB0aGUgZGVmYXVsdCBtbWMgZGV2aWNlIGZvciBmYXN0Ym9vdCB3b3VsZAo+IHVzZSBlTU1DIGlm
IHRoZSBib2FyZCBzdXBwb3J0IGZvciBpdC4KPgo+IFJvY2tjaGlwIHBsYXRmb3JtIGFjY2VzcyBk
ZXZpY2UgMCBmb3IgZU1NQyBzbywgdXNlIHRoZQo+IHNhbWUgZGV2aWNlIG51bWJlciBmb3Igcmsz
MzI4Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9u
cy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNv
bT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy9mYXN0Ym9vdC9LY29uZmlnIHwg
MSAtCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZmFzdGJvb3QvS2NvbmZpZyBiL2RyaXZlcnMvZmFzdGJvb3QvS2NvbmZpZwo+IGluZGV4
IDM0ODY0Y2E2MTMuLjQzM2VhMGRjM2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9mYXN0Ym9vdC9L
Y29uZmlnCj4gKysrIGIvZHJpdmVycy9mYXN0Ym9vdC9LY29uZmlnCj4gQEAgLTg5LDcgKzg5LDYg
QEAgZW5kY2hvaWNlCj4gICBjb25maWcgRkFTVEJPT1RfRkxBU0hfTU1DX0RFVgo+ICAgCWludCAi
RGVmaW5lIEZBU1RCT09UIE1NQyBGTEFTSCBkZWZhdWx0IGRldmljZSIKPiAgIAlkZXBlbmRzIG9u
IEZBU1RCT09UX0ZMQVNIX01NQwo+IC0JZGVmYXVsdCAxIGlmIFJPQ0tDSElQX1JLMzMyOAo+ICAg
CWRlZmF1bHQgMCBpZiBBUkNIX1JPQ0tDSElQCj4gICAJZGVmYXVsdCAwIGlmIEFSQ0hfU1VOWEkg
JiYgTU1DX1NVTlhJX1NMT1RfRVhUUkEgPSAtMQo+ICAgCWRlZmF1bHQgMSBpZiBBUkNIX1NVTlhJ
ICYmIE1NQ19TVU5YSV9TTE9UX0VYVFJBICE9IC0xCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

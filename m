From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 54/57] configs: rock-pi-4: Enable LPDDR4 support
Date: Tue, 16 Jul 2019 21:21:38 +0800
Message-ID: <04e9fc61-d867-509c-7516-5b62abf8e758@rock-chips.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-55-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190716115745.12585-55-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IER1ZSB0byBmb290
LXByaW50IGlzc3Vlcywgd2UgaGF2ZSBMUEREUjQgY29kZSBjYW4gYmUKPiBtYXJrZWQgYXMgQ09O
RklHX1JBTV9SSzMzOTlfTFBERFI0Lgo+Cj4gU28sIGVuYWJsZSBpdCBmb3IgUm9jay1QSS00IGJv
YXJkLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9u
cy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNv
bT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgY29uZmlncy9yb2NrLXBpLTQtcmszMzk5
X2RlZmNvbmZpZyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBk
aWZmIC0tZ2l0IGEvY29uZmlncy9yb2NrLXBpLTQtcmszMzk5X2RlZmNvbmZpZyBiL2NvbmZpZ3Mv
cm9jay1waS00LXJrMzM5OV9kZWZjb25maWcKPiBpbmRleCBiZTY3MGRmMjNmLi5jNmZjOWI5OTVk
IDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3Mvcm9jay1waS00LXJrMzM5OV9kZWZjb25maWcKPiArKysg
Yi9jb25maWdzL3JvY2stcGktNC1yazMzOTlfZGVmY29uZmlnCj4gQEAgLTI4LDYgKzI4LDcgQEAg
Q09ORklHX1NQTF9PRl9DT05UUk9MPXkKPiAgIENPTkZJR19ERUZBVUxUX0RFVklDRV9UUkVFPSJy
azMzOTktcm9jay1waS00Igo+ICAgQ09ORklHX09GX1NQTF9SRU1PVkVfUFJPUFM9InBpbmN0cmwt
MCBwaW5jdHJsLW5hbWVzIGNsb2NrLW5hbWVzIGludGVycnVwdC1wYXJlbnQgYXNzaWduZWQtY2xv
Y2tzIGFzc2lnbmVkLWNsb2NrLXJhdGVzIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMiCj4gICBDT05G
SUdfRU5WX0lTX0lOX01NQz15Cj4gK0NPTkZJR19SQU1fUkszMzk5X0xQRERSND15Cj4gICBDT05G
SUdfUk9DS0NISVBfR1BJTz15Cj4gICBDT05GSUdfU1lTX0kyQ19ST0NLQ0hJUD15Cj4gICBDT05G
SUdfTU1DX0RXPXkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=

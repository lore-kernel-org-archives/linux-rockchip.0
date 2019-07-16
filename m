From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 22/57] ram: rk3399: Add lpddr4 rank mask for wdql
 training
Date: Tue, 16 Jul 2019 21:11:49 +0800
Message-ID: <6043b64c-b4d1-8a2d-f3dc-7e683ef75aed@rock-chips.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-23-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190716115745.12585-23-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCByYW5rX21h
c2sgYmFzZWQgb24gdGhlIHJhbmsgbnVtYmVyIGZvciBscGRkcjQuCj4KPiBUaGlzIHdvdWxkIGtl
ZXAgdGhlIHdkcWwgZGF0YSB0cmFpbmluZyBsb29wIGJhc2VkIG9uIHRoZQo+IGRlc2lyZWQgcmFu
ayBtYXNrIHZhbHVlIGluc3RlYWQgb2YgbG9vcGluZyBmb3IgYWxsIHZhbHVlcy4KPgo+IFNpZ25l
ZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFlvdU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTog
S2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZl
cgo+IC0tLQo+ICAgZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCA1ICsrKyst
Cj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9kcml2ZXJz
L3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IDhlY2MzYTFiNzQuLjcxMTQ3NzE4
OGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiAr
KysgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC05MjUsNyArOTI1
LDEwIEBAIHN0YXRpYyBpbnQgZGF0YV90cmFpbmluZ193ZHFsKGNvbnN0IHN0cnVjdCBjaGFuX2lu
Zm8gKmNoYW4sIHUzMiBjaGFubmVsLAo+ICAgCS8qIGNsZWFyIGludGVycnVwdCxQSV8xNzUgUElf
SU5UX0FDSzpXUjowOjE3ICovCj4gICAJd3JpdGVsKDB4MDAwMDNmN2MsICgmZGVuYWxpX3BpWzE3
NV0pKTsKPiAgIAo+IC0JcmFua19tYXNrID0gKHJhbmsgPT0gMSkgPyAweDEgOiAweDM7Cj4gKwlp
ZiAocGFyYW1zLT5iYXNlLmRyYW10eXBlID09IExQRERSNCkKPiArCQlyYW5rX21hc2sgPSAocmFu
ayA9PSAxKSA/IDB4NSA6IDB4ZjsKPiArCWVsc2UKPiArCQlyYW5rX21hc2sgPSAocmFuayA9PSAx
KSA/IDB4MSA6IDB4MzsKPiAgIAo+ICAgCWZvciAoaSA9IDA7IGkgPCA0OyBpKyspIHsKPiAgIAkJ
aWYgKCEocmFua19tYXNrICYgKDEgPDwgaSkpKQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

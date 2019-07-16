From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 15/18] ram: rk3399: Compute stride for 1 channel a
Date: Tue, 16 Jul 2019 15:44:31 +0800
Message-ID: <2f87c2fb-2030-ca77-8ee0-2a50f1a3da44@rock-chips.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-16-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190715182856.21688-16-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzdHJpZGUg
Y29tcHV0YXRpb24gZm9yIHRoZSBzZHJhbSB3aGljaCBzdXBwb3J0Cj4gc2luZ2xlIGNoYW5uZWwg
YQo+Cj4gVGhpcyBjb25maWd1cmF0aW9uIGF2YWlsYWJsZSBpbiBOYW5vUGkgTkVPNCBhbmQgdGhl
Cj4gc2FtZSBjYW4gd29yayB3aXRoIGV4aXN0aW5nIHJrMzM5OS1zZHJhbS1kZHIzLTE4NjYuZHRz
aQo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogWW91TWluIENoZW4gPGN5bUByb2NrLWNoaXBzLmNvbT4KClJl
dmlld2VkLWJ5OiBLZXZlciBZYW5nIDxLZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtz
LAogwqAtIEtldmVyCj4gLS0tCj4gICBkcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTku
YyB8IDQgKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0v
cm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCBjNjI2ZWY2MDJjLi44YmJhY2I1Mjc1IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIv
ZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMTIxMSw2ICsxMjExLDEw
IEBAIHN0YXRpYyB1bnNpZ25lZCBjaGFyIGNhbGN1bGF0ZV9zdHJpZGUoc3RydWN0IHJrMzM5OV9z
ZHJhbV9wYXJhbXMgKnBhcmFtcykKPiAgIAkJY2hpbmZvIHw9IDEgPDwgY2hhbm5lbDsKPiAgIAl9
Cj4gICAKPiArCS8qIHN0cmlkZSBjYWxjdWxhdGlvbiBmb3IgMSBjaGFubmVsICovCj4gKwlpZiAo
cGFyYW1zLT5iYXNlLm51bV9jaGFubmVscyA9PSAxICYmIGNoaW5mbyAmIDEpCj4gKwkJcmV0dXJu
IDB4MTc7CS8qIGNoYW5uZWwgYSAqLwo+ICsKPiAgIAkvKiBzdHJpZGUgY2FsY3VsYXRpb24gZm9y
IDIgY2hhbm5lbHMsIGRlZmF1bHQgZ3N0cmlkZSB0eXBlIGlzIDI1NkIgKi8KPiAgIAlpZiAoY2hf
Y2FwWzBdID09IGNoX2NhcFsxXSkgewo+ICAgCQljYXAgPSBjaF9jYXBbMF0gKyBjaF9jYXBbMV07
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 37/57] ram: rk3399: Get lpddr4 tsel_rd_en from io
 settings
Date: Tue, 16 Jul 2019 21:15:55 +0800
Message-ID: <3c55add5-e542-77ee-aabe-60a1e9515e30@rock-chips.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-38-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190716115745.12585-38-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEZvciBiYXNlLm9k
dCAxIHRoZSBscGRkcjQgdHNlbF9yZF9lbiB2YWx1ZSBpcyBkZXBlbmRpbmcKPiBvbiBJTyBzZXR0
aW5ncyBvZiByZF9vZHRfZW4uCj4KPiBBZGQgc3VwcG9ydCBmb3IgaXQuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBZb3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVy
IFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAt
LS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIHwgOCArKysrKystLQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyBiL2RyaXZlcnMv
cmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXggZTBiZTlkMjQ4NS4uOWU0MDg4MDgz
NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+ICsr
KyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAgLTY0NSwxMCArNjQ1
LDE0IEBAIHN0YXRpYyB2b2lkIHNldF9kc19vZHQoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hh
biwKPiAgIAkJdHNlbF9ja2NzX3NlbGVjdF9uID0gUEhZX0RSVl9PRFRfMzRfMzsKPiAgIAl9Cj4g
ICAKPiAtCWlmIChwYXJhbXMtPmJhc2Uub2R0ID09IDEpCj4gKwlpZiAocGFyYW1zLT5iYXNlLm9k
dCA9PSAxKSB7Cj4gICAJCXRzZWxfcmRfZW4gPSAxOwo+IC0JZWxzZQo+ICsKPiArCQlpZiAocGFy
YW1zLT5iYXNlLmRyYW10eXBlID09IExQRERSNCkKPiArCQkJdHNlbF9yZF9lbiA9IGlvLT5yZF9v
ZHRfZW47Cj4gKwl9IGVsc2Ugewo+ICAgCQl0c2VsX3JkX2VuID0gMDsKPiArCX0KPiAgIAo+ICAg
CXRzZWxfd3JfZW4gPSAwOwo+ICAgCXRzZWxfaWRsZV9lbiA9IDA7CgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

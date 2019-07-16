From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 48/57] clk: rockchip: rk3399: Set 400MHz ddr clock
Date: Tue, 16 Jul 2019 21:19:50 +0800
Message-ID: <b77d895b-5d32-5b9c-be98-f74bd261f153@rock-chips.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-49-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190716115745.12585-49-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzdXBwb3J0
IGZvciBzZXR0aW5nIDQwME1IeiBkZHIgY2xvY2suCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBU
ZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZb3VNaW4g
Q2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPEtldmVy
LnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAgIGRyaXZl
cnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYyB8IDQgKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Ns
a19yazMzOTkuYyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYwo+IGluZGV4IDFk
ZTIxYzlmM2UuLjc5MDA3Yjg2ODIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAv
Y2xrX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jCj4g
QEAgLTgzOSw2ICs4MzksMTAgQEAgc3RhdGljIHVsb25nIHJrMzM5OV9kZHJfc2V0X2NsayhzdHJ1
Y3QgcmszMzk5X2NydSAqY3J1LAo+ICAgCQlkcGxsX2NmZyA9IChzdHJ1Y3QgcGxsX2RpdikKPiAg
IAkJey5yZWZkaXYgPSAyLCAuZmJkaXYgPSAxMDAsIC5wb3N0ZGl2MSA9IDQsIC5wb3N0ZGl2MiA9
IDF9Owo+ICAgCQlicmVhazsKPiArCWNhc2UgNDAwICogTUh6Ogo+ICsJCWRwbGxfY2ZnID0gKHN0
cnVjdCBwbGxfZGl2KQo+ICsJCXsucmVmZGl2ID0gMSwgLmZiZGl2ID0gNTAsIC5wb3N0ZGl2MSA9
IDMsIC5wb3N0ZGl2MiA9IDF9Owo+ICsJCWJyZWFrOwo+ICAgCWNhc2UgNjY2ICogTUh6Ogo+ICAg
CQlkcGxsX2NmZyA9IChzdHJ1Y3QgcGxsX2RpdikKPiAgIAkJey5yZWZkaXYgPSAyLCAuZmJkaXYg
PSAxMTEsIC5wb3N0ZGl2MSA9IDIsIC5wb3N0ZGl2MiA9IDF9OwoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

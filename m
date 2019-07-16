From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 47/57] clk: rockchip: rk3399: Set 50MHz ddr clock
Date: Tue, 16 Jul 2019 21:19:37 +0800
Message-ID: <2583ad54-2d93-dcb4-d372-52a8b1f16106@rock-chips.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-48-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190716115745.12585-48-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
IGZvciBzZXR0aW5nIDUwTUh6IGRkciBjbG9jay4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRl
a2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1pbiBD
aGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVy
cy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jIHwgNCArKysrCj4gICAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xr
X3JrMzM5OS5jIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jCj4gaW5kZXggNWQx
YWQ5NGU4NS4uMWRlMjFjOWYzZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9j
bGtfcmszMzk5LmMKPiArKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMKPiBA
QCAtODI3LDYgKzgyNywxMCBAQCBzdGF0aWMgdWxvbmcgcmszMzk5X2Rkcl9zZXRfY2xrKHN0cnVj
dCByazMzOTlfY3J1ICpjcnUsCj4gICAKPiAgIAkvKiAgY2xrX2RkcmMgPT0gRFBMTCA9IDI0TUh6
IC8gcmVmZGl2ICogZmJkaXYgLyBwb3N0ZGl2MSAvIHBvc3RkaXYyICovCj4gICAJc3dpdGNoIChz
ZXRfcmF0ZSkgewo+ICsJY2FzZSA1MCAqIE1IejoKPiArCQlkcGxsX2NmZyA9IChzdHJ1Y3QgcGxs
X2RpdikKPiArCQl7LnJlZmRpdiA9IDEsIC5mYmRpdiA9IDEyLCAucG9zdGRpdjEgPSAzLCAucG9z
dGRpdjIgPSAyfTsKPiArCQlicmVhazsKPiAgIAljYXNlIDIwMCAqIE1IejoKPiAgIAkJZHBsbF9j
ZmcgPSAoc3RydWN0IHBsbF9kaXYpCj4gICAJCXsucmVmZGl2ID0gMSwgLmZiZGl2ID0gNTAsIC5w
b3N0ZGl2MSA9IDYsIC5wb3N0ZGl2MiA9IDF9OwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_4/8=5d_clk=3a_rk3399=3a_Disable_PCIE=5fPHY?=
 =?UTF-8?B?IGNsb2Nr44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91?=
 =?UTF-8?Q?nces+kever=2eyang=3drock-chips=2ecom=40lists=2einfradead=2eorg?=
 =?UTF-8?B?5Luj5Y+R44CR?=
Date: Tue, 28 Apr 2020 17:53:31 +0800
Message-ID: <d4b055de-4cde-d99a-28e8-e98460786067@rock-chips.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
 <20200425110354.12381-5-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200425110354.12381-5-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, patrick-Er2xLVyhcs+zQB+pC5nmwQ@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMjAvNC8yNSDkuIvljYg3OjAzLCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBQQ0lFX1BI
WSBjbG9jayBkaXNhYmxlbWVudCBzdXBwb3J0IG9uIHJrMzM5OQo+IGNsb2NrIGRyaXZlci4KPgo+
IFRoaXMgd291bGQgdHJpZ2dlciBpZiB0aGUgUENJZSBQSFkgZHJpdmVyIGZhaWxlZCB0bwo+IGlu
aXRpYWxpemUgb3IgcG93ZXIgb24gdGhlIFBIWS4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRl
a2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKClJldmlld2VkLWJ5OiBLZXZlciBZYW5n
IDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gICBk
cml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMgfCAxNyArKysrKysrKysrKysrKysrKwo+
ICAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtf
cmszMzk5LmMKPiBpbmRleCA4ZTA2OWZiYWRlLi4yZDQ0N2Y5NmY3IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYwo+ICsrKyBiL2RyaXZlcnMvY2xrL3JvY2tj
aGlwL2Nsa19yazMzOTkuYwo+IEBAIC0xMDg1LDYgKzEwODUsMjIgQEAgc3RhdGljIGludCByazMz
OTlfY2xrX2VuYWJsZShzdHJ1Y3QgY2xrICpjbGspCj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gICAK
PiArc3RhdGljIGludCByazMzOTlfY2xrX2Rpc2FibGUoc3RydWN0IGNsayAqY2xrKQo+ICt7Cj4g
KwlzdHJ1Y3QgcmszMzk5X2Nsa19wcml2ICpwcml2ID0gZGV2X2dldF9wcml2KGNsay0+ZGV2KTsK
PiArCj4gKwlzd2l0Y2ggKGNsay0+aWQpIHsKPiArCWNhc2UgU0NMS19QQ0lFUEhZX1JFRjoKPiAr
CQlya19jbHJyZWcoJnByaXYtPmNydS0+Y2xrc2VsX2NvblsxOF0sIEJJVCg3KSk7Cj4gKwkJYnJl
YWs7Cj4gKwlkZWZhdWx0Ogo+ICsJCWRlYnVnKCIlczogdW5zdXBwb3J0ZWQgY2xrICVsZFxuIiwg
X19mdW5jX18sIGNsay0+aWQpOwo+ICsJCXJldHVybiAtRU5PRU5UOwo+ICsJfQo+ICsKPiArCXJl
dHVybiAwOwo+ICt9Cj4gKwo+ICAgc3RhdGljIHN0cnVjdCBjbGtfb3BzIHJrMzM5OV9jbGtfb3Bz
ID0gewo+ICAgCS5nZXRfcmF0ZSA9IHJrMzM5OV9jbGtfZ2V0X3JhdGUsCj4gICAJLnNldF9yYXRl
ID0gcmszMzk5X2Nsa19zZXRfcmF0ZSwKPiBAQCAtMTA5Miw2ICsxMTA4LDcgQEAgc3RhdGljIHN0
cnVjdCBjbGtfb3BzIHJrMzM5OV9jbGtfb3BzID0gewo+ICAgCS5zZXRfcGFyZW50ID0gcmszMzk5
X2Nsa19zZXRfcGFyZW50LAo+ICAgI2VuZGlmCj4gICAJLmVuYWJsZSA9IHJrMzM5OV9jbGtfZW5h
YmxlLAo+ICsJLmRpc2FibGUgPSByazMzOTlfY2xrX2Rpc2FibGUsCj4gICB9Owo+ICAgCj4gICAj
aWZkZWYgQ09ORklHX1NQTF9CVUlMRAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

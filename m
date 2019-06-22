From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 6/8] rockchip: rk3399: tpl: Add
	spl_board_init
Date: Sat, 22 Jun 2019 21:50:20 +0800
Message-ID: <177b2648-19e0-ff66-ba66-70a60c773903@rock-chips.com>
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
 <20190620185506.11449-7-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20190620185506.11449-7-jagan@amarulasolutions.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, u-boot@lists.denx.de
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org

SGkgSmFnYW4sCgoKT24gMDYvMjEvMjAxOSAwMjo1NSBBTSwgSmFnYW4gVGVraSB3cm90ZToKPiBB
ZGQgc3BsX2JvYXJkX2luaXQgZm9yIFRQTCwgdGhhdCBoYXZlIFRQTCBiYW5uZXIgd2lsbCBoZWxw
Cj4gdG8gcHJpbnQgdHBsIGJvb3QgcHJpbnRzLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVr
aSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8
a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICBhcmNo
L2FybS9tYWNoLXJvY2tjaGlwL3JrMzM5OS1ib2FyZC10cGwuYyB8IDcgKysrKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFj
aC1yb2NrY2hpcC9yazMzOTktYm9hcmQtdHBsLmMgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3Jr
MzM5OS1ib2FyZC10cGwuYwo+IGluZGV4IDg2ZDNmZmU5N2MuLjcyZDBkZDkxNGUgMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMzOTktYm9hcmQtdHBsLmMKPiArKysgYi9h
cmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzM5OS1ib2FyZC10cGwuYwo+IEBAIC04LDYgKzgsNyBA
QAo+ICAjaW5jbHVkZSA8ZG0uaD4KPiAgI2luY2x1ZGUgPHJhbS5oPgo+ICAjaW5jbHVkZSA8c3Bs
Lmg+Cj4gKyNpbmNsdWRlIDx2ZXJzaW9uLmg+Cj4gICNpbmNsdWRlIDxhc20vaW8uaD4KPiAgI2lu
Y2x1ZGUgPGFzbS9hcmNoLXJvY2tjaGlwL2Jvb3Ryb20uaD4KPiAgCj4gQEAgLTczLDYgKzc0LDEy
IEBAIHUzMiBzcGxfYm9vdF9kZXZpY2Uodm9pZCkKPiAgCXJldHVybiBCT09UX0RFVklDRV9CT09U
Uk9NOwo+ICB9Cj4gIAo+ICt2b2lkIHNwbF9ib2FyZF9pbml0KHZvaWQpCj4gK3sKPiArCXB1dHMo
IlxuVS1Cb290IFRQTCAiICBQTEFJTl9WRVJTSU9OICIgKCIgVV9CT09UX0RBVEUgIiAtICIKPiAr
CSAgICAgVV9CT09UX1RJTUUgIiAiIFVfQk9PVF9UWiAiKVxuIik7Cj4gK30KPiArCj4gICNpZmRl
ZiBDT05GSUdfU1BMX0xPQURfRklUCj4gIGludCBib2FyZF9maXRfY29uZmlnX25hbWVfbWF0Y2go
Y29uc3QgY2hhciAqbmFtZSkKPiAgewoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpVLUJvb3QgbWFpbGluZyBsaXN0ClUtQm9vdEBsaXN0cy5kZW54LmRl
Cmh0dHBzOi8vbGlzdHMuZGVueC5kZS9saXN0aW5mby91LWJvb3QK

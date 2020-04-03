From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: RE: [PATCH v6 02/11] arm64: defconfig: enable CONFIG_PCIE_RCAR_HOST
Date: Fri, 3 Apr 2020 09:44:58 +0000
Message-ID: <TYAPR01MB4544C82A8763A28034985C9DD8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB454403D69A74036B74CC8220D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <CAMuHMdVWn=U82k5RJnBaRUgRHh3bRfdncOupmX67-u-nbwsG9w@mail.gmail.com>
 <TYAPR01MB4544B6B749588A7390323D28D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <OSBPR01MB35905B0D9DB55E8FBA340341AAC70@OSBPR01MB3590.jpnprd01.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <OSBPR01MB35905B0D9DB55E8FBA340341AAC70@OSBPR01MB3590.jpnprd01.prod.outlook.com>
Content-Language: ja-JP
Sender: linux-pci-owner@vger.kernel.org
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Will Deacon <will@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>, Frank Rowand <frowand.list@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Jingoo Han <jingoohan1@gmail.com>, Simon Horman <horms@verge.net.au>, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

SGkgUHJhYmhha2FyLXNhbiwNCg0KPiBGcm9tOiBQcmFiaGFrYXIgTWFoYWRldiBMYWQsIFNlbnQ6
IEZyaWRheSwgQXByaWwgMywgMjAyMCA2OjMyIFBNDQo8c25pcD4NCj4gPiA+IEJUVywgSSdtIHdv
bmRlcmluZyBhYm91dCAiW1BBVENIIHY2IDA1LzExXSBQQ0k6IHJjYXI6IEZpeCBjYWxjdWxhdGlu
Zw0KPiA+ID4gbWFzayBmb3IgUENJRVBBTVIgcmVnaXN0ZXIiLiBDYW4gdGhlIGlzc3VlIGZpeGVk
IGJ5IHRoaXMgcGF0Y2ggaGFwcGVuIHdpdGgNCj4gPiA+IHRoZSBjdXJyZW50IGRyaXZlciBpbiBo
b3N0IG1vZGUsIG9yIGlzIHRoYXQgbGltaXRlZCB0byBlcCBtb2RlPw0KPiA+ID4gSW4gY2FzZSBv
ZiB0aGUgZm9ybWVyLCBwbGVhc2Ugc3VibWl0IGl0IHRvIHRoZSBQQ0kgbWFpbnRhaW5lciBhcyBh
IHNlcGFyYXRlDQo+ID4gPiBmaXguDQo+ID4NCj4gPiBUaGFuayB5b3UgZm9yIHBvaW50ZWQgaXQg
b3V0LiBJIHRoaW5rIHRoaXMgaXMgdGhlIGNhc2Ugb2YgdGhlIGZvcm1lci4NCj4gPiBJSVVDLCBp
ZiBzdWNoIGEgc21hbGwgd2luZG93IFBDSWUgZGV2aWNlIGV4aXN0cywgdGhlIGlzc3VlIGhhcHBl
bnMuDQo+ID4NCj4gPiBQcmFiaGFrYXItc2FuLCBpcyBteSB1bmRlcnN0YW5kaW5nIGNvcnJlY3Q/
DQo+ID4NCj4gVGhpcyBpc3N1ZSB3aWxsIG9ubHkgYmUgaGl0IG9uIEVQLCB3aGVuIGluIGhvc3Qg
bW9kZSB0aGUgc2l6ZXMgd2lsbCBiZSBmaXhlZCB0byAxIE1ieXRlcyAvMiBNYnl0ZXMgLzEyOCBN
Ynl0ZXMNCg0KVGhhbmsgeW91IGZvciB5b3VyIGNvbW1lbnQuIE5vdyBJIHVuZGVyc3Rvb2QgdGhp
cyBpcyByZWxhdGVkIHRvICJQQ0lFbiBtZW1vcnkgbSIgaW4gdGhlIGRvY3VtZW50DQphbmQgcmVs
YXRlZCB0byByYW5nZXMgcHJvcGVydHkgaW4gdGhlIGRldmljZSBub2RlLiBTbywgSSdkIGxpa2Ug
dG8gcmVjYWxsIG15IHByZXZpb3VzIGNvbW1lbnQgYW5kDQpJIGFncmVlIHRoZSBwYXRjaCAwNi8x
MSBpcyByZXF1aXJlZCBvbiBFUCBtb2RlIG9ubHkuDQoNCkJlc3QgcmVnYXJkcywNCllvc2hpaGly
byBTaGltb2RhDQoNCg==

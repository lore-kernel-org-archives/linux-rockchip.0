From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: RE: [PATCH v6 02/11] arm64: defconfig: enable CONFIG_PCIE_RCAR_HOST
Date: Fri, 3 Apr 2020 09:04:35 +0000
Message-ID: <TYAPR01MB4544B6B749588A7390323D28D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1585856319-4380-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1585856319-4380-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <TYAPR01MB454403D69A74036B74CC8220D8C70@TYAPR01MB4544.jpnprd01.prod.outlook.com>
 <CAMuHMdVWn=U82k5RJnBaRUgRHh3bRfdncOupmX67-u-nbwsG9w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAMuHMdVWn=U82k5RJnBaRUgRHh3bRfdncOupmX67-u-nbwsG9w@mail.gmail.com>
Content-Language: ja-JP
Sender: linux-kernel-owner@vger.kernel.org
To: Geert Uytterhoeven <geert@linux-m68k.org>, Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc: Will Deacon <will@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, Chris Paterson <Chris.Paterson2@renesas.com>, Frank Rowand <frowand.list@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Jingoo Han <jingoohan1@gmail.com>, Simon Horman <horms@verge.net.au>, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

SGkgR2VlcnQtc2FuLA0KDQpUaGFuayB5b3UgZm9yIHlvdXIgY29tbWVudHMhDQoNCj4gRnJvbTog
R2VlcnQgVXl0dGVyaG9ldmVuLCBTZW50OiBGcmlkYXksIEFwcmlsIDMsIDIwMjAgNToyOCBQTQ0K
PHNuaXA+DQo+ID4gQnV0LCBJJ20gdGhpbmtpbmcgdGhpcyBwYXRjaCAoYW5kIHBhdGNoIDAzLzEx
KSBzaG91bGQgYmUgc2VwYXJhdGVkDQo+ID4gZnJvbSB0aGlzIHBhdGNoIHNlcmllcyBmb3IgYXJt
NjQgc3Vic3lzdGVtIHRvIGVhc2UgbWFpbnRlbmFuY2UuDQo+ID4gTXkgc2NlbmFyaW8gaXM6DQo+
ID4gIDEpIHBhdGNoIHNlcmllcyAxOiBSLUNhciBQQ0llIGVuZHBvaW50IHN1cHBvcnQuDQo+ID4g
IC0tIFRoaXMgbWVhbnM6IHBhdGNoIDEsIDQgLSA5LCAxMQ0KPiA+DQo+ID4gIDIpIEFmdGVyIHRo
ZSBwYXRjaCBzZXJpZXMgMSBpcyBtZXJnZWQsIHN1Ym1pdCB0aGlzIHBhdGNoIDIvMTEgdG8gYXJt
IHN1YnN5c3RlbQ0KPiA+ICAgIGFuZCBzdWJtaXQgdGhlIHBhdGNoIDEwLzExIHRvIG1pc2Mgc3Vi
c3lzdGVtLg0KPiA+DQo+ID4gIDMpIEF0IGxhc3QsIHN1Ym1pdCBwYXRjaCAzLzExIGFmdGVyIHRo
ZSBwYXRjaCAyLzExIGlzIG1lcmdlZC4NCj4gPg0KPiA+IEdlZXJ0LXNhbiwgd2hhdCBkbyB5b3Ug
dGhpbms/DQo+IA0KPiBUaGFua3MsIEkgYWdyZWUgd2l0aCB5b3VyIHN1bW1hcnkuDQo+IA0KPiBJ
IGNhbiB0YWtlIHBhdGNoIDIvMTEgdGhyb3VnaCByZW5lc2FzLWRldmVsLg0KPiBQcm9iYWJseSBp
dCdzIGJlc3QgaWYgSSBzdWJtaXQgaXQgdG8gYXJtLXNvYyBhcyBhIGZpeCBmb3IgdjUuOCwgYWZ0
ZXINCj4gdGhlIGRyaXZlciBwYXJ0DQo+IGhhcyBiZWVuIG1lcmdlZCBpbnRvIHY1LjgtcmMxLCBz
byAzLzExIGNhbiBiZSBzdWJtaXR0ZWQgZm9yIHY1LjkuDQoNClRoYW5rIHlvdSEgSSBnb3QgaXQu
DQoNCj4gQlRXLCBJJ20gd29uZGVyaW5nIGFib3V0ICJbUEFUQ0ggdjYgMDUvMTFdIFBDSTogcmNh
cjogRml4IGNhbGN1bGF0aW5nDQo+IG1hc2sgZm9yIFBDSUVQQU1SIHJlZ2lzdGVyIi4gQ2FuIHRo
ZSBpc3N1ZSBmaXhlZCBieSB0aGlzIHBhdGNoIGhhcHBlbiB3aXRoDQo+IHRoZSBjdXJyZW50IGRy
aXZlciBpbiBob3N0IG1vZGUsIG9yIGlzIHRoYXQgbGltaXRlZCB0byBlcCBtb2RlPw0KPiBJbiBj
YXNlIG9mIHRoZSBmb3JtZXIsIHBsZWFzZSBzdWJtaXQgaXQgdG8gdGhlIFBDSSBtYWludGFpbmVy
IGFzIGEgc2VwYXJhdGUNCj4gZml4Lg0KDQpUaGFuayB5b3UgZm9yIHBvaW50ZWQgaXQgb3V0LiBJ
IHRoaW5rIHRoaXMgaXMgdGhlIGNhc2Ugb2YgdGhlIGZvcm1lci4NCklJVUMsIGlmIHN1Y2ggYSBz
bWFsbCB3aW5kb3cgUENJZSBkZXZpY2UgZXhpc3RzLCB0aGUgaXNzdWUgaGFwcGVucy4NCg0KUHJh
Ymhha2FyLXNhbiwgaXMgbXkgdW5kZXJzdGFuZGluZyBjb3JyZWN0Pw0KDQpCZXN0IHJlZ2FyZHMs
DQpZb3NoaWhpcm8gU2hpbW9kYQ0KDQo=

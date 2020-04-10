From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: RE: [PATCH v7 7/8] PCI: Add Renesas R8A774C0 device ID
Date: Fri, 10 Apr 2020 00:12:38 +0000
Message-ID: <TYAPR01MB4544313471DD93D131E82EF5D8DE0@TYAPR01MB4544.jpnprd01.prod.outlook.com>
References: <1586360280-10956-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586360280-10956-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <e3f5fa77-f78e-edbf-9efc-53b5ea620460@cogentembedded.com>
 <CA+V-a8s1E_kq_GENBTw3zGxKSPFnVKNY-ta9+c8W8nV4JFyEEw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CA+V-a8s1E_kq_GENBTw3zGxKSPFnVKNY-ta9+c8W8nV4JFyEEw@mail.gmail.com>
Content-Language: ja-JP
Sender: linux-kernel-owner@vger.kernel.org
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>, Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh+dt@kernel.org>, Andrew Murray <amurray@thegoodpenguin.co.uk>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, Tom Joseph <tjoseph@cadence.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-pci <linux-pci@vger.kernel.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, LAK <linux-arm-kernel@lists.infradead.org>, Linux-Renesas <linux-renesas-soc@vger.kern>
List-Id: linux-rockchip.vger.kernel.org

SGkgUHJhYmhha2FyLCBTZXJnZWksIEJqb3JuLA0KDQo+IEZyb206IExhZCwgUHJhYmhha2FyLCBT
ZW50OiBUaHVyc2RheSwgQXByaWwgOSwgMjAyMCA3OjA1IFBNDQo8c25pcD4gDQo+ID4gPiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9wY2lfaWRzLmggYi9pbmNsdWRlL2xpbnV4L3BjaV9pZHMu
aA0KPiA+ID4gaW5kZXggMWRmYzRlMWRjYjk0Li45ZTk1N2MxOGFiZWIgMTAwNjQ0DQo+ID4gPiAt
LS0gYS9pbmNsdWRlL2xpbnV4L3BjaV9pZHMuaA0KPiA+ID4gKysrIGIvaW5jbHVkZS9saW51eC9w
Y2lfaWRzLmgNCj4gPiA+IEBAIC0yNDYwLDYgKzI0NjAsNyBAQA0KPiA+ID4gICAjZGVmaW5lIFBD
SV9ERVZJQ0VfSURfUkVORVNBU19TSDc3NjMgICAgICAgIDB4MDAwNA0KPiA+ID4gICAjZGVmaW5l
IFBDSV9ERVZJQ0VfSURfUkVORVNBU19TSDc3ODUgICAgICAgIDB4MDAwNw0KPiA+ID4gICAjZGVm
aW5lIFBDSV9ERVZJQ0VfSURfUkVORVNBU19TSDc3ODYgICAgICAgIDB4MDAxMA0KPiA+ID4gKyNk
ZWZpbmUgUENJX0RFVklDRV9JRF9SRU5FU0FTX1I4QTc3NEMwICAgICAgIDB4MDAyZA0KPiA+DQo+
ID4gICAgIFdlIGRvbid0IGFkZCB0aGUgZGV2aWNlIElEcyBpbiB0aGlzIGZpbGUsIHVubGVzcyB1
c2VkIGluIHNldmVyYWwgcGxhY2VzLg0KPiA+IElzIGl0Pw0KPiA+DQo+IE15IGJhZCBJIHNob3Vs
ZCBoYXZlIGNoZWNrZWQgaXQgYmVmb3JlIG1ha2luZyB0aGlzIGNoYW5nZSBhY3R1YWxseSBpdA0K
PiB3YXMgc3VnZ2VzdGVkIGluIG15IHByZXZpb3VzIHZlcnNpb24gb2YgdGhlIHNlcmllcyBidXQg
YW55d2F5IGF0bSB0aGlzDQo+IHdhcyBwbGFubmVkIHRvIGJlICB1c2VkIG9ubHkgaW4gcGNpX2Vu
ZHBvaW50X3Rlc3QgZHJpdmVyLCBzbyBpbiB0aGF0DQo+IGNhc2UgSWxsIGRyb3AgdGhpcyBwYXRj
aC4NCg0KSSdtIHZlcnkgc29ycnksIHRoaXMgaXMgbXkgZmF1bHQuIEkgc3VnZ2VzdGVkIHRoaXMg
YnV0IEkgZGlkbid0IGNoZWNrDQp0aGlzIHBjaV9pZHMuaCdzIHJ1bGUuLi4NCg0KQmVzdCByZWdh
cmRzLA0KWW9zaGloaXJvIFNoaW1vZGENCg0K

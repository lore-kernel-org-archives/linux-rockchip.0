From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 12/15] include: rk3399: Disable watchdog in TPL
Date: Mon, 26 Aug 2019 01:44:16 +0530
Message-ID: <CAMty3ZC6xKM3VaKEjtMGDu4mLamuHLPP8DLc_L2KdDD9kzOrxw@mail.gmail.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-13-jagan@amarulasolutions.com>
 <fd03eeac-8012-5013-ab03-aa1e39156700@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <fd03eeac-8012-5013-ab03-aa1e39156700@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, U-Boot-Denx <u-boot@lists.denx.de>, Akash Gajjar <akash@openedev.com>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCA2OjEzIFBNIEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9j
ay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4KPiBPbiAyMDE5LzcvMjkg5LiL5Y2IMzo0NywgSmFnYW4g
VGVraSB3cm90ZToKPiA+IERpc2FibGUgd2F0Y2hkb2cgZm9yIFRQTCwgc2luY2UgdGhlcmUgaXMg
bm8gc3VwcG9ydCBpdC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBh
bWFydWxhc29sdXRpb25zLmNvbT4KPiA+IC0tLQo+ID4gICBpbmNsdWRlL2NvbmZpZ3MvcmszMzk5
X2NvbW1vbi5oIHwgNSArKysrKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmggYi9p
bmNsdWRlL2NvbmZpZ3MvcmszMzk5X2NvbW1vbi5oCj4gPiBpbmRleCA4ZGYwMTgwMjg0Li42N2I0
OGUwM2JhIDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaAo+
ID4gKysrIGIvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaAo+ID4gQEAgLTQ2LDYgKzQ2
LDExIEBACj4gPiAgICNkZWZpbmUgQ09ORklHX1NZU19TRFJBTV9CQVNFICAgICAgICAgICAgICAg
MAo+ID4gICAjZGVmaW5lIFNEUkFNX01BWF9TSVpFICAgICAgICAgICAgICAgICAgICAgIDB4Zjgw
MDAwMDAKPiA+Cj4gPiArI2lmZGVmIENPTkZJR19UUExfQlVJTEQKPiA+ICsjIHVuZGVmIENPTkZJ
R19XRFQKPiA+ICsjIHVuZGVmIENPTkZJR19XQVRDSERPRwo+ID4gKyNlbmRpZgo+Cj4KPiBJdCB3
aWxsIGJlIGJldHRlciB0byB1c2UgQ09ORklHXyR7U1BMX1RQTH1XRFQgaW4gd2F0Y2hkb2cgTWFr
ZWZpbGUsCj4KPiBiZWNhdXNlIGFsbCB0aGUgU29DIG5lZWRzIHRyZWF0IHRoaXMgZHJpdmVyIHNl
cGFyYXRlIGluIFRQTC9TUEwvVS1Cb290Cj4gcHJvcGVyLgoKRW5hYmxpbmcgVFBMICh2aWEgRE0g
b3Igc28pIGNhbm5vdCBiZSBhbiBvcHRpbWFsIHNvbHV0aW9ucyBhcyBvZiBub3csCnNpbmNlIGlm
IGl0IGNvbnRpbnVvdXNseSByZXNldHRpbmcgd2UgbmVlZCB0byB0YWtlIGJvb3Qgc3dpdGNoIGJh
c2VkCm9uIGJvb3Rjb3VudCwgaWUgcG9zc2libGUgd2l0aCBTUEwgYW5kIFUtQm9vdCBwcm9wZXIg
bm93LiBNYWtpbmcgYQpib290IHN3aXRjaCB0byBUUEwgbWlnaHQgaW5jcmVhc2UgY29kZSBzaXpl
LCBzbyB3aWxsIGNoZWNrIHRoaXMKZGVjaXNpb24gbGF0ZXIgYmFzZWQgb24gdGhlIHJlcXVpcmVt
ZW50LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVLUJv
b3QgbWFpbGluZyBsaXN0ClUtQm9vdEBsaXN0cy5kZW54LmRlCmh0dHBzOi8vbGlzdHMuZGVueC5k
ZS9saXN0aW5mby91LWJvb3QK

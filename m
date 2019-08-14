From: Wadim Egorov <w.egorov@phytec.de>
Subject: Re: [PATCH 03/15] rockchip: rk3288: Print reset reason
Date: Wed, 14 Aug 2019 12:43:37 +0200
Message-ID: <511a2886-707c-b7db-b3cf-7e3ed952f237@phytec.de>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-4-jagan@amarulasolutions.com>
 <98408a3c-84bd-d54b-1b3a-49901c85ba3c@rock-chips.com>
 <CAMty3ZApcHpSmLtf4kTm+YqzpYMtGSU6N_Sm_xZNue2o73UvtQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <CAMty3ZApcHpSmLtf4kTm+YqzpYMtGSU6N_Sm_xZNue2o73UvtQ@mail.gmail.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Kever Yang <kever.yang@rock-chips.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, U-Boot-Denx <u-boot@lists.denx.de>, Akash Gajjar <akash@openedev.com>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDE0LjA4LjE5IDExOjQwLCBKYWdhbiBUZWtpIHdyb3RlOgo+IE9uIE1vbiwgQXVnIDUsIDIw
MTkgYXQgNjowMCBQTSBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPiB3cm90
ZToKPj4KPj4gT24gMjAxOS83LzI5IOS4i+WNiDM6NDYsIEphZ2FuIFRla2kgd3JvdGU6Cj4+PiBQ
cmludCB0aGUgcmVhc29uIGZvciByZXNldCBpbnN0ZWFkIG9mIHN0b3JpbmcgaXQgaW50bwo+Pj4g
ZW52IHZhcmlhYmxlIGluIHJrMzI4OC4KPj4+Cj4+PiBUaGlzIHdvdWxkIGhlbHAgdG8gZmluZCB0
aGUgcmVzZXQgcmVhc29uIGRpcmVjdGx5Cj4+PiBvbiBVLUJvb3QgcHJvcGVyIGxvZ3MuCj4+Pgo+
Pj4gQ2M6IFdhZGltIEVnb3JvdiA8dy5lZ29yb3ZAcGh5dGVjLmRlPgo+Pj4gU2lnbmVkLW9mZi1i
eTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4+PiAtLS0KPj4+ICAg
YXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyODgtYm9hcmQuYyB8IDIgKy0KPj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMjg4LWJvYXJkLmMgYi9hcmNoL2FybS9tYWNo
LXJvY2tjaGlwL3JrMzI4OC1ib2FyZC5jCj4+PiBpbmRleCBkM2VjMTQxZmVhLi42MTMyNjRkN2Vl
IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyODgtYm9hcmQuYwo+
Pj4gKysrIGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyODgtYm9hcmQuYwo+Pj4gQEAgLTcy
LDcgKzcyLDcgQEAgc3RhdGljIHZvaWQgcmszMjg4X2RldGVjdF9yZXNldF9yZWFzb24odm9pZCkK
Pj4+ICAgICAgICAgICAgICAgcmVhc29uID0gInVua25vd24gcmVzZXQiOwo+Pj4gICAgICAgfQo+
Pj4KPj4+IC0gICAgIGVudl9zZXQoInJlc2V0X3JlYXNvbiIsIHJlYXNvbik7Cj4+PiArICAgICBw
cmludGYoIlJlc2V0IGNhdXNlOiAlc1xuIiwgcmVhc29uKTsKPj4KPj4gV2h5IHRoaXMgbmVlZCB0
byBzZXQgYXMgZW52IGJlZm9yZT8gSSBkaWRuJ3QgdG91Y2ggdGhpcyBjb2RlIHdoZW4gSSBtaWdy
YXRlCj4gRG9uJ3Qga25vdyB0aGUgcHJvcGVyIHJlYXNvbiBmb3IgdGhpcywgaWUgd2h5IEkgaGF2
ZSBDQ2VkIFdhZGltLgo+Cj4gV2FkaW0sIGFueSBjb21tZW50cz8KSWYgd2UgcHV0IHRoZSByZXNl
dF9yZWFzb24gaW5zaWRlIGFuIGVudmlyb25tZW50IHZhcmlhYmxlIHdlIGNhbiBsYXRlcgpyZXVz
ZSBpdCBmcm9tIGEgc2NyaXB0LCBlLmcuIGNoYW5naW5nIHRoZSBib290IGJlaGF2aW9yIGZvciBz
cGVjaWFsCmNhc2VzLiBSaWdodCBub3cgSSBoYXZlIG5vIHVzZWNhc2UgZm9yIGl0LiBTbyBmcm9t
IG15IHNpZGUgeW91IGNhbiBqdXN0CnByaW50IHRoZSByZWFzb24gaW5zdGVhZCBvZiBzZXR0aW5n
IHRoZSBlbnZpcm9ubWVudC4gQUZBSVIgSSBjb3BpZWQgdGhlCmVudi1tZXRob2QgZnJvbSBhbm90
aGVyIGJvYXJkLgpidHcsIGJvYXJkL3hpbGlueC96eW5xbXAvenlucW1wLmMgaXMgZG9pbmcgYm90
aC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClUtQm9v
dCBtYWlsaW5nIGxpc3QKVS1Cb290QGxpc3RzLmRlbnguZGUKaHR0cHM6Ly9saXN0cy5kZW54LmRl
L2xpc3RpbmZvL3UtYm9vdAo=

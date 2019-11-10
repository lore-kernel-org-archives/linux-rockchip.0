From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v3 1/5] Makefile: Add rockchip image type
Date: Sun, 10 Nov 2019 22:16:01 +0800
Message-ID: <6ee3573a-0896-76dc-6ec1-13e3f2809268@rock-chips.com>
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
 <20191017190710.29985-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191017190710.29985-2-jagan@amarulasolutions.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, "Matwey V . Kornilov" <matwey.kornilov@gmail.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMTkvMTAvMTgg5LiK5Y2IMzowNywgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgcm9ja2No
aXAgaW1hZ2UgdHlwZSBzdXBwb3J0LiByaWdodCBub3cgdGhlIGltYWdlCj4gdHlwZSBtYXJrZWQg
d2l0aCBya3NkLCBTbyBjcmVhdGUgaW1hZ2UgdHlwZSB2YXJpYWJsZQo+IHdpdGggcmVxdWlyZWQg
aW1hZ2UgdHlwZSBsaWtlIHJrc2Qgb3IgcmtzcGkuCj4KPiBDYzogS2V2ZXIgWWFuZyA8a2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiBDYzogTWF0d2V5IFYuIEtvcm5pbG92IDxtYXR3ZXkua29y
bmlsb3ZAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1
bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9j
ay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAtLS0KPiAgIE1ha2VmaWxlIHwgOSArKysr
KysrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
Pgo+IGRpZmYgLS1naXQgYS9NYWtlZmlsZSBiL01ha2VmaWxlCj4gaW5kZXggNmZkYTMyNjhlNy4u
ZWM1NWUwZjZhNCAxMDA2NDQKPiAtLS0gYS9NYWtlZmlsZQo+ICsrKyBiL01ha2VmaWxlCj4gQEAg
LTEzMzQsNyArMTMzNCwxNCBAQCB1LWJvb3Qtd2l0aC1zcGwuYmluOiAkKFNQTF9JTUFHRSkgJChT
UExfUEFZTE9BRCkgRk9SQ0UKPiAgIAkkKGNhbGwgaWZfY2hhbmdlZCxwYWRfY2F0KQo+ICAgCj4g
ICBpZmVxICgkKENPTkZJR19BUkNIX1JPQ0tDSElQKSx5KQo+IC1NS0lNQUdFRkxBR1NfdS1ib290
LXRwbC5pbWcgPSAtbiAkKENPTkZJR19TWVNfU09DKSAtVCBya3NkCj4gKwo+ICtpZmVxICgkKENP
TkZJR19TUElfRkxBU0hfU1VQUE9SVCkseSkKPiArUk9DS0NISVBfSU1HX1RZUEUgOj0gcmtzcGkK
PiArZWxzZQo+ICtST0NLQ0hJUF9JTUdfVFlQRSA6PSBya3NkCj4gK2VuZGlmCj4gKwo+ICtNS0lN
QUdFRkxBR1NfdS1ib290LXRwbC5pbWcgPSAtbiAkKENPTkZJR19TWVNfU09DKSAtVCAkKFJPQ0tD
SElQX0lNR19UWVBFKQo+ICAgdHBsL3UtYm9vdC10cGwuaW1nOiB0cGwvdS1ib290LXRwbC5iaW4g
Rk9SQ0UKPiAgIAkkKGNhbGwgaWZfY2hhbmdlZCxta2ltYWdlKQo+ICAgaWRibG9hZGVyLmltZzog
dHBsL3UtYm9vdC10cGwuaW1nIHNwbC91LWJvb3Qtc3BsLmJpbiBGT1JDRQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClUtQm9vdCBtYWlsaW5nIGxpc3QK
VS1Cb290QGxpc3RzLmRlbnguZGUKaHR0cHM6Ly9saXN0cy5kZW54LmRlL2xpc3RpbmZvL3UtYm9v
dAo=

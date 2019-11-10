From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v4 1/7] Makefile: Add rockchip image type
Date: Sun, 10 Nov 2019 22:17:50 +0800
Message-ID: <b960fb69-88d2-8667-e141-b8bf3597f917@rock-chips.com>
References: <20191023195652.7158-1-jagan@amarulasolutions.com>
 <20191023195652.7158-2-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191023195652.7158-2-jagan@amarulasolutions.com>
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
Cc: u-boot@lists.denx.de, "Matwey V . Kornilov" <matwey.kornilov@gmail.com>, linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMTkvMTAvMjQg5LiK5Y2IMzo1NiwgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgcm9ja2No
aXAgaW1hZ2UgdHlwZSBzdXBwb3J0LiByaWdodCBub3cgdGhlIGltYWdlCj4gdHlwZSBtYXJrZWQg
d2l0aCBya3NkLCBTbyBjcmVhdGUgaW1hZ2UgdHlwZSB2YXJpYWJsZQo+IHdpdGggcmVxdWlyZWQg
aW1hZ2UgdHlwZSBsaWtlIHJrc2Qgb3IgcmtzcGkuCj4KPiBDYzogS2V2ZXIgWWFuZyA8a2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiBDYzogTWF0d2V5IFYuIEtvcm5pbG92IDxtYXR3ZXkua29y
bmlsb3ZAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1
bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9j
ay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAtLS0KPiAgIE1ha2VmaWxlIHwgMTAgKysr
KysrKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+Cj4gZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZpbGUKPiBpbmRleCA2ZmRhMzI2OGU3
Li4zZTA1ZDNmY2ZlIDEwMDY0NAo+IC0tLSBhL01ha2VmaWxlCj4gKysrIGIvTWFrZWZpbGUKPiBA
QCAtMTMzNCw3ICsxMzM0LDE1IEBAIHUtYm9vdC13aXRoLXNwbC5iaW46ICQoU1BMX0lNQUdFKSAk
KFNQTF9QQVlMT0FEKSBGT1JDRQo+ICAgCSQoY2FsbCBpZl9jaGFuZ2VkLHBhZF9jYXQpCj4gICAK
PiAgIGlmZXEgKCQoQ09ORklHX0FSQ0hfUk9DS0NISVApLHkpCj4gLU1LSU1BR0VGTEFHU191LWJv
b3QtdHBsLmltZyA9IC1uICQoQ09ORklHX1NZU19TT0MpIC1UIHJrc2QKPiArCj4gKyMgcm9ja2No
aXAgaW1hZ2UgdHlwZQo+ICtpZmVxICgkKENPTkZJR19TUElfRkxBU0hfU1VQUE9SVCkseSkKPiAr
Uk9DS0NISVBfSU1HX1RZUEUgOj0gcmtzcGkKPiArZWxzZQo+ICtST0NLQ0hJUF9JTUdfVFlQRSA6
PSBya3NkCj4gK2VuZGlmCj4gKwo+ICtNS0lNQUdFRkxBR1NfdS1ib290LXRwbC5pbWcgPSAtbiAk
KENPTkZJR19TWVNfU09DKSAtVCAkKFJPQ0tDSElQX0lNR19UWVBFKQo+ICAgdHBsL3UtYm9vdC10
cGwuaW1nOiB0cGwvdS1ib290LXRwbC5iaW4gRk9SQ0UKPiAgIAkkKGNhbGwgaWZfY2hhbmdlZCxt
a2ltYWdlKQo+ICAgaWRibG9hZGVyLmltZzogdHBsL3UtYm9vdC10cGwuaW1nIHNwbC91LWJvb3Qt
c3BsLmJpbiBGT1JDRQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClUtQm9vdCBtYWlsaW5nIGxpc3QKVS1Cb290QGxpc3RzLmRlbnguZGUKaHR0cHM6Ly9s
aXN0cy5kZW54LmRlL2xpc3RpbmZvL3UtYm9vdAo=

From: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH v2 07/10] usb: dwc3: Add phy interface for
	dwc3_uboot
Date: Tue, 19 Nov 2019 12:13:09 +0100
Message-ID: <d0a52200-e247-44d8-7771-08ec42b5e6be@denx.de>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
 <20191119082623.6165-8-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191119082623.6165-8-jagan@amarulasolutions.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gMTEvMTkvMTkgOToyNiBBTSwgSmFnYW4gVGVraSB3cm90ZToKPiBVLUJvb3QgaGFzIHR3byBk
aWZmZXJlbnQgdmFyaWFudHMgb2YgZHdjMyBpbml0aWFsaXphdGlvbnMsCj4gLSB3aXRoIGRtIHZh
cmlhbnQgZ2FkZ2V0LCBzbyB0aGUgcmVzcGVjdGl2ZSBkbSBkcml2ZXIgd291bGQKPiAgIGNhbGwg
dGhlIGR3YzNfaW5pdCBpbiBjb3JlLgo+IC0gd2l0aCBub24tZG0gdmFyaWFudCBnYWRnZXQsIHNv
IHRoZSB1c2FnZSBib2FyZCBmaWxlIHdvdWxkCj4gICBjYWxsIGR3YzNfdWJvb3RfaW5pdCBpbiBj
b3JlLgo+IAo+IFRoZSBkcml2ZXIgcHJvYmUgd291bGQgaGFuZGxlIGFsbCByZXNwZWN0aXZlIGdh
ZGdldCBwcm9wZXJ0aWVzCj4gaW5jbHVkaW5nIHBoeSBpbnRlcmZhY2UgdmlhIHBoeV90eXBlIHBy
b3BlcnR5IGFuZCB0aGVuIHRyaWdnZXIKPiBkd2MzX2luaXQgZm9yIGRtLXZhcmlhbnQgZ2FkZ2V0
cy4KPiAKPiBTbywgdG8gc3VwcG9ydCB0aGUgcGh5IGludGVyZmFjZSBmb3Igbm9uLWRtIHZhcmlh
bnQgZ2FkZ2V0cywKPiB0aGUgYmV0dGVyIG9wdGlvbiBpcyBkd2MzX3Vib290X2luaXQgc2luY2Ug
dGhlcmUgaXMgbm8KPiBkZWRpY2F0ZWQgY29udHJvbGxlciBmb3Igbm9uLWRtIHZhcmlhbnQgZ2Fk
Z2V0cy4KPiAKPiBUaGlzIHBhdGNoIHN1cHBvcnQgZm9yIGFkZGluZyBwaHkgaW50ZXJmYWNlIGxp
a2UgOC8xNi1iaXQgVVRNSSsKPiBjb2RlIGZvciBkd2MzX3Vib290Lgo+IAo+IFRoaXMgY2hhbmdl
IHVzZWQgTGludXggcGh5LmggZW51bSBsaXN0LCB0byBtYWtlIHByb3BlciBjb2RlCj4gY29tcGF0
aWJpbGl0eS4KPiAKPiBDYzogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+Cj4gVGVzdGVkLWJ5
OiBMZXZpbiBEdSA8ZGp3QHQtY2hpcC5jb20uY24+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVr
aSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogTWFyZWsgVmFzdXQg
PG1hcmV4QGRlbnguZGU+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClUtQm9vdCBtYWlsaW5nIGxpc3QKVS1Cb290QGxpc3RzLmRlbnguZGUKaHR0cHM6Ly9s
aXN0cy5kZW54LmRlL2xpc3RpbmZvL3UtYm9vdAo=

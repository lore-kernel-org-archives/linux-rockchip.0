From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 5/8] rockchip: rk3399: Enable SPL_BOARD_INIT
Date: Sat, 22 Jun 2019 21:49:33 +0800
Message-ID: <5c735872-6d2f-56e3-f17d-8482fdf4a5de@rock-chips.com>
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
 <20190620185506.11449-6-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20190620185506.11449-6-jagan@amarulasolutions.com>
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

SGkgSmFnYW4sCgoKT24gMDYvMjEvMjAxOSAwMjo1NSBBTSwgSmFnYW4gVGVraSB3cm90ZToKPiBF
bmFibGUgU1BMX0JPQVJEX0lOSVQgZ2xvYmFsbHkgdG8gcmszMzk5LCB0aGlzIHdvdWxkCj4gaGVs
cCB0byBwcmludCB0aGUgU1BMIGJhbm5lciBkdXJpbmcgYm9vdHVwLgo+Cj4gU2lnbmVkLW9mZi1i
eTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTog
S2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+
IC0tLQo+ICBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWcgfCAxICsKPiAgY29uZmlncy9w
dW1hLXJrMzM5OV9kZWZjb25maWcgIHwgMSAtCj4gIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXJvY2tj
aGlwL0tjb25maWcgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWcKPiBpbmRleCBjMDVl
M2MzZjQ4Li5jZTAzOTAyMmRmIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAv
S2NvbmZpZwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZpZwo+IEBAIC0xNTgs
NiArMTU4LDcgQEAgY29uZmlnIFJPQ0tDSElQX1JLMzM5OQo+ICAJc2VsZWN0IFNQTAo+ICAJc2Vs
ZWN0IFNQTF9BVEYKPiAgCXNlbGVjdCBTUExfQVRGX05PX1BMQVRGT1JNX1BBUkFNIGlmIFNQTF9B
VEYKPiArCXNlbGVjdCBTUExfQk9BUkRfSU5JVCBpZiBTUEwKPiAgCXNlbGVjdCBTUExfTE9BRF9G
SVQKPiAgCXNlbGVjdCBTUExfQ0xLIGlmIFNQTAo+ICAJc2VsZWN0IFNQTF9QSU5DVFJMIGlmIFNQ
TAo+IGRpZmYgLS1naXQgYS9jb25maWdzL3B1bWEtcmszMzk5X2RlZmNvbmZpZyBiL2NvbmZpZ3Mv
cHVtYS1yazMzOTlfZGVmY29uZmlnCj4gaW5kZXggZWJjNzhmYjIxNi4uNWNiMjI3M2ExNSAxMDA2
NDQKPiAtLS0gYS9jb25maWdzL3B1bWEtcmszMzk5X2RlZmNvbmZpZwo+ICsrKyBiL2NvbmZpZ3Mv
cHVtYS1yazMzOTlfZGVmY29uZmlnCj4gQEAgLTIxLDcgKzIxLDYgQEAgQ09ORklHX01JU0NfSU5J
VF9SPXkKPiAgIyBDT05GSUdfRElTUExBWV9DUFVJTkZPIGlzIG5vdCBzZXQKPiAgQ09ORklHX0RJ
U1BMQVlfQk9BUkRJTkZPX0xBVEU9eQo+ICBDT05GSUdfU1BMX1RFWFRfQkFTRT0weGZmOGMyMDAw
Cj4gLUNPTkZJR19TUExfQk9BUkRfSU5JVD15Cj4gICMgQ09ORklHX1NQTF9SQVdfSU1BR0VfU1VQ
UE9SVCBpcyBub3Qgc2V0Cj4gICMgQ09ORklHX1NQTF9MRUdBQ1lfSU1BR0VfU1VQUE9SVCBpcyBu
b3Qgc2V0Cj4gIENPTkZJR19TUExfU1RBQ0tfUj15CgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClUtQm9vdCBtYWlsaW5nIGxpc3QKVS1Cb290QGxpc3Rz
LmRlbnguZGUKaHR0cHM6Ly9saXN0cy5kZW54LmRlL2xpc3RpbmZvL3UtYm9vdAo=

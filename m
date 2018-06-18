From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v4 0/2] drm/rockchip: try to fix vblank hang resulting
 from iommu irq change
Date: Mon, 18 Jun 2018 15:09:50 +0200
Message-ID: <2885954.zaY39YYQXV@phil>
References: <20180612132028.27490-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180612132028.27490-1-heiko@sntech.de>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: dri-devel@lists.freedesktop.org
Cc: marc.zyngier@arm.com, robin.murphy@arm.com, jeffy.chen@rock-chips.com, tfiga@chromium.org, linux-rockchip@lists.infradead.org, enric.balletbo@collabora.co.uk, tomeu.vizoso@collabora.co.uk, ezequiel@collabora.com
List-Id: linux-rockchip.vger.kernel.org

QW0gRGllbnN0YWcsIDEyLiBKdW5pIDIwMTgsIDE1OjIwOjI2IENFU1Qgc2NocmllYiBIZWlrbyBT
dHVlYm5lcjoKPiBUaGlzIHN0aWxsIHRyaWVzIHRvIGFkZHJlc3MgdGhlIGhhbmcgc2VlbiBieSBF
emVxdWllbCBHYXJjaWEgb24gcmszMjg4Lgo+IAo+IEFzIFRvbWFzeiBub3RlZCwgdHJ5aW5nIHRv
IGNvdW50IGVuYWJsZW1lbnQgY2FuIHJ1biBpbnRvIGNvbmN1cnJlbmN5Cj4gaXNzdWVzLCBzbyBp
bnN0ZWFkIHdlJ2xsIGp1c3QgY2hlY2sgaWYgdGhlIHZvcCBpcyBydW50aW1lLWVuYWJsZWQKPiB0
byBzZWUgaWYgaXQgY291bGQgYmUgdGhlIHNvdXJjZSBvZiB0aGUgaXJxIGFuZCB0aGVuIGp1c3Qg
ZG8gb3VyCj4gb3duIGNsa19lbmFibGUgaW4gdGhlIGlzciB0byBicmlkZ2UgdGhlIHBvc3NpYmxl
IGdhcCBiZXR3ZWVuCj4gcG1fcnVudGltZV9lbmFibGUgYW5kIGNsa19lbmFibGUgaW4gdGhlIGNv
cmUgdm9wX2VuYWJsZSgpIGZ1bmN0aW9uLgo+IAo+IERpc3BsYXkgdGVzdGVkIHRvIHN0aWxsIHdv
cmsgb24gcmszMzI4IGFuZCByazMzOTksIGJ1dCBhcyBJIGRvbid0IHNlZQo+IHRoZSBoYW5nIGZy
b20gRXplcXVpZWwgSSBob3BlIHRoYXQgdGhpcyBmaXhlcyBpdC4KPiAKPiAKPiBjaGFuZ2VzIGlu
IHYyOgo+IC0gYWRhcHQgYXBwcm9hY2ggLi4uIGRvbid0IHRyeSB0byBjb3VudCB1c2FnZSBvdXJz
ZWxmLCBiZWNhdXNlIG9mCj4gICBwb3NzaWJsZSBjb25jdXJyZW5jeSBpc3N1ZXMgd2l0aCB2b3Ag
ZW5hYmxlL2Rpc2FibGUKPiBjaGFuZ2VzIGluIHYzOgo+IC0gZml4IGNvbW1lbnQgaW4gcGF0Y2gy
Cj4gLSBhZGQgc3RhYmxlK2ZpeGVzIHRhZ3MKPiBjaGFuZ2VzIGluIHY0Ogo+IC0gYWRkcmVzcyBN
YXJjJ3MgY29tbWVudHMgdG8gcGF0Y2gyCj4gCj4gCj4gSGVpa28gU3R1ZWJuZXIgKDEpOgo+ICAg
ZHJtL3JvY2tjaGlwOiB2b3A6IHNwbGl0IG91dCBjb3JlIGNsb2NrIGVuYWJsZW1lbnQgaW50byBz
ZXBhcmF0ZQo+ICAgICBmdW5jdGlvbnMKPiAKPiBTYW5keSBIdWFuZyAoMSk6Cj4gICBkcm0vcm9j
a2NoaXA6IHZvcDogZml4IGlycSBkaXNhYmxlZCBhZnRlciB2b3AgZHJpdmVyIHByb2JlZAoKYXBw
bGllZCBib3RoIHRvIGRybS1taXNjLW5leHQgd2l0aCB0aGUgYXBwcm9wcmlhdGUgUmV2aWV3IHRh
Z3MKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmkt
ZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

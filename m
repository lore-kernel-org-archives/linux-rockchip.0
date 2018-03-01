From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v8 1/8] drm/bridge: analogix: Do not use device's drvdata
Date: Thu, 01 Mar 2018 16:39:18 +0100
Message-ID: <4651149.oDM8cr11nT@diego>
References: <20180110162348.22765-1-thierry.escande@collabora.com>
 <20180110162348.22765-2-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180110162348.22765-2-thierry.escande@collabora.com>
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
Cc: Thierry Escande <thierry.escande@collabora.com>, Neil Armstrong <narmstrong@baylibre.com>, Jeffy Chen <jeffy.chen@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Daniel Vetter <daniel.vetter@intel.com>
List-Id: linux-rockchip.vger.kernel.org

QW0gTWl0dHdvY2gsIDEwLiBKYW51YXIgMjAxOCwgMTc6MjM6NDEgQ0VUIHNjaHJpZWIgVGhpZXJy
eSBFc2NhbmRlOgo+IEZyb206IEplZmZ5IENoZW4gPGplZmZ5LmNoZW5Acm9jay1jaGlwcy5jb20+
Cj4gCj4gVGhlIGRyaXZlciB0aGF0IGluc3RhbnRpYXRlcyB0aGUgYnJpZGdlIHNob3VsZCBvd24g
dGhlIGRydmRhdGEsIGFzIGFsbAo+IGRyaXZlciBtb2RlbCBjYWxsYmFja3MgKHByb2JlLCByZW1v
dmUsIHNodXRkb3duLCBQTSBvcHMsIGV0Yy4pIGFyZSBhbHNvCj4gb3duZWQgYnkgaXRzIGRyaXZl
ciBzdHJ1Y3QuIE1vcmVvdmVyLCBzdG9yaW5nIHR3byBkaWZmZXJlbnQgcG9pbnRlcgo+IHR5cGVz
IGluIGRyaXZlciBkYXRhIGRlcGVuZGluZyBvbiBkcml2ZXIgaW5pdGlhbGl6YXRpb24gc3RhdHVz
IGlzIGJhcmVseQo+IGEgZ29vZCBwcmFjdGljZSBhbmQgaW4gZmFjdCBoYXMgbGVkIHRvIG1hbnkg
YnVncyBpbiB0aGlzIGRyaXZlci4KPiAKPiBMZXQncyBjbGVhbiB1cCB0aGlzIG1lc3MgYW5kIGNo
YW5nZSBBbmFsb2dpeCBlbnRyeSBwb2ludHMgdG8gc2ltcGx5Cj4gYWNjZXB0IHNvbWUgb3BhcXVl
IHN0cnVjdCBwb2ludGVyLCBhZGp1c3RpbmcgdGhlaXIgdXNlcnMgYXQgdGhlIHNhbWUKPiB0aW1l
IHRvIGF2b2lkIGJyZWFraW5nIHRoZSBjb21waWxhdGlvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBU
b21hc3ogRmlnYSA8dGZpZ2FAY2hyb21pdW0ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IEplZmZ5IENo
ZW4gPGplZmZ5LmNoZW5Acm9jay1jaGlwcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVGhpZXJyeSBF
c2NhbmRlIDx0aGllcnJ5LmVzY2FuZGVAY29sbGFib3JhLmNvbT4KPiBSZXZpZXdlZC1ieTogQW5k
cnplaiBIYWpkYSA8YS5oYWpkYUBzYW1zdW5nLmNvbT4KPiBSZXZpZXdlZC1ieTogU2VhbiBQYXVs
IDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+Cj4gQWNrZWQtYnk6IEppbmdvbyBIYW4gPGppbmdvb2hh
bjFAZ21haWwuY29tPgo+IEFja2VkLWJ5OiBBcmNoaXQgVGFuZWphIDxhcmNoaXR0QGNvZGVhdXJv
cmEub3JnPgoKYXBwbGllZCB0byBkcm0tbWlzYy1uZXh0IGFzIGl0IGhhZCBSZXZpZXdzL0Fja3Mg
ZnJvbSBkcm0tYnJpZGdlIHBlb3BsZQoKVGhhbmtzCkhlaWtvCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

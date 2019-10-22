From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 4/6] drm/cma-helper: Support DRM_MODE_DUMB_KERNEL_MAP flag
Date: Tue, 22 Oct 2019 14:52:29 -0500
Message-ID: <CAL_JsqJwJgNHy4wr0as0n-R3ist_yKp3ytyBw4bPXjtSOSMOXQ@mail.gmail.com>
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-5-robh@kernel.org>
 <20191022113001.GG4756@pendragon.ideasonboard.com>
 <CAMuHMdXCq9urRDCSmLueVpsv9-FxJ6pxQf-9Ua=vT-TrRs++fQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <CAMuHMdXCq9urRDCSmLueVpsv9-FxJ6pxQf-9Ua=vT-TrRs++fQ@mail.gmail.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>, Liviu Dudau <liviu.dudau@arm.com>, DRI Development <dri-devel@lists.freedesktop.org>, Philippe Cornu <philippe.cornu@st.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-stm32@st-md-mailman.stormreply.com, Linux-Renesas <linux-renesas-soc@vger.kernel.org>, Kevin Hilman <khilman@baylibre.com>, Chen-Yu Tsai <wens@csie.org>, Xinliang Liu <z.liuxinliang@hisilicon.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Xinwei Kong <kong.kongxinwei@hisilicon.com>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, "James (Qian) Wang" <james.qian.wang@arm.com>, Alexandre Torgue <alexandre.torgue@st.com>, Chen Feng <puck.chen@hisilicon.com>, "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, Vincent Abriou <vincent.abriou@st.com>
List-Id: linux-rockchip.vger.kernel.org

T24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgNjo0MCBBTSBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0
QGxpbnV4LW02OGsub3JnPiB3cm90ZToKPgo+IEhpIExhdXJlbnQsCj4KPiBPbiBUdWUsIE9jdCAy
MiwgMjAxOSBhdCAxOjMwIFBNIExhdXJlbnQgUGluY2hhcnQKPiA8bGF1cmVudC5waW5jaGFydEBp
ZGVhc29uYm9hcmQuY29tPiB3cm90ZToKPiA+IE9uIE1vbiwgT2N0IDIxLCAyMDE5IGF0IDA0OjQ1
OjQ4UE0gLTA1MDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwo+ID4gPiBAQCAtNDE5LDYgKzQxOSw3IEBA
IGludCByb2NrY2hpcF9nZW1fZHVtYl9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYs
Cj4gPiA+ICAgICAgICAqIGFsaWduIHRvIDY0IGJ5dGVzIHNpbmNlIE1hbGkgcmVxdWlyZXMgaXQu
Cj4gPiA+ICAgICAgICAqLwo+ID4gPiAgICAgICBhcmdzLT5waXRjaCA9IEFMSUdOKG1pbl9waXRj
aCwgNjQpOwo+ID4gPiArICAgICBhcmdzLT5mbGFncyA9IERSTV9NT0RFX0RVTUJfS0VSTkVMX01B
UDsKPiA+ID4gICAgICAgYXJncy0+c2l6ZSA9IGFyZ3MtPnBpdGNoICogYXJncy0+aGVpZ2h0Owo+
ID4KPiA+IE15IE9DRCBnZXRzIHRyaWdnZXJlZCBieSBmbGFncyBhcHBlYXJpbmcgaW4gdGhlIG1p
ZGRsZSBoZXJlIHdoaWxlIGl0IGlzCj4gPiBhdCB0aGUgZW5kIGluIG90aGVyIGRyaXZlcnMgOi0p
Cj4KPiAuLi4gd2hpbGUgImZsYWdzIiBhcHBlYXJzIGJlZm9yZSAicGl0Y2giIGFuZCAic2l6ZSIg
aW4gdGhlIGFjdHVhbCBzdHJ1Y3QKPiBkZWZpbml0aW9uLi4uIEFhYXJnaGwgOy0pCgpUaGVyZSB3
YXMgc29tZSByZWFzb25pbmcgaGVyZSBhcyBteSBDTUEgaGVscGVyIGNvbnZlcnNpb24gcGF0Y2gg
aXMKZ29pbmcgdG8gaW5zZXJ0IGNvZGUgYmV0d2VlbiBmbGFncyBhbmQgc2l6ZS4KCkJ1dCB0byBr
ZWVwIGV2ZXJ5b25lJ3MgT0NEIGluIGNoZWNrLCBJIGNhbiBzZXQgZmxhZ3MgZmlyc3QuCgpSb2IK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVs

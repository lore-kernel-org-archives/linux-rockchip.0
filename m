From: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 4/6] drm/cma-helper: Support DRM_MODE_DUMB_KERNEL_MAP flag
Date: Tue, 22 Oct 2019 13:40:36 +0200
Message-ID: <CAMuHMdXCq9urRDCSmLueVpsv9-FxJ6pxQf-9Ua=vT-TrRs++fQ@mail.gmail.com>
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-5-robh@kernel.org>
 <20191022113001.GG4756@pendragon.ideasonboard.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20191022113001.GG4756@pendragon.ideasonboard.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>, Liviu Dudau <liviu.dudau@arm.com>, DRI Development <dri-devel@lists.freedesktop.org>, Philippe Cornu <philippe.cornu@st.com>, linux-stm32@st-md-mailman.stormreply.com, Kevin Hilman <khilman@baylibre.com>, Chen-Yu Tsai <wens@csie.org>, Xinliang Liu <z.liuxinliang@hisilicon.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Xinwei Kong <kong.kongxinwei@hisilicon.com>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, "James (Qian) Wang" <james.qian.wang@arm.com>, Alexandre Torgue <alexandre.torgue@st.com>, Chen Feng <puck.chen@hisilicon.com>, Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-mediatek@lists.infradead.org, Vincent Abriou <vincent.abriou@st.com>, Matthias Brugger <matthias.bgg@gmail.com>, "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.>
List-Id: linux-rockchip.vger.kernel.org

SGkgTGF1cmVudCwKCk9uIFR1ZSwgT2N0IDIyLCAyMDE5IGF0IDE6MzAgUE0gTGF1cmVudCBQaW5j
aGFydAo8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPiB3cm90ZToKPiBPbiBNb24s
IE9jdCAyMSwgMjAxOSBhdCAwNDo0NTo0OFBNIC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToKCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jCj4gPiBAQCAt
NDE5LDYgKzQxOSw3IEBAIGludCByb2NrY2hpcF9nZW1fZHVtYl9jcmVhdGUoc3RydWN0IGRybV9m
aWxlICpmaWxlX3ByaXYsCj4gPiAgICAgICAgKiBhbGlnbiB0byA2NCBieXRlcyBzaW5jZSBNYWxp
IHJlcXVpcmVzIGl0Lgo+ID4gICAgICAgICovCj4gPiAgICAgICBhcmdzLT5waXRjaCA9IEFMSUdO
KG1pbl9waXRjaCwgNjQpOwo+ID4gKyAgICAgYXJncy0+ZmxhZ3MgPSBEUk1fTU9ERV9EVU1CX0tF
Uk5FTF9NQVA7Cj4gPiAgICAgICBhcmdzLT5zaXplID0gYXJncy0+cGl0Y2ggKiBhcmdzLT5oZWln
aHQ7Cj4KPiBNeSBPQ0QgZ2V0cyB0cmlnZ2VyZWQgYnkgZmxhZ3MgYXBwZWFyaW5nIGluIHRoZSBt
aWRkbGUgaGVyZSB3aGlsZSBpdCBpcwo+IGF0IHRoZSBlbmQgaW4gb3RoZXIgZHJpdmVycyA6LSkK
Ci4uLiB3aGlsZSAiZmxhZ3MiIGFwcGVhcnMgYmVmb3JlICJwaXRjaCIgYW5kICJzaXplIiBpbiB0
aGUgYWN0dWFsIHN0cnVjdApkZWZpbml0aW9uLi4uIEFhYXJnaGwgOy0pCgpHcntvZXRqZSxlZXRp
bmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9l
dmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1t
NjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUs
IEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxp
c3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlz
dApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVs

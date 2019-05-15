From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/2] drm: bridge: dw-hdmi: Add hooks for suspend/resume
Date: Wed, 15 May 2019 09:22:56 -0700
Message-ID: <CAD=FV=W2BvvEx+sYji5pGAEwagD6uA20nCMKwiU=kD6FqkSLiw@mail.gmail.com>
References: <20190502223808.185180-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20190502223808.185180-1-dianders@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Matthias Kaehlcke <mka@chromium.org>, Sean Paul <seanpaul@chromium.org>, Sam Ravnborg <sam@ravnborg.org>, Zheng Yang <zhengyang@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

SGkKCkZyb206IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KRGF0ZTog
VGh1LCBNYXkgMiwgMjAxOSBhdCAzOjM4IFBNClRvOiBIZWlrbyBTdHVlYm5lciwgU2FuZHkgSHVh
bmcsIEFuZHJ6ZWogSGFqZGEsIExhdXJlbnQgUGluY2hhcnQKQ2M6IDxsaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnPiwgTmVpbCBBcm1zdHJvbmcsCjxta2FAY2hyb21pdW0ub3JnPiwg
U2VhbiBQYXVsLCBEb3VnbGFzIEFuZGVyc29uLCBaaGVuZyBZYW5nLCBTYW0KUmF2bmJvcmcsIDxk
cmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiwKPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc+LCBWaWxsZSBTeXJqw6Rsw6QsIERhdmlkIEFpcmxpZSwgSmVybmVqClNrcmFiZWMsIERh
bmllbCBWZXR0ZXIKCj4gT24gUm9ja2NoaXAgcmszMjg4LWJhc2VkIENocm9tZWJvb2tzIHdoZW4g
eW91IGRvIGEgc3VzcGVuZC9yZXN1bWUKPiBjeWNsZToKPgo+IDEuIFlvdSBsb3NlIHRoZSBhYmls
aXR5IHRvIGRldGVjdCBhbiBIRE1JIGRldmljZSBiZWluZyBwbHVnZ2VkIGluLgo+Cj4gMi4gSWYg
eW91J3JlIHVzaW5nIHRoZSBpMmMgYnVzIGJ1aWx0IGluIHRvIGR3X2hkbWkgdGhlbiBpdCBzdG9w
cwo+IHdvcmtpbmcuCj4KPiBMZXQncyBhZGQgYSBob29rIHRvIHRoZSBjb3JlIGR3LWhkbWkgZHJp
dmVyIHNvIHRoYXQgd2UgY2FuIGNhbGwgaXQgaW4KPiBkd19oZG1pLXJvY2tjaGlwIGluIHRoZSBu
ZXh0IGNvbW1pdC4KPgo+IE5PVEU6IHRoZSBleGFjdCBzZXQgb2Ygc3RlcHMgSSd2ZSBkb25lIGhl
cmUgaW4gcmVzdW1lIGNvbWUgZnJvbQo+IGxvb2tpbmcgYXQgdGhlIG5vcm1hbCBkd19oZG1pIGlu
aXQgc2VxdWVuY2UgaW4gdXBzdHJlYW0gTGludXggcGx1cyB0aGUKPiBzZXF1ZW5jZSB0aGF0IHdl
IGRpZCBpbiBkb3duc3RyZWFtIENocm9tZSBPUyAzLjE0LiAgVGVzdGluZyBzaG93IHRoYXQKPiBp
dCBzZWVtcyB0byB3b3JrLCBidXQgaWYgYW4gZXh0cmEgc3RlcCBpcyBuZWVkZWQgb3Igc29tZXRo
aW5nIGhlcmUgaXMKPiBub3QgbmVlZGVkIHdlIGNvdWxkIGltcHJvdmUgaXQuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBEb3VnbGFzIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+Cj4gLS0tCj4K
PiAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMgfCAyMSArKysrKysr
KysrKysrKysrKysrKysKPiAgaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWkuaCAgICAgICAgICAg
ICAgfCAgMyArKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCgpEaWQgYW55
b25lIGhhdmUgYW55IHRob3VnaHRzIG9uIHRoaXMgcGF0Y2ggc2VyaWVzPyAgVGhhbmtzISAgOi0p
CgotRG91ZwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
cmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWw=

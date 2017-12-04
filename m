From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v4] arm64: dts: rockchip: update mipi cells for RK3399
Date: Mon, 04 Dec 2017 15:22:07 +0200
Message-ID: <13507001.EQOuo8KY2k@avalon>
References: <20171129184755.77187-1-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20171129184755.77187-1-briannorris@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Brian Norris <briannorris@chromium.org>
Cc: mark.rutland@arm.com, Doug Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, zyw@rock-chips.com, hoegsberg@gmail.com, Philippe Cornu <philippe.cornu@st.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Yannick Fertre <yannick.fertre@st.com>, Nickey Yang <nickey.yang@rock-chips.com>, mka@chromium.org, robh+dt@kernel.org, xbl@rock-chips.com, Vincent Abriou <vincent.abriou@st.com>, hl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

SGkgTmlja2V5LAoKVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCgpPbiBXZWRuZXNkYXksIDI5IE5v
dmVtYmVyIDIwMTcgMjA6NDc6NTUgRUVUIEJyaWFuIE5vcnJpcyB3cm90ZToKPiBGcm9tOiBOaWNr
ZXkgWWFuZyA8bmlja2V5LnlhbmdAcm9jay1jaGlwcy5jb20+Cj4gCj4gV2UgbWlnaHQgaW5jbHVk
ZSBhZGRpdGlvbmFsIHBvcnRzIGluIGRlcml2YXRpdmUgZGV2aWNlIHRyZWVzLCBzbyB0aGUKPiAn
cG9ydCcgbm9kZSBzaG91bGQgaGF2ZSBhbiBhZGRyZXNzLCBhbmQgdGhlIHBhcmVudCAncG9ydHMn
IG5vZGUgbmVlZHMKPiAvI3thZGRyZXMsc2l6ZX0tY2VsbHMuCj4gCj4gdjQ6Cj4gICoga2VlcCAj
e2FkZHJlc3Msc2l6ZX0tY2VsbHMgaW4gYm90aCAncG9ydHMnIGFuZCAncG9ydEAwJyBub2Rlcwo+
ICAqIHNlcGFyYXRlIGZyb20gdGhlIHJlc3Qgb2YgdGhlIHNlcmllcywgc2luY2UgdGhpcyBpcyBt
b3N0bHkKPiAgICBpbmRlcGVuZGVudCBvZiB0aGUgZHJpdmVyIHJlZmFjdG9yaW5nCj4gCj4gU2ln
bmVkLW9mZi1ieTogTmlja2V5IFlhbmcgPG5pY2tleS55YW5nQHJvY2stY2hpcHMuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IEJyaWFuIE5vcnJpcyA8YnJpYW5ub3JyaXNAY2hyb21pdW0ub3JnPgoKUmV2
aWV3ZWQtYnk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJk
LmNvbT4KCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kg
fCA2ICsrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LmR0c2kKPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kgaW5kZXgg
ZDM0MGI1OGFiMTg0Li5jNmRhZTI1YTNmMjMKPiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTkuZHRzaQo+IEBAIC0xNjUyLDcgKzE2NTIsMTEgQEAKPiAgCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+IAo+ICAJCXBvcnRzIHsKPiAtCQkJbWlwaV9pbjogcG9ydCB7Cj4gKwkJ
CSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCQkjc2l6ZS1jZWxscyA9IDwwPjsKPiArCj4gKwkJ
CW1pcGlfaW46IHBvcnRAMCB7Cj4gKwkJCQlyZWcgPSA8MD47Cj4gIAkJCQkjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKPiAgCQkJCSNzaXplLWNlbGxzID0gPDA+OwoKCi0tIApSZWdhcmRzLAoKTGF1cmVu
dCBQaW5jaGFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVs
Cg==

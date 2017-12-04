From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v4] arm64: dts: rockchip: update mipi cells for RK3399
Date: Mon, 04 Dec 2017 18:36:29 +0200
Message-ID: <5503141.MyG7QBLnyH@avalon>
References: <20171129184755.77187-1-briannorris@chromium.org>
 <13507001.EQOuo8KY2k@avalon> <3618913.yW60MBkMvd@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <3618913.yW60MBkMvd@phil>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: mark.rutland@arm.com, Doug Anderson <dianders@chromium.org>, hl@rock-chips.com, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, zyw@rock-chips.com, Brian Norris <briannorris@chromium.org>, hoegsberg@gmail.com, Philippe Cornu <philippe.cornu@st.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Yannick Fertre <yannick.fertre@st.com>, Nickey Yang <nickey.yang@rock-chips.com>, mka@chromium.org, robh+dt@kernel.org, xbl@rock-chips.com, Vincent Abriou <vincent.abriou@st.com>
List-Id: linux-rockchip.vger.kernel.org

SGkgSGVpa28sCgpPbiBNb25kYXksIDQgRGVjZW1iZXIgMjAxNyAxNTo0NjozMiBFRVQgSGVpa28g
U3R1ZWJuZXIgd3JvdGU6Cj4gQW0gTW9udGFnLCA0LiBEZXplbWJlciAyMDE3LCAxNToyMjowNyBD
RVQgc2NocmllYiBMYXVyZW50IFBpbmNoYXJ0Ogo+ID4gT24gV2VkbmVzZGF5LCAyOSBOb3ZlbWJl
ciAyMDE3IDIwOjQ3OjU1IEVFVCBCcmlhbiBOb3JyaXMgd3JvdGU6Cj4gPiA+IEZyb206IE5pY2tl
eSBZYW5nIDxuaWNrZXkueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiA+ID4gCj4gPiA+IFdlIG1pZ2h0
IGluY2x1ZGUgYWRkaXRpb25hbCBwb3J0cyBpbiBkZXJpdmF0aXZlIGRldmljZSB0cmVlcywgc28g
dGhlCj4gPiA+ICdwb3J0JyBub2RlIHNob3VsZCBoYXZlIGFuIGFkZHJlc3MsIGFuZCB0aGUgcGFy
ZW50ICdwb3J0cycgbm9kZSBuZWVkcwo+ID4gPiAvI3thZGRyZXMsc2l6ZX0tY2VsbHMuCj4gPiA+
IAo+ID4gPiB2NDoKPiA+ID4gICoga2VlcCAje2FkZHJlc3Msc2l6ZX0tY2VsbHMgaW4gYm90aCAn
cG9ydHMnIGFuZCAncG9ydEAwJyBub2Rlcwo+ID4gPiAgKiBzZXBhcmF0ZSBmcm9tIHRoZSByZXN0
IG9mIHRoZSBzZXJpZXMsIHNpbmNlIHRoaXMgaXMgbW9zdGx5Cj4gPiA+ICAKPiA+ID4gICAgaW5k
ZXBlbmRlbnQgb2YgdGhlIGRyaXZlciByZWZhY3RvcmluZwo+ID4gPiAKPiA+ID4gU2lnbmVkLW9m
Zi1ieTogTmlja2V5IFlhbmcgPG5pY2tleS55YW5nQHJvY2stY2hpcHMuY29tPgo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBCcmlhbiBOb3JyaXMgPGJyaWFubm9ycmlzQGNocm9taXVtLm9yZz4KPiA+IAo+
ID4gUmV2aWV3ZWQtYnk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNv
bmJvYXJkLmNvbT4KPiAKPiBBcyBJIGhhZG4ndCBwdXNoZWQgdGhhdCBvbmUgeWV0LCBJJ3ZlIGFt
ZW5kZWQgaXQgd2l0aCB5b3VyIFJldmlldy10YWcgOi0pCgpUaGFuayB5b3UgOi0pCgotLSAKUmVn
YXJkcywKCkxhdXJlbnQgUGluY2hhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaS1kZXZlbAo=

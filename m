From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v6 1/3] drm/bridge/synopsys: dsi: stop clobbering drvdata
Date: Thu, 7 Dec 2017 09:24:26 -0800
Message-ID: <20171207172424.GA41020@google.com>
References: <1512551301-12946-1-git-send-email-nickey.yang@rock-chips.com>
 <1512551301-12946-2-git-send-email-nickey.yang@rock-chips.com>
 <20171206213858.GA14257@google.com>
 <e24ca009-6ac2-94f8-2f9d-53d339da1e8d@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <e24ca009-6ac2-94f8-2f9d-53d339da1e8d@st.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Philippe CORNU <philippe.cornu@st.com>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, "airlied@linux.ie" <airlied@linux.ie>, "hoegsberg@gmail.com" <hoegsberg@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Yannick FERTRE <yannick.fertre@st.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Nickey Yang <nickey.yang@rock-chips.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>, "zyw@rock-chips.com" <zyw@rock-chips.com>, "xbl@rock-chips.com" <xbl@rock-chips.com>, "mka@chromium.org" <mka@chromium.org>, "hl@rock-chips.com" <hl@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

T24gVGh1LCBEZWMgMDcsIDIwMTcgYXQgMTE6NDE6MTdBTSArMDAwMCwgUGhpbGlwcGUgQ09STlUg
d3JvdGU6Cj4gcGxhdGZvcm1fc2V0X2RydmRhdGEoKSBpcyBzdGlsbCBtaXNzaW5nIGluIHlvdXIg
dmVyc2lvbi4KClVnaC4uLmluZGVlZC4KCj4gT24gMTIvMDYvMjAxNyAxMDozOSBQTSwgQnJpYW4g
Tm9ycmlzIHdyb3RlOgo+ID4gT24gV2VkLCBEZWMgMDYsIDIwMTcgYXQgMDU6MDg6MTlQTSArMDgw
MCwgTmlja2V5IFlhbmcgd3JvdGU6Cj4gPj4gRnJvbTogQnJpYW4gTm9ycmlzIDxicmlhbm5vcnJp
c0BjaHJvbWl1bS5vcmc+Cj4gPj4KPiA+PiBCcmlkZ2UgZHJpdmVycy9oZWxwZXJzIHNob3VsZG4n
dCBiZSBjbG9iYmVyaW5nIHRoZSBkcnZkYXRhLCBzaW5jZSBhCj4gPj4gcGFyZW50IGRyaXZlciBt
aWdodCBuZWVkIHRvIG93biB0aGlzLiBJbnN0ZWFkLCBsZXQncyByZXR1cm4gb3VyCj4gPj4gJ2R3
X21pcGlfZHNpJyBvYmplY3QgYW5kIGhhdmUgY2FsbGVycyBwYXNzIHRoYXQgYmFjayB0byB1cyBm
b3IgcmVtb3ZhbC4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IEJyaWFuIE5vcnJpcyA8YnJpYW5u
b3JyaXNAY2hyb21pdW0ub3JnPgo+ID4+IFNpZ25lZC1vZmYtYnk6IE5pY2tleSBZYW5nIDxuaWNr
ZXkueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiA+PiBMaW5rOmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcGF0Y2gvMTAwNzg0OTMvCj4gPj4KPiA+PiAtLS0KPiA+PiBDaGFuZ2VzCj4gPj4KPiA+
PiB2NDoKPiA+PiAtIEFkZCBGcm9tIHRhZyx1cGRhdGUgc3ViamVjdCBsaW5lCj4gPj4gLSBrZWVw
IHBhdGNoICJkcm0vc3RtOiBkc2k6IEFkanVzdCBkd19taXBpX2RzaV9wcm9iZSBhbmQgcmVtb3Zl
Igo+ID4+ICAgIGluIHRoaXMgcGllY2UgdG9nZXRoZXIuCj4gPj4KPiA+PiB2NToKPiA+PiAtIHJl
bW92ZSBSZXZpZXcgJiBBY2sgdGFnCj4gPj4gLSBmaXggcmVtb3ZlKCkgZGlyZWN0bHkgcmVmZXJl
bmNpbmcgdGhlIHN0YXRpYwo+ID4+ICAgIGR3X21pcGlfZHNpX3N0bV9wbGF0X2RhdGEgc3RydWN0
Lgo+ID4gCj4gPiBZb3UndmUgZ290dGVuIHRoaXMgYmFjayBpbnRvIGJhc2ljYWxseSB0aGUgc2hh
cGUgSSBzZW50IHYxIGluLCBzbyBJCj4gPiBndWVzcyB0aGlzIGRlc2VydmVzIGFuOgo+ID4gCj4g
PiBBY2tlZC1ieTogQnJpYW4gTm9ycmlzIDxicmlhbm5vcnJpc0BjaHJvbWl1bS5vcmc+CgouLi5h
bmQgSSBldmVuIGRpZmZlZCB0aGUgdHdvIGRpcmVjdGx5IGFuZCBkaWRuJ3Qgbm90aWNlIHRoYXQg
b25lIG1pc3NpbmcKYXQgZmlyc3QgOigKClNvIGluc3RlYWQsIG1ha2UgdGhhdDoKCk5hY2tlZC1i
eTogQnJpYW4gTm9ycmlzIDxicmlhbm5vcnJpc0BjaHJvbWl1bS5vcmc+CgpDYW4geW91ICpwbGVh
c2UqIGp1c3QgdXNlIG15IHBhdGNoIGFuZCByZXdvcmQgdGhlIGNvbW1pdCBtZXNzYWdlL3N1Ympl
Y3QKcGVyIHRoZSBvcmlnaW5hbCBjb21tZW50cyBvbiB2ZXJzaW9uIDE/IFlvdSdyZSBzY3Jld2lu
ZyBpdCB1cCBldmVyeSB0aW1lCnlvdSB0cnkgdG8gY2hhbmdlIGl0Li4uCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QK
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

From: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH] drm/bridge/synopsys: dsi: readl_poll_timeout return
 value clean up
Date: Mon, 5 Mar 2018 14:25:22 +0100
Message-ID: <8b47bb1d-ff1d-b85a-18ca-b53b70c1a32d@samsung.com>
References: <20180204213624.18288-1-philippe.cornu@st.com>
 <CGME20180301090106epcas2p3c47f4436b0c8a31ce71cfd3909dc77ae@epcas2p3.samsung.com>
 <172e7f68-8f4b-7e5f-3e9f-7aaf10a51dc9@st.com>
 <290c749a-70bf-2b74-1fb9-2de26708d001@samsung.com>
 <587f8a32-b9b3-0e81-d91d-69ea256bdc29@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <587f8a32-b9b3-0e81-d91d-69ea256bdc29@st.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Philippe CORNU <philippe.cornu@st.com>, Archit Taneja <architt@codeaurora.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Brian Norris <briannorris@chromium.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Bhumika Goyal <bhumirks@gmail.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Sandy Huang <hjc@rock-chips.com>, Heiko Stubner <heiko@sntech.de>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Cc: Yannick FERTRE <yannick.fertre@st.com>, Vincent ABRIOU <vincent.abriou@st.com>, Alexandre TORGUE <alexandre.torgue@st.com>
List-Id: linux-rockchip.vger.kernel.org

T24gMDIuMDMuMjAxOCAxNDoxNSwgUGhpbGlwcGUgQ09STlUgd3JvdGU6Cj4gSGkgQW5kcnplaiwK
Pgo+Cj4gT24gMDMvMDIvMjAxOCAxMToyMSBBTSwgQW5kcnplaiBIYWpkYSB3cm90ZToKPj4gT24g
MDEuMDMuMjAxOCAxMDowMCwgUGhpbGlwcGUgQ09STlUgd3JvdGU6Cj4+PiBIaSBBcmNoaXQsIEFu
ZHJ6ZWogJiBMYXVyZW50LAo+Pj4KPj4+IE1heSBJIGFzayB5b3UgcGxlYXNlIHlvdXIgZmVlZGJh
Y2sgb24gdGhpcyBzbWFsbCBwYXRjaD8KPj4+IE1hbnkgdGhhbmtzLAo+Pj4KPj4+IFBoaWxpcHBl
IDotKQo+Pj4KPj4+IE9uIDAyLzA0LzIwMTggMTA6MzYgUE0sIFBoaWxpcHBlIENvcm51IHdyb3Rl
Ogo+Pj4+IFRoZSByZWFkbF9wb2xsX3RpbWVvdXQoKSByZXR1cm4gdmFsdWUgaXMgMCBpbiBjYXNl
IG9mIHN1Y2Nlc3MKPj4+PiBzbyBpdCBpcyBiZXR0ZXIgdG8gZGV0ZWN0IGVycm9ycyB3aXRob3V0
IHRha2luZyBjYXJlIG9mIHRoZQo+Pj4+IHJldHVybiB2YWx1ZSBzaWduLgo+Pj4+Cj4+Pj4gU2ln
bmVkLW9mZi1ieTogUGhpbGlwcGUgQ29ybnUgPHBoaWxpcHBlLmNvcm51QHN0LmNvbT4KPj4gVGhl
IHBhdGNoIGlzIG9mIGNvdXJzZSBjb3JyZWN0LiBIb3dldmVyIEkgYW0gbm90IHN1cmUgaWYgbmVj
ZXNzYXJ5LiBGb3IKPj4gc3VyZSBmdW5jdGlvbmFsbHkgaXQgZG9lcyBub3QgY2hhbmdlIGFueXRo
aW5nLgo+PiBBRkFJSyBrZXJuZWwgQ29kaW5nU3R5bGUgc2F5cyBub3RoaW5nIGFib3V0IGl0LCBz
byBJIHN1cHBvc2UgaXQgaXMKPj4gbWF0dGVyIG9mIHBlcnNvbmFsIHRhc3RlLgo+IEkgc2VudCB0
aGlzIHRpbnkgcGF0Y2ggaW4gb3JkZXIgdG8gaG9tb2dlbml6ZSB0aGUgZHcgbWlwaSBkcml2ZXIg
YmVjYXVzZSAKPiB0aGVyZSB3ZXJlIGJvdGggY2FzZXMgImlmIChyZXQpIiAmICJpZiAocmV0IDwg
MCkiIGluIHRoZSBzb3VyY2UgY29kZS4KPgo+IEkgZGlkIG5vdCByZWFsbHkgZmluZCBhIHByZWZl
cnJlZCB3YXkgaW4gdGhlIGtlcm5lbCBzb3VyY2UgY29kZSBzbyBJIAo+IHNlbGVjdGVkIHdoYXQg
c291bmRzIHRoZSBiZXN0IHRvIG1lIGllICJpZiAocmV0KSIgYnV0IGl0IGlzIG5vdCBhIAo+IHBy
b2JsZW0gdG8gbWFrZSBhbm90aGVyIHBhdGNoIGZvciAiaWYgKHJldCA8IDApIiBldmVyeXdoZXJl
IDotKQo+Cj4gSW4gYW55IGNhc2UsIHRoZSBtb3N0IGltcG9ydGFudCBmcm9tIG15IHBvdiBpcyB0
byBoYXZlIGEgaG9tb2dlbmVvdXMgCj4gc291cmNlIGNvZGUgOi0pCgpPSwoKUXVldWVkIHRvIGRy
bS1taXNjLW5leHQuCgpSZWdhcmRzCkFuZHJ6ZWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaS1kZXZlbAo=

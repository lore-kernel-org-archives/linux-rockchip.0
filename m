From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH 34/41] drm/bridge: analogix_dp: Allow master driver to
 cleanup in unbind
Date: Fri, 10 Mar 2017 16:09:57 +0900
Message-ID: <CAAFQd5Apg95nXdbpx1dK=3JcXUz7XGj_RCgYeGjLphuf17MWCQ@mail.gmail.com>
References: <20170310043305.17216-1-seanpaul@chromium.org>
 <20170310043305.17216-35-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170310043305.17216-35-seanpaul@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Sean Paul <seanpaul@chromium.org>
Cc: zain wang <wzz@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Brian Norris <briannorris@chromium.org>, Douglas Anderson <dianders@chromium.org>, dri-devel <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Yakir Yang <ykk@rock-chips.com>, "Kristian H . Kristensen" <hoegsberg@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgU2VhbiwKCk9uIEZyaSwgTWFyIDEwLCAyMDE3IGF0IDE6MzIgUE0sIFNlYW4gUGF1bCA8c2Vh
bnBhdWxAY2hyb21pdW0ub3JnPiB3cm90ZToKPgo+IEZyb206IFRvbWFzeiBGaWdhIDx0ZmlnYUBj
aHJvbWl1bS5vcmc+Cj4KPiBTaW5jZSB3ZSB0YWtlIHRoZSBvd25lcnNoaXAgb2YgZHJ2ZGF0YSwg
dGhlIG1hc3RlciBkcml2ZXIgZG9lcyBub3QgaGF2ZQo+IGFueSBtZWFucyBvZiBhY2Nlc3Npbmcg
aXRzIG93biBkYXRhIGZyb20gdW5iaW5kIGNhbGxiYWNrIGFuZCBhbGwgaXQgY2FuCj4gZG8gaXMg
Y2FsbGluZyB0aGUgYW5hbG9naXggdW5iaW5kIGNhbGxiYWNrLiBIb3dldmVyIGl0IG1pZ2h0IGJl
Cj4gbmVjZXNzYXJ5IHRvIGRvIHNvbWUgY2xlYW4gdXAgaW4gdGhlIG1hc3RlciBkcml2ZXIgYmVm
b3JlIHdlIHJlYWxseQo+IHVuYmluZCB0aGUgYW5hbG9naXggcGFydCAoc3VjaCBhcyBQU1IgdW5y
ZWdpc3RlciBpbiBSb2NrY2hpcCBjYXNlKSwgc28KPiB0aGlzIHBhdGNoIHByb3ZpZGVzIGEgcGxh
dF9kYXRhLT5jbGVhbnVwKCkgY2FsbGJhY2sgd2hpY2ggaXMgY2FsbGVkIGF0Cj4gdGhlIGJlZ2lu
bmluZyBvZiBhbmFsb2dpeF9kcF91bmJpbmQoKS4KPgo+IENjOiBLcmlzdGlhbiBILiBLcmlzdGVu
c2VuIDxob2Vnc2JlcmdAY2hyb21pdW0ub3JnPgo+IENjOiBCcmlhbiBOb3JyaXMgPGJyaWFubm9y
cmlzQGNocm9taXVtLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBUb21hc3ogRmlnYSA8dGZpZ2FAY2hy
b21pdW0ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0u
b3JnPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2Rw
X2NvcmUuYyB8IDMgKysrCj4gIGluY2x1ZGUvZHJtL2JyaWRnZS9hbmFsb2dpeF9kcC5oICAgICAg
ICAgICAgICAgICAgIHwgMSArCj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpG
WUksIHdlIGVuZGVkIHVwIHJldmVydGluZyB0aGlzIGFuZCBzdWJzZXF1ZW50IHBhdGNoZXMgZnJv
bSB0aGlzCnNlcmllcyB1cCB0byAzNywgYXMgd2UgZm91bmQgYSBzaW1wbGVyIGFuZCBjbGVhbmVy
IHNvbHV0aW9uLiBQbGVhc2UKc2VlIGZvbGxvd2luZyAyIENMcyBmb3IgcmVmZXJlbmNlOgpodHRw
czovL2Nocm9taXVtLXJldmlldy5nb29nbGVzb3VyY2UuY29tLzQ0MjM5MApodHRwczovL2Nocm9t
aXVtLXJldmlldy5nb29nbGVzb3VyY2UuY29tLzQ0MjM5MgpodHRwczovL2Nocm9taXVtLXJldmll
dy5nb29nbGVzb3VyY2UuY29tLzQ0MjM5MQoKQW55d2F5LCB0aGFua3MgZm9yIHNlbmRpbmcgdGhl
IHBhdGNoZXMgdXBzdHJlYW0sIGl0J3MgcmVhbGx5IGhlbHBmdWwKZ2l2ZW4gbXkgdGltZSBjb25z
dHJhaW50cy4KCkJlc3QgcmVnYXJkcywKVG9tYXN6Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaS1kZXZlbAo=

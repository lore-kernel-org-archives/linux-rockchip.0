From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] drm/rockchip: cdn-dp: send audio infoframe to sink
Date: Mon, 17 Jul 2017 13:44:28 -0700
Message-ID: <CAD=FV=Xq6ZDgzzL9Y79hmtZxdogBkUwx=6NwQHM+8vt9PRL__A@mail.gmail.com>
References: <1500116418-4178-1-git-send-email-zyw@rock-chips.com>
 <20170717202300.c2r7ypclqbwvqbzq@art_vandelay>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170717202300.c2r7ypclqbwvqbzq@art_vandelay>
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
Cc: Brian Norris <briannorris@chromium.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Chris Zhong <zyw@rock-chips.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

SGksCgpPbiBNb24sIEp1bCAxNywgMjAxNyBhdCAxOjIzIFBNLCBTZWFuIFBhdWwgPHNlYW5wYXVs
QGNocm9taXVtLm9yZz4gd3JvdGU6Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvY2RuLWRwLWNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29y
ZS5jCj4+IGluZGV4IDliMGIwNTguLmU1OWNhNDcgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9jZG4tZHAtY29yZS5jCj4+IEBAIC04MDIsNiArODAyLDcgQEAgc3RhdGljIGludCBjZG5f
ZHBfYXVkaW9faHdfcGFyYW1zKHN0cnVjdCBkZXZpY2UgKmRldiwgIHZvaWQgKmRhdGEsCj4+ICAg
ICAgICAgICAgICAgLnNhbXBsZV9yYXRlID0gcGFyYW1zLT5zYW1wbGVfcmF0ZSwKPj4gICAgICAg
ICAgICAgICAuY2hhbm5lbHMgPSBwYXJhbXMtPmNoYW5uZWxzLAo+PiAgICAgICB9Owo+PiArICAg
ICB1OCBidWZmZXJbMTRdOwo+Cj4gV2h5IDE0Pwo+Cj4gSSB0aGluayB5b3Ugc2hvdWxkIHByb2Jh
Ymx5IGhhdmUgYnVmZmVyW0hETUlfQVVESU9fSU5GT0ZSQU1FX1NJWkUgKwo+IFNEUF9IRUFERVJf
U0laRV0gc28gdGhlIHJlYWRlciBrbm93cyBob3cgeW91IGFycml2ZWQgYXQgdGhpcyB2YWx1ZS4K
Pgo+PiAgICAgICBpbnQgcmV0Owo+Pgo+PiAgICAgICBtdXRleF9sb2NrKCZkcC0+bG9jayk7Cj4+
IEBAIC04MjMsNiArODI0LDI1IEBAIHN0YXRpYyBpbnQgY2RuX2RwX2F1ZGlvX2h3X3BhcmFtcyhz
dHJ1Y3QgZGV2aWNlICpkZXYsICB2b2lkICpkYXRhLAo+PiAgICAgICAgICAgICAgIGdvdG8gb3V0
Owo+PiAgICAgICB9Cj4+Cj4+ICsgICAgIG1lbXNldChidWZmZXIsIDAsIHNpemVvZihidWZmZXIp
KTsKCkl0IGlzIGxlc3MgZXJyb3IgcHJvbmUgKGFuZCBwcm9iYWJseSBtYWtlcyBiZXR0ZXIgY29k
ZSkgdG8ganVzdCB0byBkbwp0aGlzIGF0IGluaXQgdGltZS4gIEFLQToKCnU4IGJ1ZmZlclsxNF0g
PSB7IDAgfTsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

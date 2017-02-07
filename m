From: Dave Airlie <airlied@gmail.com>
Subject: Re: [GIT PULL] drm/rockchip: add cdn-dp support and some fixes
Date: Tue, 7 Feb 2017 11:05:20 +1000
Message-ID: <CAPM=9txYtmVXJdfHGUMC4VG8OAFb=NU9GX0izuWRgh3Uiiu3Qw@mail.gmail.com>
References: <5896E4F5.5040708@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <5896E4F5.5040708@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark yao <mark.yao@rock-chips.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>, =?UTF-8?B?6ZKf5YuH5rGq?= <chris.zhong@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

T24gNSBGZWJydWFyeSAyMDE3IGF0IDE4OjQwLCBNYXJrIHlhbyA8bWFyay55YW9Acm9jay1jaGlw
cy5jb20+IHdyb3RlOgo+IEhpIERhdmUKPgo+IGRybS9yb2NrY2hpcCBjZG4tZHAgZHJpdmVyIGlz
IHYxNyBub3csIEkgdGhpbmsgaXQncyByZWFkeSB0byBsYW5kIGl0Lgo+Cj4gVGhhbmtzLgo+Cj4g
VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA5OTc0M2FlNGM1ZjUyZjhmOGNlYjE3
NzgzMDU2ZmNjOWI0ZjhiNjRjOgo+Cj4gICBNZXJnZSBicmFuY2ggJ2RybS1ldG5hdml2LW5leHQn
IG9mCj4gaHR0cHM6Ly9naXQucGVuZ3V0cm9uaXguZGUvZ2l0L2xzdC9saW51eCBpbnRvIGRybS1u
ZXh0ICgyMDE3LTAyLTAzIDA1OjQxOjU4Cj4gKzEwMDApCj4KICBDQyBbTV0gIGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3BfcmVnLm8KICBDQyBbTV0gIGRyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLm8KL2hvbWUvYWlybGllZC9kZXZlbC9rZXJuZWwv
ZHJtLW5leHQvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1yZWcuYzoKSW4gZnVuY3Rp
b24g4oCYY2RuX2RwX2NvbmZpZ192aWRlb+KAmToKL2hvbWUvYWlybGllZC9kZXZlbC9rZXJuZWwv
ZHJtLW5leHQvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1yZWcuYzo2MzI6MjQ6Cndh
cm5pbmc6IOKAmHZhbFsxXeKAmSBtYXkgYmUgdXNlZCB1bmluaXRpYWxpemVkIGluIHRoaXMgZnVu
Y3Rpb24KWy1XbWF5YmUtdW5pbml0aWFsaXplZF0KICBtc2FfbWlzYyA9IDIgKiB2YWxbMF0gKyAz
MiAqIHZhbFsxXSArCiAgICAgICAgICAgICB+fn5+fn5+fn5+fl5+fn5+fn5+fn5+fn4KL2hvbWUv
YWlybGllZC9kZXZlbC9rZXJuZWwvZHJtLW5leHQvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nk
bi1kcC1yZWcuYzo1OTU6NToKbm90ZTog4oCYdmFsWzFd4oCZIHdhcyBkZWNsYXJlZCBoZXJlCiAg
dTggdmFsWzJdOwoKWW91IG1pZ2h0IHdhbnQgdG8gc2VuZCBtZSBhIGZvbGxvdyB1cCBwdWxsIHJl
cXVlc3QgdG8gZml4IHRoYXQuCgpEYXZlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcmktZGV2ZWwK

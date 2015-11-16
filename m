From: Liviu Dudau <Liviu.Dudau@arm.com>
Subject: [PATCH 0/2] Improve drm_of_component_probe() and move rockchip to use
 it
Date: Mon, 16 Nov 2015 14:44:51 +0000
Message-ID: <1447685093-26129-1-git-send-email-Liviu.Dudau@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Russell King <rmk+kernel@arm.linux.org.uk>, Mark Yao <mark.yao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel.vetter@ffwll.ch>, David Airlie <airlied@linux.ie>, Eric Anholt <eric@anholt.net>
Cc: linux-rockchip <linux-rockchip@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>, LAKML <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

SGVsbG8sCgpXaGVuIEkgaGF2ZSBpbnRyb2R1Y2VkIHRoZSBkcm1fb2ZfY29tcG9uZW50X3Byb2Jl
KCkgZnVuY3Rpb24gSSBoYXZlIG1hbmFnZWQgdG8KYnJlYWsgcm9ja2NoaXAncyBEUk0gZHJpdmVy
IGFzIHRoZSBjb21wYXJlX29mKCkgZnVuY3Rpb24gaGFkIHRvIG1hdGNoIGJvdGggbG9jYWwKY3J0
YyBwb3J0cyBhbmQgcmVtb3RlIGVuY29kZXIgb25lcy4gQXMgc3VnZ2VzdGVkIGJ5IFJ1c3NlbGwg
S2luZywgSSBoYXZlIG5vdwplbmhhbmNlZCB0aGUgZHJtX29mX2NvbXBvbmVudF9wcm9iZSgpIGZ1
bmN0aW9uIHRvIHRha2UgdHdvIGNvbXBhcmlzb24gZnVuY3Rpb25zLAphbmQgY29udmVydGVkIChh
Z2Fpbikgcm9ja2NoaXAgZHJpdmVyIHRvIHVzZSBpdC4KCkkgd291bGQgcmVhbGx5IGxpa2UgdG8g
Z2V0IHNvbWUgVGVzdGVkLUJ5IHRoaXMgdGltZSBpZiBwb3NzaWJsZSBmcm9tIElNWCwgQXJtYWRh
CmFuZCBSb2NrY2hpcCBkZXZlbG9wZXJzIGFzIEkgbGFjayBoYXJkd2FyZSB0byBkbyB0aGF0IG15
c2VsZi4KClRoZSBvbmx5IHRoaW5nIG5vdCBpbXBsZW1lbnRlZCBmcm9tIFJ1c3NlbGwncyBzdWdn
ZXN0aW9uIGxpc3QgaXMgdGhlIHJlbmFtaW5nIG9mCnRoZSBmdW5jdGlvbiBpbnRvIGRybV9rbXNf
Y29tcG9uZW50X3Byb2JlKCkuCgpCZXN0IHJlZ2FyZHMsCkxpdml1CgpMaXZpdSBEdWRhdSAoMik6
CiAgZHJtOiBJbXByb3ZlIGRybV9vZl9jb21wb25lbnRfcHJvYmUoKSB0byBjb3JyZWN0bHkgaGFu
ZGxlIHBvcnRzIGFuZCByZW1vdGUgcG9ydHMuCiAgZHJtL3JvY2tjaGlwOiBDb252ZXJ0IHRoZSBw
cm9iZSBmdW5jdGlvbiB0byB0aGUgZ2VuZXJpYyBkcm1fb2ZfY29tcG9uZW50X3Byb2JlKCkKCiBk
cml2ZXJzL2dwdS9kcm0vYXJtYWRhL2FybWFkYV9kcnYuYyAgICAgICAgIHwgIDMgKy0KIGRyaXZl
cnMvZ3B1L2RybS9kcm1fb2YuYyAgICAgICAgICAgICAgICAgICAgfCAyMyArKysrKy0tCiBkcml2
ZXJzL2dwdS9kcm0vaW14L2lteC1kcm0tY29yZS5jICAgICAgICAgIHwgIDMgKy0KIGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgfCA5OCArKysrKystLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQogaW5jbHVkZS9kcm0vZHJtX29mLmggICAgICAgICAgICAgICAgICAgICAg
ICB8ICA2ICstCiA1IGZpbGVzIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKyksIDg5IGRlbGV0aW9u
cygtKQoKLS0gCjIuNi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1k
ZXZlbAo=

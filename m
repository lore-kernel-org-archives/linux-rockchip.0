From: Liviu Dudau <Liviu.Dudau@arm.com>
Subject: [PATCH v2 0/2] Improve drm_of_component_probe() and move rockchip to
 use it
Date: Fri, 20 Nov 2015 14:22:03 +0000
Message-ID: <1448029325-14602-1-git-send-email-Liviu.Dudau@arm.com>
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
To: Russell King <rmk+kernel@arm.linux.org.uk>, Mark Yao <mark.yao@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, Daniel Vetter <daniel.vetter@ffwll.ch>, David Airlie <airlied@linux.ie>, Eric Anholt <eric@anholt.net>
Cc: linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

SGVsbG8sCgpUaGlzIGlzIHYyIG9mIHRoZSBwYXRjaHNldCB0cnlpbmcgdG8gbWFrZSBkcm1fb2Zf
Y29tcG9uZW50X3Byb2JlKCkgY29wZSB3aXRoIGZpbmRpbmcKYm90aCBsb2NhbCBjcnRjIHBvcnRz
IGFuZCByZW1vdGUgZW5jb2RlciBvbmVzLiBIZWlrbyBTdMO8Ym5lciB3YXMgbmljZSBlbm91Z2gg
dG8gdGVzdAphbiBlYXJsaWVyIHZlcnNpb24gdGhhdCB3YXMgcGF0Y2hlZCBmb2xsb3dpbmcgUnVz
c2VsbCdzIHN1Z2dlc3Rpb25zIG9uIHJrMzI4OCwgYnV0CkkgaGF2ZW4ndCBzZWVuIGFueSByZXBv
cnRzIGZyb20gaU1YIG9yIEFybWFkYSB1c2Vycy4KCkNoYW5nZWxvZzoKIHYyOiBVcGRhdGVkIHRo
ZSBkcm1fb2ZfY29tcG9uZW50X3Byb2JlKCkgY29tbWVudCB0byBleHBsYWluIHdoeSB0aGUgcmVm
ZXJlbmNlIGNvdW50CiAgICAgaXMgbm90IGRyb3BwZWQuIEZpeGVkIHRoZSBjb21wYXJlX3BvcnQo
KSBmdW5jdGlvbiBmb3Igcm9ja2NoaXAgYXMgZGVzY3JpYmVkIGJ5CiAgICAgUnVzc2VsbC4KIHYx
OiBPcmlnaW5hbCBzdWJtaXNzaW9uLiBodHRwOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hp
dmVzL2RyaS1kZXZlbC8yMDE1LU5vdmVtYmVyLzA5NDU0Ni5odG1sCgpMaXZpdSBEdWRhdSAoMik6
CiAgZHJtOiBJbXByb3ZlIGRybV9vZl9jb21wb25lbnRfcHJvYmUoKSB0byBjb3JyZWN0bHkgaGFu
ZGxlIHBvcnRzIGFuZCByZW1vdGUgcG9ydHMuCiAgZHJtL3JvY2tjaGlwOiBDb252ZXJ0IHRoZSBw
cm9iZSBmdW5jdGlvbiB0byB0aGUgZ2VuZXJpYyBkcm1fb2ZfY29tcG9uZW50X3Byb2JlKCkKCiBk
cml2ZXJzL2dwdS9kcm0vYXJtYWRhL2FybWFkYV9kcnYuYyAgICAgICAgIHwgIDMgKy0KIGRyaXZl
cnMvZ3B1L2RybS9kcm1fb2YuYyAgICAgICAgICAgICAgICAgICAgfCAxOSArKysrLS0KIGRyaXZl
cnMvZ3B1L2RybS9pbXgvaW14LWRybS1jb3JlLmMgICAgICAgICAgfCAgMyArLQogZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyB8IDk4ICsrKysrKy0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCiBpbmNsdWRlL2RybS9kcm1fb2YuaCAgICAgICAgICAgICAgICAgICAgICAg
IHwgIDYgKy0KIDUgZmlsZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKSwgODkgZGVsZXRpb25z
KC0pCgotLSAKMi42LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRl
dmVsCg==

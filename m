From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v3 5/6] drm/rockchip: vop: restore vop registers when resume
Date: Tue, 21 Jul 2015 16:27:27 +0800
Message-ID: <1437467247-13947-1-git-send-email-mark.yao@rock-chips.com>
References: <1437466807-13689-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1437466807-13689-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: dri-devel@lists.freedesktop.org
Cc: zwl@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, xw@rock-chips.com, dkm@rock-chips.com, sandy.huang@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhlIHJlZ2lzdGVycyB3aWxsIGJlIHJlc2V0IHRvIGRlZmF1bHQgdmFsdWVzIHdoZW4gd2hvbGUK
cG93ZXIgZG9tYWluIG9mZiwgc28gcmVzdG9yZSByZWdpc3RlcnMgZnJvbSByZWdzYmFrLgoKU2ln
bmVkLW9mZi1ieTogTWFyayBZYW8gPG1hcmsueWFvQHJvY2stY2hpcHMuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgfCAgICAxICsKIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX3ZvcC5jCmluZGV4IGUwOGYzMTguLjRkZmFkMDY1IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKQEAgLTQ3NSw2ICs0NzUsNyBAQCBzdGF0aWMg
dm9pZCB2b3BfZW5hYmxlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKIAkJZ290byBlcnJfZGlzYWJs
ZV9hY2xrOwogCX0KIAorCW1lbWNweSh2b3AtPnJlZ3MsIHZvcC0+cmVnc2Jhaywgdm9wLT5sZW4p
OwogCS8qCiAJICogQXQgaGVyZSwgdm9wIGNsb2NrICYgaW9tbXUgaXMgZW5hYmxlLCBSL1cgdm9w
IHJlZ3Mgd291bGQgYmUgc2FmZS4KIAkgKi8KLS0gCjEuNy45LjUKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRy
aS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

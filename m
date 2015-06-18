From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH 6/6] drm/rockchip: vop: default enable win2/3 area0 bit
Date: Thu, 18 Jun 2015 15:55:20 +0800
Message-ID: <1434614120-6772-1-git-send-email-mark.yao@rock-chips.com>
References: <1434613770-6608-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1434613770-6608-1-git-send-email-mark.yao@rock-chips.com>
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

V2luMi8zIHN1cHBvcnQgNCBhcmVhIGRpc3BsYXksIGJ1dCBub3cgaGF2bid0IGZvdW5kIGEgc3Vp
dGFibGUKd2F5IHRvIHVzZSBpdCwgYW5kIGl0IGVuYWJsZSBieSB3aW4gZ2F0ZSBhbmQgYXJlYSBn
YXRlLApzbyBkZWZhdWx0IGVuYWJsZSBhcmVhMCBnYXRlLCBzbyB0aGF0IGl0cyBiZWhhdmlvdXIg
anVzdCBsaWtlIGEKd2luLgoKU2lnbmVkLW9mZi1ieTogTWFyayBZYW8gPG1hcmsueWFvQHJvY2st
Y2hpcHMuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
LmMgfCAgICA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgYi9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4IGNlYWM3MWYuLjFi
NzA3ODMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
dm9wLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwpA
QCAtMzM3LDYgKzMzNywxMiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHZvcF9yZWdfZGF0YSB2b3Bf
aW5pdF9yZWdfdGFibGVbXSA9IHsKIAl7RFNQX0NUUkwwLCAweDAwMDAwMDAwfSwKIAl7V0lOMF9D
VFJMMCwgMHgwMDAwMDA4MH0sCiAJe1dJTjFfQ1RSTDAsIDB4MDAwMDAwODB9LAorCS8qCisJICog
VG9kbzogd2luMi8zIHN1cHBvcnQgYXJlYSBmdW5jLCBidXQgbm93IGhhdm4ndCBmb3VuZCBhIHN1
aXRhYmxlCisJICogd2F5IHRvIHVzZSBpdCwgc28gZGVmYXVsdCBlbmFibGUgYXJlYTAgYXMgYSB3
aW4gZGlzcGxheS4KKwkgKi8KKwl7V0lOMl9DVFJMMCwgMHgwMDAwMDAxMH0sCisJe1dJTjNfQ1RS
TDAsIDB4MDAwMDAwMTB9LAogfTsKIAogLyoKLS0gCjEuNy45LjUKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRy
aS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

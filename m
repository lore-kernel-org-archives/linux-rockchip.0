From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v2 5/5] drm/rockchip: default enable win2/3 area0 bit
Date: Fri, 26 Jun 2015 18:10:32 +0800
Message-ID: <1435313432-4923-1-git-send-email-mark.yao@rock-chips.com>
References: <1435313249-4549-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1435313249-4549-1-git-send-email-mark.yao@rock-chips.com>
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
Y2hpcHMuY29tPgotLS0KQ2hhbmdlcyBpbiB2MjogTm9uZQoKIGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgfCAgICA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fdm9wLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3Zv
cC5jCmluZGV4IDQwMTA3YmIuLmUwMDFkMjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV92b3AuYwpAQCAtMzM3LDYgKzMzNywxMiBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHZvcF9yZWdfZGF0YSB2b3BfaW5pdF9yZWdfdGFibGVbXSA9IHsKIAl7RFNQX0NUUkwwLCAw
eDAwMDAwMDAwfSwKIAl7V0lOMF9DVFJMMCwgMHgwMDAwMDA4MH0sCiAJe1dJTjFfQ1RSTDAsIDB4
MDAwMDAwODB9LAorCS8qCisJICogVG9kbzogd2luMi8zIHN1cHBvcnQgYXJlYSBmdW5jLCBidXQg
bm93IGhhdm4ndCBmb3VuZCBhIHN1aXRhYmxlCisJICogd2F5IHRvIHVzZSBpdCwgc28gZGVmYXVs
dCBlbmFibGUgYXJlYTAgYXMgYSB3aW4gZGlzcGxheS4KKwkgKi8KKwl7V0lOMl9DVFJMMCwgMHgw
MDAwMDAxMH0sCisJe1dJTjNfQ1RSTDAsIDB4MDAwMDAwMTB9LAogfTsKIAogLyoKLS0gCjEuNy45
LjUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmkt
ZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

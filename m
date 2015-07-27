From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v4 4/6] drm/rockchip: vop: Default enable win2/3 area0 bit
Date: Mon, 27 Jul 2015 10:06:00 +0800
Message-ID: <1437962762-19157-5-git-send-email-mark.yao@rock-chips.com>
References: <1437962762-19157-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1437962762-19157-1-git-send-email-mark.yao@rock-chips.com>
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
Cc: zwl@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, dkm@rock-chips.com, sandy.huang@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

V2luMi8zIHN1cHBvcnQgbXVsdGlwbGUgYXJlYSBmdW5jdGlvbiwgYnV0IHdlIGhhdmVuJ3QgZm91
bmQKYSBzdWl0YWJsZSB3YXkgdG8gdXNlIGl0IHlldCwgc28gbGV0J3MganVzdCB1c2UgdGhlbSBh
cyBvdGhlciB3aW5kb3dzCndpdGggb25seSBhcmVhIDAgZW5hYmxlZC4KClNpZ25lZC1vZmYtYnk6
IE1hcmsgWWFvIDxtYXJrLnlhb0Byb2NrLWNoaXBzLmNvbT4KLS0tCkNoYW5nZXMgaW4gdjQ6IE5v
bmUKCkNoYW5nZXMgaW4gdjM6CkFkdmljZWQgYnkgVG9tYXN6IEZpZ2EKLSBmaXggcGF0Y2ggY29t
bWVudHMuCkNoYW5nZXMgaW4gdjI6IE5vbmUKCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX3ZvcC5jIHwgICAgNiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwppbmRl
eCBjMTI2NGQ1Li40YTI5MjNiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX3ZvcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fdm9wLmMKQEAgLTI3OSw2ICsyNzksMTIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB2b3Bf
cmVnX2RhdGEgdm9wX2luaXRfcmVnX3RhYmxlW10gPSB7CiAJe0RTUF9DVFJMMCwgMHgwMDAwMDAw
MH0sCiAJe1dJTjBfQ1RSTDAsIDB4MDAwMDAwODB9LAogCXtXSU4xX0NUUkwwLCAweDAwMDAwMDgw
fSwKKwkvKiBUT0RPOiBXaW4yLzMgc3VwcG9ydCBtdWx0aXBsZSBhcmVhIGZ1bmN0aW9uLCBidXQg
d2UgaGF2ZW4ndCBmb3VuZAorCSAqIGEgc3VpdGFibGUgd2F5IHRvIHVzZSBpdCB5ZXQsIHNvIGxl
dCdzIGp1c3QgdXNlIHRoZW0gYXMgb3RoZXIgd2luZG93cworCSAqIHdpdGggb25seSBhcmVhIDAg
ZW5hYmxlZC4KKwkgKi8KKwl7V0lOMl9DVFJMMCwgMHgwMDAwMDAxMH0sCisJe1dJTjNfQ1RSTDAs
IDB4MDAwMDAwMTB9LAogfTsKIAogLyoKLS0gCjEuNy45LjUKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

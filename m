From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v3 4/6] drm/rockchip: vop: Default enable win2/3 area0 bit
Date: Tue, 21 Jul 2015 16:25:40 +0800
Message-ID: <1437467140-13881-1-git-send-email-mark.yao@rock-chips.com>
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

V2luMi8zIHN1cHBvcnQgbXVsdGlwbGUgYXJlYSBmdW5jdGlvbiwgYnV0IHdlIGhhdmVuJ3QgZm91
bmQKYSBzdWl0YWJsZSB3YXkgdG8gdXNlIGl0IHlldCwgc28gbGV0J3MganVzdCB1c2UgdGhlbSBh
cyBvdGhlciB3aW5kb3dzCndpdGggb25seSBhcmVhIDAgZW5hYmxlZC4KClNpZ25lZC1vZmYtYnk6
IE1hcmsgWWFvIDxtYXJrLnlhb0Byb2NrLWNoaXBzLmNvbT4KLS0tCkNoYW5nZXMgaW4gdjM6CkFk
dmljZWQgYnkgVG9tYXN6IEZpZ2EKLSBmaXggcGF0Y2ggY29tbWVudHMuCkNoYW5nZXMgaW4gdjI6
IE5vbmUKCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIHwgICAg
NiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIGIvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwppbmRleCA0N2NlOTQzLi5lMDhmMzE4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKQEAgLTI3Niw2
ICsyNzYsMTIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB2b3BfcmVnX2RhdGEgdm9wX2luaXRfcmVn
X3RhYmxlW10gPSB7CiAJe0RTUF9DVFJMMCwgMHgwMDAwMDAwMH0sCiAJe1dJTjBfQ1RSTDAsIDB4
MDAwMDAwODB9LAogCXtXSU4xX0NUUkwwLCAweDAwMDAwMDgwfSwKKwkvKiBUT0RPOiBXaW4yLzMg
c3VwcG9ydCBtdWx0aXBsZSBhcmVhIGZ1bmN0aW9uLCBidXQgd2UgaGF2ZW4ndCBmb3VuZAorCSAq
IGEgc3VpdGFibGUgd2F5IHRvIHVzZSBpdCB5ZXQsIHNvIGxldCdzIGp1c3QgdXNlIHRoZW0gYXMg
b3RoZXIgd2luZG93cworCSAqIHdpdGggb25seSBhcmVhIDAgZW5hYmxlZC4KKwkgKi8KKwl7V0lO
Ml9DVFJMMCwgMHgwMDAwMDAxMH0sCisJe1dJTjNfQ1RSTDAsIDB4MDAwMDAwMTB9LAogfTsKIAog
LyoKLS0gCjEuNy45LjUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1k
ZXZlbAo=

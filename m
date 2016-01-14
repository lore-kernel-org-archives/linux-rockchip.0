From: Andrzej Hajda <a.hajda@samsung.com>
Subject: [PATCH] drm/rockchip/dsi: fix handling mipi_dsi_pixel_format_to_bpp
 result
Date: Thu, 14 Jan 2016 09:59:02 +0100
Message-ID: <1452761942-23864-1-git-send-email-a.hajda@samsung.com>
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
To: Mark Yao <mark.yao@rock-chips.com>
Cc: "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, "open list:DRM DRIVERS FOR ROCKCHIP" <dri-devel@lists.freedesktop.org>, Andrzej Hajda <a.hajda@samsung.com>, Marek Szyprowski <m.szyprowski@samsung.com>
List-Id: linux-rockchip.vger.kernel.org

VGhlIGZ1bmN0aW9uIGNhbiByZXR1cm4gbmVnYXRpdmUgdmFsdWUgc28gaXQgc2hvdWxkIGJlIGFz
c2lnbmVkIHRvIHNpZ25lZAp2YXJpYWJsZS4KClRoZSBwcm9ibGVtIGhhcyBiZWVuIGRldGVjdGVk
IHVzaW5nIHBhdGNoCnNjcmlwdHMvY29jY2luZWxsZS90ZXN0cy91bnNpZ25lZF9sZXNzZXJfdGhh
bl96ZXJvLmNvY2NpLgoKU2lnbmVkLW9mZi1ieTogQW5kcnplaiBIYWpkYSA8YS5oYWpkYUBzYW1z
dW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYyB8IDMg
KystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYwppbmRleCA3YmZlMjQzLi5mOGY4ZjI5IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYwpAQCAtNDYxLDEwICs0NjEsMTEg
QEAgc3RhdGljIGludCBkd19taXBpX2RzaV9waHlfaW5pdChzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRz
aSkKIAogc3RhdGljIGludCBkd19taXBpX2RzaV9nZXRfbGFuZV9icHMoc3RydWN0IGR3X21pcGlf
ZHNpICpkc2kpCiB7Ci0JdW5zaWduZWQgaW50IGJwcCwgaSwgcHJlOworCXVuc2lnbmVkIGludCBp
LCBwcmU7CiAJdW5zaWduZWQgbG9uZyBtcGNsaywgcGxscmVmLCB0bXA7CiAJdW5zaWduZWQgaW50
IG0gPSAxLCBuID0gMSwgdGFyZ2V0X21icHMgPSAxMDAwOwogCXVuc2lnbmVkIGludCBtYXhfbWJw
cyA9IGRwdGRpbl9tYXBbQVJSQVlfU0laRShkcHRkaW5fbWFwKSAtIDFdLm1heF9tYnBzOworCWlu
dCBicHA7CiAKIAlicHAgPSBtaXBpX2RzaV9waXhlbF9mb3JtYXRfdG9fYnBwKGRzaS0+Zm9ybWF0
KTsKIAlpZiAoYnBwIDwgMCkgewotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpLWRldmVsCg==

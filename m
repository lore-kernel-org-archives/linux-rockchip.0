From: Dan Carpenter <dan.carpenter@oracle.com>
Subject: [patch] drm: rockchip: signedness bug in dw_mipi_dsi_get_lane_bps()
Date: Wed, 20 Jan 2016 12:53:52 +0300
Message-ID: <20160120095352.GA19898@mwanda>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>, Chris Zhong <zyw@rock-chips.com>
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

ImJwcCIgbmVlZHMgdG8gYmUgc2lnbmVkIGZvciB0aGUgZXJyb3IgaGFuZGxpbmcgdG8gd29yay4K
CkZpeGVzOiA4NGUwNTQwOGZjZmUgKCdkcm06IHJvY2tjaGlwOiBTdXBwb3J0IFN5bm9wc3lzIERX
IE1JUEkgRFNJJykKU2lnbmVkLW9mZi1ieTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBv
cmFjbGUuY29tPgoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBp
LWRzaS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMKaW5kZXggN2Jm
ZTI0My4uYzM1ZTVhZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1p
cGktZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMKQEAg
LTQ2MSw3ICs0NjEsOCBAQCBzdGF0aWMgaW50IGR3X21pcGlfZHNpX3BoeV9pbml0KHN0cnVjdCBk
d19taXBpX2RzaSAqZHNpKQogCiBzdGF0aWMgaW50IGR3X21pcGlfZHNpX2dldF9sYW5lX2Jwcyhz
dHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSkKIHsKLQl1bnNpZ25lZCBpbnQgYnBwLCBpLCBwcmU7CisJ
aW50IGJwcDsKKwl1bnNpZ25lZCBpbnQgaSwgcHJlOwogCXVuc2lnbmVkIGxvbmcgbXBjbGssIHBs
bHJlZiwgdG1wOwogCXVuc2lnbmVkIGludCBtID0gMSwgbiA9IDEsIHRhcmdldF9tYnBzID0gMTAw
MDsKIAl1bnNpZ25lZCBpbnQgbWF4X21icHMgPSBkcHRkaW5fbWFwW0FSUkFZX1NJWkUoZHB0ZGlu
X21hcCkgLSAxXS5tYXhfbWJwczsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHA6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cmktZGV2ZWwK

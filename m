From: John Keeping <john@metanate.com>
Subject: [PATCH v2 07/26] drm/rockchip: dw-mipi-dsi: avoid out-of-bounds read
 on tx_buf
Date: Sat, 21 Jan 2017 16:31:09 +0000
Message-ID: <20170121163128.22240-8-john@metanate.com>
References: <20170121163128.22240-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170121163128.22240-1-john@metanate.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QXMgYSBzaWRlLWVmZmVjdCBvZiB0aGlzLCBlbmNvZGUgdGhlIGVuZGlhbm5lc3MgZXhwbGljaXRs
eSByYXRoZXIgdGhhbgpjYXN0aW5nIGEgdTE2LgoKU2lnbmVkLW9mZi1ieTogSm9obiBLZWVwaW5n
IDxqb2huQG1ldGFuYXRlLmNvbT4KLS0tClVuY2hhbmdlZCBpbiB2MgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jIHwgOSArKysrKysrLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
ZHctbWlwaS1kc2kuYwppbmRleCA0YmUxZmYzYTQyYmIuLjJlNmFkNDU5MWViZiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMKQEAgLTU3Miw4ICs1NzIsMTMgQEAgc3RhdGlj
IGludCBkd19taXBpX2RzaV9nZW5fcGt0X2hkcl93cml0ZShzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRz
aSwgdTMyIGhkcl92YWwpCiBzdGF0aWMgaW50IGR3X21pcGlfZHNpX2Rjc19zaG9ydF93cml0ZShz
dHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSwKIAkJCQkgICAgICAgY29uc3Qgc3RydWN0IG1pcGlfZHNp
X21zZyAqbXNnKQogewotCWNvbnN0IHUxNiAqdHhfYnVmID0gbXNnLT50eF9idWY7Ci0JdTMyIHZh
bCA9IEdFTl9IREFUQSgqdHhfYnVmKSB8IEdFTl9IVFlQRShtc2ctPnR5cGUpOworCWNvbnN0IHU4
ICp0eF9idWYgPSBtc2ctPnR4X2J1ZjsKKwl1MzIgdmFsID0gR0VOX0hUWVBFKG1zZy0+dHlwZSk7
CisKKwlpZiAobXNnLT50eF9sZW4gPiAwKQorCQl2YWwgfD0gR0VOX0hEQVRBKHR4X2J1ZlswXSk7
CisJaWYgKG1zZy0+dHhfbGVuID4gMSkKKwkJdmFsIHw9IEdFTl9IREFUQSh0eF9idWZbMV0gPDwg
OCk7CiAKIAlpZiAobXNnLT50eF9sZW4gPiAyKSB7CiAJCWRldl9lcnIoZHNpLT5kZXYsICJ0b28g
bG9uZyB0eCBidWYgbGVuZ3RoICV6dSBmb3Igc2hvcnQgd3JpdGVcbiIsCi0tIAoyLjExLjAuMTk3
LmdiNTU2ZGU1LmRpcnR5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmkt
ZGV2ZWwK

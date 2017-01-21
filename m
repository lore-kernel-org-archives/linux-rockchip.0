From: John Keeping <john@metanate.com>
Subject: [PATCH v2 14/26] drm/rockchip: dw-mipi-dsi: fix escape clock rate
Date: Sat, 21 Jan 2017 16:31:16 +0000
Message-ID: <20170121163128.22240-15-john@metanate.com>
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

VXNlIHRoZSBzYW1lIGNhbGN1bGF0aW9uIGFzIHRoZSB2ZW5kb3Iga2VybmVsIHRvIGRlcml2ZSB0
aGUgZXNjYXBlIGNsb2NrCnNwZWVkLgoKU2lnbmVkLW9mZi1ieTogSm9obiBLZWVwaW5nIDxqb2hu
QG1ldGFuYXRlLmNvbT4KLS0tClVuY2hhbmdlZCBpbiB2MgotLS0KIGRyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9kdy1taXBpLWRzaS5jIHwgNCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2R3LW1pcGktZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ku
YwppbmRleCAyOTAyODJlODZkMTYuLmMyZTBiYTk2ZTBhMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2R3LW1pcGktZHNpLmMKQEAgLTcxMCwxMSArNzEwLDEzIEBAIHN0YXRpYyB2b2lkIGR3X21p
cGlfZHNpX2Rpc2FibGUoc3RydWN0IGR3X21pcGlfZHNpICpkc2kpCiAKIHN0YXRpYyB2b2lkIGR3
X21pcGlfZHNpX2luaXQoc3RydWN0IGR3X21pcGlfZHNpICpkc2kpCiB7CisJdTMyIGVzY19jbGtf
ZGl2aXNpb24gPSAoZHNpLT5sYW5lX21icHMgPj4gMykgLyAyMCArIDE7CisKIAlkc2lfd3JpdGUo
ZHNpLCBEU0lfUFdSX1VQLCBSRVNFVCk7CiAJZHNpX3dyaXRlKGRzaSwgRFNJX1BIWV9SU1RaLCBQ
SFlfRElTRk9SQ0VQTEwgfCBQSFlfRElTQUJMRUNMSwogCQkgIHwgUEhZX1JTVFogfCBQSFlfU0hV
VERPV05aKTsKIAlkc2lfd3JpdGUoZHNpLCBEU0lfQ0xLTUdSX0NGRywgVE9fQ0xLX0RJVklEU0lP
TigxMCkgfAotCQkgIFRYX0VTQ19DTEtfRElWSURTSU9OKDcpKTsKKwkJICBUWF9FU0NfQ0xLX0RJ
VklEU0lPTihlc2NfY2xrX2RpdmlzaW9uKSk7CiB9CiAKIHN0YXRpYyB2b2lkIGR3X21pcGlfZHNp
X2RwaV9jb25maWcoc3RydWN0IGR3X21pcGlfZHNpICpkc2ksCi0tIAoyLjExLjAuMTk3LmdiNTU2
ZGU1LmRpcnR5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

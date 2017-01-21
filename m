From: John Keeping <john@metanate.com>
Subject: [PATCH v2 17/26] drm/rockchip: dw-mipi-dsi: don't enable PHY PLL
 until it's configured
Date: Sat, 21 Jan 2017 16:31:19 +0000
Message-ID: <20170121163128.22240-18-john@metanate.com>
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

U2lnbmVkLW9mZi1ieTogSm9obiBLZWVwaW5nIDxqb2huQG1ldGFuYXRlLmNvbT4KLS0tClVuY2hh
bmdlZCBpbiB2MgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jIHwg
MiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYwppbmRleCBjZTFlNmY5YTIwNDEuLmNmZTdl
NGJhMzA1YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNp
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMKQEAgLTQxMywx
MiArNDEzLDEyIEBAIHN0YXRpYyBpbnQgZHdfbWlwaV9kc2lfcGh5X2luaXQoc3RydWN0IGR3X21p
cGlfZHNpICpkc2kpCiAKIAlkd19taXBpX2RzaV9waHlfd3JpdGUoZHNpLCAweDQ0LCBIU0ZSRVFS
QU5HRV9TRUwodGVzdGRpbikpOwogCi0JZHdfbWlwaV9kc2lfcGh5X3dyaXRlKGRzaSwgMHgxOSwg
UExMX0xPT1BfRElWX0VOIHwgUExMX0lOUFVUX0RJVl9FTik7CiAJZHdfbWlwaV9kc2lfcGh5X3dy
aXRlKGRzaSwgMHgxNywgSU5QVVRfRElWSURFUihkc2ktPmlucHV0X2RpdikpOwogCWR3X21pcGlf
ZHNpX3BoeV93cml0ZShkc2ksIDB4MTgsIExPT1BfRElWX0xPV19TRUwoZHNpLT5mZWVkYmFja19k
aXYpIHwKIAkJCQkJIExPV19QUk9HUkFNX0VOKTsKIAlkd19taXBpX2RzaV9waHlfd3JpdGUoZHNp
LCAweDE4LCBMT09QX0RJVl9ISUdIX1NFTChkc2ktPmZlZWRiYWNrX2RpdikgfAogCQkJCQkgSElH
SF9QUk9HUkFNX0VOKTsKKwlkd19taXBpX2RzaV9waHlfd3JpdGUoZHNpLCAweDE5LCBQTExfTE9P
UF9ESVZfRU4gfCBQTExfSU5QVVRfRElWX0VOKTsKIAogCWR3X21pcGlfZHNpX3BoeV93cml0ZShk
c2ksIDB4MjIsIExPV19QUk9HUkFNX0VOIHwKIAkJCQkJIEJJQVNFWFRSX1NFTChCSUFTRVhUUl8x
MjdfNykpOwotLSAKMi4xMS4wLjE5Ny5nYjU1NmRlNS5kaXJ0eQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

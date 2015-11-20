From: Chris Zhong <zyw@rock-chips.com>
Subject: [PATCH v4 03/13] drm/rockchip: return a true clock rate to
 adjusted_mode
Date: Fri, 20 Nov 2015 16:15:29 +0800
Message-ID: <1448007339-10966-4-git-send-email-zyw@rock-chips.com>
References: <1448007339-10966-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1448007339-10966-1-git-send-email-zyw@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org, mark.yao@rock-chips.com, treding@nvidia.com, emil.l.velikov@gmail.com
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Chris Zhong <zyw@rock-chips.com>, rmk+kernel@arm.linux.org.uk, ajaykumar.rs@samsung.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

U2luY2UgdGhlIG1pcGkgZHNpIGRyaXZlciBuZWVkIHRvIHVzZSB0aGUgY2xvY2sgb2Ygdm9wIHRv
IG1ha2UgdGhlCmNhbGN1bGF0aW9uIG9mIEJsYW5raW5nLiBCdXQgc29tZXRpbWVzIHRoZSBjbG9j
ayBkcml2ZXIgY2FuIG5vdCBzZXQgYQphY2N1cmF0ZSBjbG9ja19yYXRlIGZvciB2b3AsIGdldCBp
dCBieSBjbGtfcm91bmRfcmF0ZSBiZWZvcmUgbW9kZV9zZXQsCnNvIHdlIGNhbiBnZXQgdGhlIHRy
dWUgdmFsdWUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBaaG9uZyA8enl3QHJvY2stY2hpcHMuY29t
PgoKLS0tCgpDaGFuZ2VzIGluIHY0Ogp1c2UgY2xrX3JvdW5kX3JhdGUgdG8gY2hlY2sgdGhlIGNs
b2NrIHJhdGUgaW4gdm9wX2NydGNfbW9kZV9maXh1cAoKQ2hhbmdlcyBpbiB2MzogTm9uZQpDaGFu
Z2VzIGluIHYyOiBOb25lCgogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92
b3AuYyB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwppbmRleCA1ZDhhZTVlLi5lZmY1
NDViIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3Zv
cC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKQEAg
LTExMzYsOSArMTEzNiwxNCBAQCBzdGF0aWMgYm9vbCB2b3BfY3J0Y19tb2RlX2ZpeHVwKHN0cnVj
dCBkcm1fY3J0YyAqY3J0YywKIAkJCQljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9k
ZSwKIAkJCQlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSkKIHsKKwlzdHJ1
Y3Qgdm9wICp2b3AgPSB0b192b3AoY3J0Yyk7CisKIAlpZiAoYWRqdXN0ZWRfbW9kZS0+aHRvdGFs
ID09IDAgfHwgYWRqdXN0ZWRfbW9kZS0+dnRvdGFsID09IDApCiAJCXJldHVybiBmYWxzZTsKIAor
CWFkanVzdGVkX21vZGUtPmNsb2NrID0KKwkJY2xrX3JvdW5kX3JhdGUodm9wLT5kY2xrLCBtb2Rl
LT5jbG9jayAqIDEwMDApIC8gMTAwMDsKKwogCXJldHVybiB0cnVlOwogfQogCi0tIAoyLjYuMwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

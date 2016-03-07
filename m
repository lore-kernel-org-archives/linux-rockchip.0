From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 4/5] drm/rockchip: dw_hdmi: Don't call
 platform_set_drvdata()
Date: Mon,  7 Mar 2016 14:00:53 -0800
Message-ID: <1457388054-23077-4-git-send-email-dianders@chromium.org>
References: <1457388054-23077-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1457388054-23077-1-git-send-email-dianders@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, linux@arm.linux.org.uk, Heiko Stuebner <heiko@sntech.de>
Cc: john@keeping.me.uk, Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhlIFJvY2tjaGlwIGR3X2hkbWkgZHJpdmVyIGp1c3QgY2FsbGVkIHBsYXRmb3JtX3NldF9kcnZk
YXRhKCkgdG8gZ2V0CnlvdXIgaG9wZXMgdXAgdGhhdCBtYXliZSwgc29tZWhvdywgeW91J2QgYmUg
YWJsZSB0byByZXRyaWV2ZSB0aGUgJ3N0cnVjdApyb2NrY2hpcF9oZG1pJyBmcm9tIGEgcG9pbnRl
ciB0byB0aGUgJ3N0cnVjdCBkZXZpY2UnLiAgWW91IGNhbid0LiAgV2hlbgp3ZSBjYWxsIGR3X2hk
bWlfYmluZCgpIHRoZSBtYWluIGRyaXZlciBjYWxscyBkZXZfc2V0X2RydmRhdGEoKSwgd2hpY2gK
Y2xvYmJlcnMgb3VyIHNldHRpbmcuCgpMZXQncyBqdXN0IHJlbW92ZSB0aGUgcGxhdGZvcm1fc2V0
X2RydmRhdGEoKSB0byBhdm9pZCBkYXNoaW5nIHBlb3BsZSdzCmhvcGVzLgoKU2lnbmVkLW9mZi1i
eTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgotLS0KQ2hhbmdlcyBp
biB2MjoKLSBEb24ndCBjYWxsIHBsYXRmb3JtX3NldF9kcnZkYXRhKCkgbmV3IGZvciB2Mi4KCiBk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jIHwgMiAtLQogMSBmaWxl
IGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19o
ZG1pLXJvY2tjaGlwLmMKaW5kZXggODg3NzZhYmE5ODRlLi5kNWNmZWY3NWZjODAgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYwpAQCAtMjcxLDggKzI3MSw2
IEBAIHN0YXRpYyBpbnQgZHdfaGRtaV9yb2NrY2hpcF9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwg
c3RydWN0IGRldmljZSAqbWFzdGVyLAogCWlmICghaW9yZXMpCiAJCXJldHVybiAtRU5YSU87CiAK
LQlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBoZG1pKTsKLQogCWVuY29kZXItPnBvc3NpYmxl
X2NydGNzID0gZHJtX29mX2ZpbmRfcG9zc2libGVfY3J0Y3MoZHJtLCBkZXYtPm9mX25vZGUpOwog
CS8qCiAJICogSWYgd2UgZmFpbGVkIHRvIGZpbmQgdGhlIENSVEMocykgd2hpY2ggdGhpcyBlbmNv
ZGVyIGlzCi0tIAoyLjcuMC5yYzMuMjA3LmcwYWM1MzQ0CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

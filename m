From: John Keeping <john@metanate.com>
Subject: [PATCH v4 19/23] drm/rockchip: dw-mipi-dsi: use positive check for
 N{H, V}SYNC
Date: Fri, 24 Feb 2017 12:55:02 +0000
Message-ID: <20170224125506.21533-20-john@metanate.com>
References: <20170224125506.21533-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170224125506.21533-1-john@metanate.com>
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

VGhpcyBtYXRjaGVzIG90aGVyIGRyaXZlcnMuCgpTaWduZWQtb2ZmLWJ5OiBKb2huIEtlZXBpbmcg
PGpvaG5AbWV0YW5hdGUuY29tPgpSZXZpZXdlZC1ieTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJv
bWl1bS5vcmc+Ci0tLQp2NDoKLSBBZGQgU2VhbidzIFJldmlld2VkLWJ5ClVuY2hhbmdlZCBpbiB2
MwpVbmNoYW5nZWQgaW4gdjIKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1k
c2kuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ku
YyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jCmluZGV4IGNjZjgxOGQ1
YzdhYy4uNjBkZmI1NjY2YTI1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
ZHctbWlwaS1kc2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ku
YwpAQCAtNzkxLDkgKzc5MSw5IEBAIHN0YXRpYyB2b2lkIGR3X21pcGlfZHNpX2RwaV9jb25maWco
c3RydWN0IGR3X21pcGlfZHNpICpkc2ksCiAJCWJyZWFrOwogCX0KIAotCWlmICghKG1vZGUtPmZs
YWdzICYgRFJNX01PREVfRkxBR19QVlNZTkMpKQorCWlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RF
X0ZMQUdfTlZTWU5DKQogCQl2YWwgfD0gVlNZTkNfQUNUSVZFX0xPVzsKLQlpZiAoIShtb2RlLT5m
bGFncyAmIERSTV9NT0RFX0ZMQUdfUEhTWU5DKSkKKwlpZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9E
RV9GTEFHX05IU1lOQykKIAkJdmFsIHw9IEhTWU5DX0FDVElWRV9MT1c7CiAKIAlkc2lfd3JpdGUo
ZHNpLCBEU0lfRFBJX1ZDSUQsIERQSV9WSUQoZHNpLT5jaGFubmVsKSk7Ci0tIAoyLjEyLjAucmMw
LjIzMC5nZjYyNWQ0Y2RiOS5kaXJ0eQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpLWRldmVsCg==

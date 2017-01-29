From: John Keeping <john@metanate.com>
Subject: [PATCH v3 19/24] drm/rockchip: dw-mipi-dsi: use positive check for
 N{H, V}SYNC
Date: Sun, 29 Jan 2017 13:24:39 +0000
Message-ID: <20170129132444.25251-20-john@metanate.com>
References: <20170129132444.25251-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170129132444.25251-1-john@metanate.com>
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
PGpvaG5AbWV0YW5hdGUuY29tPgotLS0KVW5jaGFuZ2VkIGluIHYzClVuY2hhbmdlZCBpbiB2MgoK
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jIHwgNCArKy0tCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jIGIvZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL2R3LW1pcGktZHNpLmMKaW5kZXggYmUzOTVjM2M1YzA2Li5mNWIxNTM3N2VmODUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jCkBAIC03NzQsOSArNzc0LDkgQEAg
c3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfZHBpX2NvbmZpZyhzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRz
aSwKIAkJYnJlYWs7CiAJfQogCi0JaWYgKCEobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX1BW
U1lOQykpCisJaWYgKG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19OVlNZTkMpCiAJCXZhbCB8
PSBWU1lOQ19BQ1RJVkVfTE9XOwotCWlmICghKG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19Q
SFNZTkMpKQorCWlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfTkhTWU5DKQogCQl2YWwg
fD0gSFNZTkNfQUNUSVZFX0xPVzsKIAogCWRzaV93cml0ZShkc2ksIERTSV9EUElfVkNJRCwgRFBJ
X1ZJRChkc2ktPmNoYW5uZWwpKTsKLS0gCjIuMTEuMC4xOTcuZ2I1NTZkZTUuZGlydHkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWls
aW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

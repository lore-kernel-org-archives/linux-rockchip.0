From: John Keeping <john@metanate.com>
Subject: [PATCH v2 22/26] drm/rockchip: vop: test for P{H,V}SYNC
Date: Sat, 21 Jan 2017 16:31:24 +0000
Message-ID: <20170121163128.22240-23-john@metanate.com>
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

V2hlbiBjb25uZWN0ZWQgdG8gdGhlIE1JUEkgRFNJIG91dHB1dCwgd2UgbmVlZCB0byB1c2UgTntI
LFZ9U1lOQyBmb3IgdGhlCmludGVybmFsIGNvbm5lY3Rpb24gYnV0IHRoZXNlIGZsYWdzIGFyZSBt
ZWFuaW5nbGVzcyBmb3IgRFNJIHBhbmVscy4KU3dpdGNoIHRoZSB0ZXN0IHNvIHRoYXQgd2UgZG8g
bm90IHNldCB0aGUgUHtILFZ9U1lOQyBiaXRzIHVubGVzcyB0aGUKbW9kZSByZXF1aXJlcyBpdC4K
ClNpZ25lZC1vZmYtYnk6IEpvaG4gS2VlcGluZyA8am9obkBtZXRhbmF0ZS5jb20+Ci0tLQpVbmNo
YW5nZWQgaW4gdjIKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3Zv
cC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
dm9wLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4
IGM3ZWJhMzA1YzQ4OC4uNjdhZWZjNmQ0ZTlhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9kcm1fdm9wLmMKQEAgLTkzMyw4ICs5MzMsOCBAQCBzdGF0aWMgdm9pZCB2b3Bf
Y3J0Y19lbmFibGUoc3RydWN0IGRybV9jcnRjICpjcnRjKQogCX0KIAogCXBpbl9wb2wgPSAweDg7
Ci0JcGluX3BvbCB8PSAoYWRqdXN0ZWRfbW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX05IU1lO
QykgPyAwIDogMTsKLQlwaW5fcG9sIHw9IChhZGp1c3RlZF9tb2RlLT5mbGFncyAmIERSTV9NT0RF
X0ZMQUdfTlZTWU5DKSA/IDAgOiAoMSA8PCAxKTsKKwlwaW5fcG9sIHw9IChhZGp1c3RlZF9tb2Rl
LT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfUEhTWU5DKSA/IDEgOiAwOworCXBpbl9wb2wgfD0gKGFk
anVzdGVkX21vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19QVlNZTkMpID8gKDEgPDwgMSkgOiAw
OwogCVZPUF9DVFJMX1NFVCh2b3AsIHBpbl9wb2wsIHBpbl9wb2wpOwogCiAJc3dpdGNoIChzLT5v
dXRwdXRfdHlwZSkgewotLSAKMi4xMS4wLjE5Ny5nYjU1NmRlNS5kaXJ0eQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlz
dApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

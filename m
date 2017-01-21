From: John Keeping <john@metanate.com>
Subject: [PATCH v2 23/26] drm/rockchip: dw-mipi-dsi: defer probe if panel is
 not loaded
Date: Sat, 21 Jan 2017 16:31:25 +0000
Message-ID: <20170121163128.22240-24-john@metanate.com>
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

VGhpcyBlbnN1cmVzIHRoYXQgdGhlIG91dHB1dCByZXNvbHV0aW9uIGlzIGtub3duIGJlZm9yZSBm
YmNvbiBsb2Fkcy4KClNpZ25lZC1vZmYtYnk6IEpvaG4gS2VlcGluZyA8am9obkBtZXRhbmF0ZS5j
b20+Ci0tLQpVbmNoYW5nZWQgaW4gdjIKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHct
bWlwaS1kc2kuYyB8IDExICsrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9kdy1taXBpLWRzaS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMK
aW5kZXggZTQ0OGQ3MWJlNDQ3Li4yZGFmYjE3ZTMxZDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9kdy1taXBpLWRzaS5jCkBAIC0xMTczLDEwICsxMTczLDE3IEBAIHN0YXRpYyBpbnQgZHdfbWlw
aV9kc2lfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3RlciwKIAog
CWRzaS0+ZHNpX2hvc3Qub3BzID0gJmR3X21pcGlfZHNpX2hvc3Rfb3BzOwogCWRzaS0+ZHNpX2hv
c3QuZGV2ID0gZGV2OwotCXJldHVybiBtaXBpX2RzaV9ob3N0X3JlZ2lzdGVyKCZkc2ktPmRzaV9o
b3N0KTsKKwlyZXQgPSBtaXBpX2RzaV9ob3N0X3JlZ2lzdGVyKCZkc2ktPmRzaV9ob3N0KTsKKwlp
ZiAoIXJldCAmJiAhZHNpLT5wYW5lbCkgeworCQltaXBpX2RzaV9ob3N0X3VucmVnaXN0ZXIoJmRz
aS0+ZHNpX2hvc3QpOworCQlkcm1fZW5jb2Rlcl9jbGVhbnVwKCZkc2ktPmVuY29kZXIpOworCQlk
cm1fY29ubmVjdG9yX2NsZWFudXAoJmRzaS0+Y29ubmVjdG9yKTsKKwkJcmV0ID0gLUVQUk9CRV9E
RUZFUjsKKwl9CiAKIGVycl9wbGxyZWY6Ci0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRzaS0+cGxs
cmVmX2Nsayk7CisJaWYgKHJldCkKKwkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRzaS0+cGxscmVm
X2Nsayk7CiAJcmV0dXJuIHJldDsKIH0KIAotLSAKMi4xMS4wLjE5Ny5nYjU1NmRlNS5kaXJ0eQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

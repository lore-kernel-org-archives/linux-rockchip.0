From: Dan Carpenter <dan.carpenter@oracle.com>
Subject: [patch] drm/rockchip: inno_hdmi: fix an error code
Date: Fri, 26 Feb 2016 00:30:29 +0300
Message-ID: <20160225213029.GA18267@mwanda>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>, Yakir Yang <ykk@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

V2Ugd2VyZSBhY2NpZGVudGFsbHkgcmV0dXJuaW5nIFBUUl9FUlIoTlVMTCkgd2hpY2ggbWVhbnMg
c3VjY2VzcyB3aGVuIHdlCndhbnRlZCB0byByZXR1cm4gYSBuZWdhdGl2ZSBlcnJvciBjb2RlLgoK
Rml4ZXM6IDQxMmQ0YWU2YjdhNSAoJ2RybS9yb2NrY2hpcDogaGRtaTogYWRkIElubm9zaWxpY29u
IEhETUkgc3VwcG9ydCcpClNpZ25lZC1vZmYtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50
ZXJAb3JhY2xlLmNvbT4KCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5u
b19oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMKaW5kZXggMTBk
NjJmZi4uZjI1MjQ0MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2lubm9f
aGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYwpAQCAtODU1
LDggKzg1NSw5IEBAIHN0YXRpYyBpbnQgaW5ub19oZG1pX2JpbmQoc3RydWN0IGRldmljZSAqZGV2
LCBzdHJ1Y3QgZGV2aWNlICptYXN0ZXIsCiAKIAloZG1pLT5kZGMgPSBpbm5vX2hkbWlfaTJjX2Fk
YXB0ZXIoaGRtaSk7CiAJaWYgKElTX0VSUihoZG1pLT5kZGMpKSB7CisJCXJldCA9IFBUUl9FUlIo
aGRtaS0+ZGRjKTsKIAkJaGRtaS0+ZGRjID0gTlVMTDsKLQkJcmV0dXJuIFBUUl9FUlIoaGRtaS0+
ZGRjKTsKKwkJcmV0dXJuIHJldDsKIAl9CiAKIAkvKgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcmktZGV2ZWwK

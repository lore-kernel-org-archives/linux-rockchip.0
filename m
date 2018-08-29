From: Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH v7 3/3] drm/rockchip: Add directly output rgb feature for px30
Date: Wed, 29 Aug 2018 11:12:44 +0800
Message-ID: <1535512364-80764-4-git-send-email-hjc@rock-chips.com>
References: <1535512364-80764-1-git-send-email-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1535512364-80764-1-git-send-email-hjc@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: hjc@rock-chips.com, heiko@sntech.de, seanpaul@chromium.org, David Airlie <airlied@linux.ie>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

QWRkIHRoaXMgZmVhdHVyZSBiaXQgaW5kaWNhdGUgcHgzMCB2b3AgY2FuIGRpcmVjdGx5IG91dHB1
dApwYXJhbGxlbCBvciBzZXJpYWwgcmdiIGRhdGEuCgpTaWduZWQtb2ZmLWJ5OiBTYW5keSBIdWFu
ZyA8aGpjQHJvY2stY2hpcHMuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF92b3BfcmVnLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcF9yZWcuYyBi
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3BfcmVnLmMKaW5kZXggZDgyNGNh
Ni4uZDJjM2E1YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlw
X3ZvcF9yZWcuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wX3Jl
Zy5jCkBAIC0yNzgsNiArMjc4LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB2b3Bfd2luX2RhdGEg
cHgzMF92b3BfYmlnX3dpbl9kYXRhW10gPSB7CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgdm9wX2Rh
dGEgcHgzMF92b3BfYmlnID0gewogCS5pbnRyID0gJnB4MzBfaW50ciwKKwkuZmVhdHVyZSA9IFZP
UF9GRUFUVVJFX0lOVEVSTkFMX1JHQiwKIAkuY29tbW9uID0gJnB4MzBfY29tbW9uLAogCS5tb2Rl
c2V0ID0gJnB4MzBfbW9kZXNldCwKIAkub3V0cHV0ID0gJnB4MzBfb3V0cHV0LApAQCAtMjkyLDYg
KzI5Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgdm9wX3dpbl9kYXRhIHB4MzBfdm9wX2xpdF93
aW5fZGF0YVtdID0gewogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHZvcF9kYXRhIHB4MzBfdm9wX2xp
dCA9IHsKIAkuaW50ciA9ICZweDMwX2ludHIsCisJLmZlYXR1cmUgPSBWT1BfRkVBVFVSRV9JTlRF
Uk5BTF9SR0IsCiAJLmNvbW1vbiA9ICZweDMwX2NvbW1vbiwKIAkubW9kZXNldCA9ICZweDMwX21v
ZGVzZXQsCiAJLm91dHB1dCA9ICZweDMwX291dHB1dCwKLS0gCjIuNy40CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlz
dApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

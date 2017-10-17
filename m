From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [RFC PATCH v4 4/8] drm/rockchip: dw_hdmi: Fix error handling path
Date: Tue, 17 Oct 2017 18:16:20 +0800
Message-ID: <20171017101624.12506-5-jeffy.chen@rock-chips.com>
References: <20171017101624.12506-1-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20171017101624.12506-1-jeffy.chen@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: linux-kernel@vger.kernel.org
Cc: dmitry.torokhov@gmail.com, briannorris@chromium.org, rjw@rjwysocki.net, dianders@chromium.org, dri-devel@lists.freedesktop.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, Jeffy Chen <jeffy.chen@rock-chips.com>, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QWRkIG1pc3NpbmcgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKCkgaW4gYmluZCgpJ3MgZXJyb3IgaGFu
ZGxpbmcgcGF0aC4KCkZpeGVzOiAxMmI5ZjIwNGU4MDQgKCJkcm06IGJyaWRnZS9kd19oZG1pOiBh
ZGQgcm9ja2NoaXAgcmszMjg4IHN1cHBvcnQiKQpTaWduZWQtb2ZmLWJ5OiBKZWZmeSBDaGVuIDxq
ZWZmeS5jaGVuQHJvY2stY2hpcHMuY29tPgotLS0KCkNoYW5nZXMgaW4gdjQ6IE5vbmUKQ2hhbmdl
cyBpbiB2MzogTm9uZQpDaGFuZ2VzIGluIHYyOiBOb25lCgogZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2R3X2hkbWktcm9ja2NoaXAuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9kd19oZG1pLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRt
aS1yb2NrY2hpcC5jCmluZGV4IDFlYjAyYTgyZmQ5MS4uNTgyMjgzZGE3ODYxIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMKQEAgLTM4Myw4ICszODMsMTAg
QEAgc3RhdGljIGludCBkd19oZG1pX3JvY2tjaGlwX2JpbmQoc3RydWN0IGRldmljZSAqZGV2LCBz
dHJ1Y3QgZGV2aWNlICptYXN0ZXIsCiAJICogSWYgZHdfaGRtaV9iaW5kKCkgZmFpbHMgd2UnbGwg
bmV2ZXIgY2FsbCBkd19oZG1pX3VuYmluZCgpLAogCSAqIHdoaWNoIHdvdWxkIGhhdmUgY2FsbGVk
IHRoZSBlbmNvZGVyIGNsZWFudXAuICBEbyBpdCBtYW51YWxseS4KIAkgKi8KLQlpZiAocmV0KQor
CWlmIChyZXQpIHsKIAkJZHJtX2VuY29kZXJfY2xlYW51cChlbmNvZGVyKTsKKwkJY2xrX2Rpc2Fi
bGVfdW5wcmVwYXJlKGhkbWktPnZwbGxfY2xrKTsKKwl9CiAKIAlyZXR1cm4gcmV0OwogfQotLSAK
Mi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

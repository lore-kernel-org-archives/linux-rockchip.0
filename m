From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v2 1/5] drm/rockchip: vop: optimize virtual stride calculate
Date: Fri, 26 Jun 2015 18:07:25 +0800
Message-ID: <1435313249-4549-2-git-send-email-mark.yao@rock-chips.com>
References: <1435313249-4549-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1435313249-4549-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: dri-devel@lists.freedesktop.org
Cc: zwl@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, xw@rock-chips.com, dkm@rock-chips.com, sandy.huang@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

dmlyX3N0cmlkZSBuZWVkIG51bWJlciB3b3JkcyBvZiB0aGUgdmlydHVhbCB3aWR0aCwgYW5kIGZi
LT5waXRjaGVzCnNhdmUgYnl0ZXNfcGVyX3BpeGVsLCBzbyBqdXN0IGRpdiA0IHN3aXRjaCB0byBz
dHJpZGUuCgpTaWduZWQtb2ZmLWJ5OiBNYXJrIFlhbyA8bWFyay55YW9Acm9jay1jaGlwcy5jb20+
Ci0tLQpDaGFuZ2VzIGluIHYyOiBOb25lCgogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2RybV92b3AuYyB8ICAgIDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fdm9wLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3Zv
cC5jCmluZGV4IDYxODgyMjEuLjNjOWY0ZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV92b3AuYwpAQCAtNjQ0LDcgKzY0NCw3IEBAIHN0YXRpYyBpbnQgdm9wX3Vw
ZGF0ZV9wbGFuZV9ldmVudChzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKIAlvZmZzZXQgKz0gKHNy
Yy55MSA+PiAxNikgKiBmYi0+cGl0Y2hlc1swXTsKIAl5cmdiX21zdCA9IHJrX29iai0+ZG1hX2Fk
ZHIgKyBvZmZzZXQ7CiAKLQl5X3Zpcl9zdHJpZGUgPSBmYi0+cGl0Y2hlc1swXSAvIChmYi0+Yml0
c19wZXJfcGl4ZWwgPj4gMyk7CisJeV92aXJfc3RyaWRlID0gZmItPnBpdGNoZXNbMF0gPj4gMjsK
IAogCS8qCiAJICogSWYgdGhpcyBwbGFuZSB1cGRhdGUgY2hhbmdlcyB0aGUgcGxhbmUncyBmcmFt
ZWJ1ZmZlciwgKG9yIG1vcmUKLS0gCjEuNy45LjUKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaS1kZXZlbAo=

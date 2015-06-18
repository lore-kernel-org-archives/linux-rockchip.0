From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH 2/6] drm/rockchip: vop: optimize virtual stride calculate
Date: Thu, 18 Jun 2015 15:49:26 +0800
Message-ID: <1434613770-6608-3-git-send-email-mark.yao@rock-chips.com>
References: <1434613770-6608-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1434613770-6608-1-git-send-email-mark.yao@rock-chips.com>
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
Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyB8ICAgIDIg
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgYi9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4IDYxODgyMjEuLjNj
OWY0ZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
dm9wLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwpA
QCAtNjQ0LDcgKzY0NCw3IEBAIHN0YXRpYyBpbnQgdm9wX3VwZGF0ZV9wbGFuZV9ldmVudChzdHJ1
Y3QgZHJtX3BsYW5lICpwbGFuZSwKIAlvZmZzZXQgKz0gKHNyYy55MSA+PiAxNikgKiBmYi0+cGl0
Y2hlc1swXTsKIAl5cmdiX21zdCA9IHJrX29iai0+ZG1hX2FkZHIgKyBvZmZzZXQ7CiAKLQl5X3Zp
cl9zdHJpZGUgPSBmYi0+cGl0Y2hlc1swXSAvIChmYi0+Yml0c19wZXJfcGl4ZWwgPj4gMyk7CisJ
eV92aXJfc3RyaWRlID0gZmItPnBpdGNoZXNbMF0gPj4gMjsKIAogCS8qCiAJICogSWYgdGhpcyBw
bGFuZSB1cGRhdGUgY2hhbmdlcyB0aGUgcGxhbmUncyBmcmFtZWJ1ZmZlciwgKG9yIG1vcmUKLS0g
CjEuNy45LjUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

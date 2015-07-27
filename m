From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v4 1/6] drm/rockchip: vop: Fix virtual stride calculation
Date: Mon, 27 Jul 2015 10:05:57 +0800
Message-ID: <1437962762-19157-2-git-send-email-mark.yao@rock-chips.com>
References: <1437962762-19157-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1437962762-19157-1-git-send-email-mark.yao@rock-chips.com>
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
Cc: zwl@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, dkm@rock-chips.com, sandy.huang@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

dmlyX3N0cmlkZSBuZWVkIG51bWJlciB3b3JkcyBvZiB0aGUgdmlydHVhbCB3aWR0aCwgYW5kIGZi
LT5waXRjaGVzCnNhdmUgYnl0ZXNfcGVyX3BpeGVsLCBzbyBqdXN0IGRpdiA0IHN3aXRjaCB0byBz
dHJpZGUuCgpTaWduZWQtb2ZmLWJ5OiBNYXJrIFlhbyA8bWFyay55YW9Acm9jay1jaGlwcy5jb20+
Ci0tLQpDaGFuZ2VzIGluIHY0OiBOb25lCgpDaGFuZ2VzIGluIHYzOgpBZHZpY2VkIGJ5IFRvbWFz
eiBGaWdhCi0gdXNlIG1vcmUgc3VpdGFibGUgdGlsZSBmb3IgdGhpcyBwYXRjaC4gCgpDaGFuZ2Vz
IGluIHYyOiBOb25lCgogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Au
YyB8ICAgIDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4IDM0
Yjc4ZTcuLjZiNDQ3MzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fdm9wLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV92b3AuYwpAQCAtNjY3LDcgKzY2Nyw3IEBAIHN0YXRpYyBpbnQgdm9wX3VwZGF0ZV9wbGFuZV9l
dmVudChzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKIAlvZmZzZXQgKz0gKHNyYy55MSA+PiAxNikg
KiBmYi0+cGl0Y2hlc1swXTsKIAl5cmdiX21zdCA9IHJrX29iai0+ZG1hX2FkZHIgKyBvZmZzZXQ7
CiAKLQl5X3Zpcl9zdHJpZGUgPSBmYi0+cGl0Y2hlc1swXSAvIChmYi0+Yml0c19wZXJfcGl4ZWwg
Pj4gMyk7CisJeV92aXJfc3RyaWRlID0gZmItPnBpdGNoZXNbMF0gPj4gMjsKIAogCS8qCiAJICog
SWYgdGhpcyBwbGFuZSB1cGRhdGUgY2hhbmdlcyB0aGUgcGxhbmUncyBmcmFtZWJ1ZmZlciwgKG9y
IG1vcmUKLS0gCjEuNy45LjUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aS1kZXZlbAo=

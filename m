From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v3 1/6] drm/rockchip: vop: Fix virtual stride calculation
Date: Tue, 21 Jul 2015 16:20:02 +0800
Message-ID: <1437466807-13689-2-git-send-email-mark.yao@rock-chips.com>
References: <1437466807-13689-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1437466807-13689-1-git-send-email-mark.yao@rock-chips.com>
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
Ci0tLQpDaGFuZ2VzIGluIHYzOgpBZHZpY2VkIGJ5IFRvbWFzeiBGaWdhCi0gdXNlIG1vcmUgc3Vp
dGFibGUgdGlsZSBmb3IgdGhpcyBwYXRjaC4gCgpDaGFuZ2VzIGluIHYyOiBOb25lCgogZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyB8ICAgIDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4IDQ1NTdmMzMuLjM1NThhY2IgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwpAQCAtNjQ0LDcgKzY0
NCw3IEBAIHN0YXRpYyBpbnQgdm9wX3VwZGF0ZV9wbGFuZV9ldmVudChzdHJ1Y3QgZHJtX3BsYW5l
ICpwbGFuZSwKIAlvZmZzZXQgKz0gKHNyYy55MSA+PiAxNikgKiBmYi0+cGl0Y2hlc1swXTsKIAl5
cmdiX21zdCA9IHJrX29iai0+ZG1hX2FkZHIgKyBvZmZzZXQ7CiAKLQl5X3Zpcl9zdHJpZGUgPSBm
Yi0+cGl0Y2hlc1swXSAvIChmYi0+Yml0c19wZXJfcGl4ZWwgPj4gMyk7CisJeV92aXJfc3RyaWRl
ID0gZmItPnBpdGNoZXNbMF0gPj4gMjsKIAogCS8qCiAJICogSWYgdGhpcyBwbGFuZSB1cGRhdGUg
Y2hhbmdlcyB0aGUgcGxhbmUncyBmcmFtZWJ1ZmZlciwgKG9yIG1vcmUKLS0gCjEuNy45LjUKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwg
bWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

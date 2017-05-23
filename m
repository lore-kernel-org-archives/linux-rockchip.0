From: Jeffy Chen <jeffy.chen@rock-chips.com>
Subject: [PATCH] drm/rockchip: Don't allow zero sized gem buffer
Date: Tue, 23 May 2017 14:39:43 +0800
Message-ID: <1495521583-29151-1-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
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
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>, dri-devel@lists.freedesktop.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhlIHN5c3RlbSB3b3VsZCBjcmFzaCB3aGVuIHRyeWluZyB0byBhbGxvYyB6ZXJvIHNpemVkIGdl
bSBidWZmZXI6ClsgICAgNi43MTI0MzVdIFVuYWJsZSB0byBoYW5kbGUga2VybmVsIE5VTEwgcG9p
bnRlciBkZXJlZmVyZW5jZSBhdCB2aXJ0dWFsIGFkZHJlc3MgMDAwMDAwMTAgPC0tWkVST19TSVpF
X1BUUgouLi4KWyAgICA2Ljc1NzUwMl0gUEMgaXMgYXQgc2dfYWxsb2NfdGFibGVfZnJvbV9wYWdl
cysweDE3MC8weDFlYwoKU2lnbmVkLW9mZi1ieTogSmVmZnkgQ2hlbiA8amVmZnkuY2hlbkByb2Nr
LWNoaXBzLmNvbT4KLS0tCgogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9n
ZW0uYyB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwppbmRleCBkZjllNTcwLi44OTE3
OTIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dl
bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMKQEAg
LTMxNSw2ICszMTUsMTEgQEAgc3RydWN0IHJvY2tjaGlwX2dlbV9vYmplY3QgKgogCXN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqb2JqOwogCWludCByZXQ7CiAKKwlpZiAoIXNpemUpIHsKKwkJRFJNX0VS
Uk9SKCJnZW0gYnVmZmVyIHNpemUgaXMgemVyb1xuIik7CisJCXJldHVybiBFUlJfUFRSKC1FSU5W
QUwpOworCX0KKwogCXNpemUgPSByb3VuZF91cChzaXplLCBQQUdFX1NJWkUpOwogCiAJcmtfb2Jq
ID0ga3phbGxvYyhzaXplb2YoKnJrX29iaiksIEdGUF9LRVJORUwpOwotLSAKMi4xLjQKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFp
bGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

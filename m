From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH] drm/rockchip: vop: Initialize vskiplines to zero
Date: Fri, 29 Apr 2016 15:42:17 +0800
Message-ID: <1461915737-23156-1-git-send-email-mark.yao@rock-chips.com>
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
To: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

VGhlcmUgaXMgYSBwYXRoIHRoYXQgdXNlIHZza2lwbGluZXMgd2l0aCBub24taW5pdGlhbGl6ZS4K
VGhhdCB3b3VsZCBjYXVzZSB2b3AgYWJub3JtYWwgYmVoYXZpb3IuCgpTaWduZWQtb2ZmLWJ5OiBN
YXJrIFlhbyA8bWFyay55YW9Acm9jay1jaGlwcy5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX3ZvcC5jCmluZGV4IDg2NTJiYjEuLmJmNTVjZGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwpAQCAtMzEwLDcgKzMxMCw3IEBAIHN0YXRpYyB2
b2lkIHNjbF92b3BfY2FsX3NjbF9mYWMoc3RydWN0IHZvcCAqdm9wLCBjb25zdCBzdHJ1Y3Qgdm9w
X3dpbl9kYXRhICp3aW4sCiAJdWludDE2X3QgdnN1X21vZGU7CiAJdWludDE2X3QgbGJfbW9kZTsK
IAl1aW50MzJfdCB2YWw7Ci0JaW50IHZza2lwbGluZXM7CisJaW50IHZza2lwbGluZXMgPSAwOwog
CiAJaWYgKGRzdF93ID4gMzg0MCkgewogCQlEUk1fRVJST1IoIk1heGltdW0gZGVzdGluYXRpb24g
d2lkdGggKDM4NDApIGV4Y2VlZGVkXG4iKTsKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

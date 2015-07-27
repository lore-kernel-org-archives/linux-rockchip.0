From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH v4 5/6] drm/rockchip: vop: restore vop registers when resume
Date: Mon, 27 Jul 2015 10:08:27 +0800
Message-ID: <1437962907-19229-1-git-send-email-mark.yao@rock-chips.com>
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

VGhlIHJlZ2lzdGVycyB3aWxsIGJlIHJlc2V0IHRvIGRlZmF1bHQgdmFsdWVzIHdoZW4gd2hvbGUK
cG93ZXIgZG9tYWluIG9mZiwgc28gcmVzdG9yZSByZWdpc3RlcnMgZnJvbSByZWdzYmFrLgoKU2ln
bmVkLW9mZi1ieTogTWFyayBZYW8gPG1hcmsueWFvQHJvY2stY2hpcHMuY29tPgotLS0KQ2hhbmdl
cyBpbiB2NDogTm9uZQoKIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
LmMgfCAgICAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgYi9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4IDRhMjkyM2IuLjE2YjdkOTgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwpAQCAtNDk2
LDYgKzQ5Niw3IEBAIHN0YXRpYyB2b2lkIHZvcF9lbmFibGUoc3RydWN0IGRybV9jcnRjICpjcnRj
KQogCQlnb3RvIGVycl9kaXNhYmxlX2FjbGs7CiAJfQogCisJbWVtY3B5KHZvcC0+cmVncywgdm9w
LT5yZWdzYmFrLCB2b3AtPmxlbik7CiAJLyoKIAkgKiBBdCBoZXJlLCB2b3AgY2xvY2sgJiBpb21t
dSBpcyBlbmFibGUsIFIvVyB2b3AgcmVncyB3b3VsZCBiZSBzYWZlLgogCSAqLwotLSAKMS43Ljku
NQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1k
ZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

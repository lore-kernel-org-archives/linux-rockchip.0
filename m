From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH 2/3] drm: add ARM vendor format afbc
Date: Sat, 10 Sep 2016 10:29:03 +0800
Message-ID: <1473474544-16248-2-git-send-email-mark.yao@rock-chips.com>
References: <1473474544-16248-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1473474544-16248-1-git-send-email-mark.yao@rock-chips.com>
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

QUZCQyBpcyBhcm0gdmVuZG9yIGZvcm1hdCwgaXQncyBhIGNvbXByZXNzZWQgZm9ybWF0LgoKVGhl
IEFGQkMgZm9ybWF0IGlzIHN1cHBvcnRlZCBieSByazMzOTkgdm9wIGJpZy4KCldlIGtub3cgbGl0
dGxlIGFib3V0IEFGQkMgbGF5b3V0LCBob3BlIHRvIHNvbWUgZ3V5cyBjYW4KZml4bWUgYWJvdXQg
dGhlIGFmYmMgY29tbWVudC4KClNpZ25lZC1vZmYtYnk6IE1hcmsgWWFvIDxtYXJrLnlhb0Byb2Nr
LWNoaXBzLmNvbT4KLS0tCiBpbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaCB8IDcgKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUv
dWFwaS9kcm0vZHJtX2ZvdXJjYy5oIGIvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgKaW5k
ZXggYTU4OTBiZi4uOWE0N2Q3ZSAxMDA2NDQKLS0tIGEvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91
cmNjLmgKKysrIGIvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgKQEAgLTE1OSw2ICsxNTks
NyBAQCBleHRlcm4gIkMiIHsKICNkZWZpbmUgRFJNX0ZPUk1BVF9NT0RfVkVORE9SX05WICAgICAg
MHgwMwogI2RlZmluZSBEUk1fRk9STUFUX01PRF9WRU5ET1JfU0FNU1VORyAweDA0CiAjZGVmaW5l
IERSTV9GT1JNQVRfTU9EX1ZFTkRPUl9RQ09NICAgIDB4MDUKKyNkZWZpbmUgRFJNX0ZPUk1BVF9N
T0RfVkVORE9SX0FSTSAgICAgMHgwNgogLyogYWRkIG1vcmUgdG8gdGhlIGVuZCBhcyBuZWVkZWQg
Ki8KIAogI2RlZmluZSBmb3VyY2NfbW9kX2NvZGUodmVuZG9yLCB2YWwpIFwKQEAgLTIzMyw2ICsy
MzQsMTIgQEAgZXh0ZXJuICJDIiB7CiAgKi8KICNkZWZpbmUgRFJNX0ZPUk1BVF9NT0RfU0FNU1VO
R182NF8zMl9USUxFCWZvdXJjY19tb2RfY29kZShTQU1TVU5HLCAxKQogCisvKgorICogRklYTUU6
IEFGQkMgaXMgYXJtIHZlbmRvciBmb3JtYXQsIGl0J3MgYSBjb21wcmVzc2VkIGZvcm1hdC4KKyAq
CisgKi8KKyNkZWZpbmUgRFJNX0ZPUk1BVF9NT0RfQVJNX0FGQkMJZm91cmNjX21vZF9jb2RlKEFS
TSwgMSkKKwogI2lmIGRlZmluZWQoX19jcGx1c3BsdXMpCiB9CiAjZW5kaWYKLS0gCjEuOS4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

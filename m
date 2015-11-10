From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH] drm/rockchip: vop: fix window origin calculation
Date: Tue, 10 Nov 2015 17:59:10 +0800
Message-ID: <1447149550-18595-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, Russell King <linux@arm.linux.org.uk>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

RnJvbTogRG9taW5payBCZWhyIDxkYmVockBjaHJvbWl1bS5vcmc+CgpWT1BfV0lOeF9EU1BfU1Qg
ZG9lcyBub3QgcmVxdWlyZSBzdWJ0cmFjdGluZyAxIGZyb20gdGhlIHZhbHVlcyB3cml0dGVuIHRv
Cml0LiBJdCBhY3R1YWxseSBjYXVzZXMgdGhlIHNjcmVlbiB0byBiZSBzaGlmdGVkIGJ5IG9uZSBw
aXhlbC4KClNpZ25lZC1vZmYtYnk6IE1hcmsgWWFvIDxtYXJrLnlhb0Byb2NrLWNoaXBzLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIHwgICAgNCAr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgYi9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4IDQ4NzE5ZGYu
LjQ3MzBhZTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fdm9wLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Au
YwpAQCAtOTU5LDggKzk1OSw4IEBAIHN0YXRpYyBpbnQgdm9wX3VwZGF0ZV9wbGFuZV9ldmVudChz
dHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKIAl2YWwgPSAoZGVzdC55MiAtIGRlc3QueTEgLSAxKSA8
PCAxNjsKIAl2YWwgfD0gKGRlc3QueDIgLSBkZXN0LngxIC0gMSkgJiAweGZmZmY7CiAJVk9QX1dJ
Tl9TRVQodm9wLCB3aW4sIGRzcF9pbmZvLCB2YWwpOwotCXZhbCA9IChkc3Bfc3R5IC0gMSkgPDwg
MTY7Ci0JdmFsIHw9IChkc3Bfc3R4IC0gMSkgJiAweGZmZmY7CisJdmFsID0gZHNwX3N0eSA8PCAx
NjsKKwl2YWwgfD0gZHNwX3N0eCAmIDB4ZmZmZjsKIAlWT1BfV0lOX1NFVCh2b3AsIHdpbiwgZHNw
X3N0LCB2YWwpOwogCVZPUF9XSU5fU0VUKHZvcCwgd2luLCByYl9zd2FwLCByYl9zd2FwKTsKIAot
LSAKMS43LjkuNQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVs
Cg==

From: SF Markus Elfring <elfring@users.sourceforge.net>
Subject: [PATCH] drm/rockchip: Delete an unnecessary check before
 drm_gem_object_unreference_unlocked()
Date: Fri, 15 Jul 2016 15:35:42 +0200
Message-ID: <b66399ed-278b-b85d-4a21-b34164936ef6@users.sourceforge.net>
References: <5307CAA2.8060406@users.sourceforge.net>
 <alpine.DEB.2.02.1402212321410.2043@localhost6.localdomain6>
 <530A086E.8010901@users.sourceforge.net>
 <alpine.DEB.2.02.1402231635510.1985@localhost6.localdomain6>
 <530A72AA.3000601@users.sourceforge.net>
 <alpine.DEB.2.02.1402240658210.2090@localhost6.localdomain6>
 <530B5FB6.6010207@users.sourceforge.net>
 <alpine.DEB.2.10.1402241710370.2074@hadrien>
 <530C5E18.1020800@users.sourceforge.net>
 <alpine.DEB.2.10.1402251014170.2080@hadrien>
 <530CD2C4.4050903@users.sourceforge.net>
 <alpine.DEB.2.10.1402251840450.7035@hadrien>
 <530CF8FF.8080600@users.sourceforge.net>
 <alpine.DEB.2.02.1402252117150.2047@localhost6.localdomain6>
 <530DD06F.4090703@users.sourceforge.net>
 <alpine.DEB.2.02.1402262129250.2221@localhost6.localdomain6>
 <5317A59D.4@users.sourceforge.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <5317A59D.4@users.sourceforge.net>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, Mark Yao <mark.yao@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Julia Lawall <julia.lawall@lip6.fr>, kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

RnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNlcnMuc291cmNlZm9yZ2UubmV0PgpEYXRl
OiBGcmksIDE1IEp1bCAyMDE2IDE1OjIzOjIyICswMjAwCgpUaGUgZHJtX2dlbV9vYmplY3RfdW5y
ZWZlcmVuY2VfdW5sb2NrZWQoKSBmdW5jdGlvbiB0ZXN0cyB3aGV0aGVyCml0cyBhcmd1bWVudCBp
cyBOVUxMIGFuZCB0aGVuIHJldHVybnMgaW1tZWRpYXRlbHkuClRodXMgdGhlIHRlc3QgYXJvdW5k
IHRoZSBjYWxsIGlzIG5vdCBuZWVkZWQuCgpUaGlzIGlzc3VlIHdhcyBkZXRlY3RlZCBieSB1c2lu
ZyB0aGUgQ29jY2luZWxsZSBzb2Z0d2FyZS4KClNpZ25lZC1vZmYtYnk6IE1hcmt1cyBFbGZyaW5n
IDxlbGZyaW5nQHVzZXJzLnNvdXJjZWZvcmdlLm5ldD4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMgfCA4ICsrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fZmIuYwppbmRleCAyMGYxMmJjLi42ZjY0ZTc5IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9mYi5jCkBAIC00MywxNCArNDMsMTAgQEAgc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpyb2NrY2hpcF9mYl9nZXRfZ2VtX29iaihzdHJ1Y3QgZHJtX2ZyYW1l
YnVmZmVyICpmYiwKIHN0YXRpYyB2b2lkIHJvY2tjaGlwX2RybV9mYl9kZXN0cm95KHN0cnVjdCBk
cm1fZnJhbWVidWZmZXIgKmZiKQogewogCXN0cnVjdCByb2NrY2hpcF9kcm1fZmIgKnJvY2tjaGlw
X2ZiID0gdG9fcm9ja2NoaXBfZmIoZmIpOwotCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqOwog
CWludCBpOwogCi0JZm9yIChpID0gMDsgaSA8IFJPQ0tDSElQX01BWF9GQl9CVUZGRVI7IGkrKykg
ewotCQlvYmogPSByb2NrY2hpcF9mYi0+b2JqW2ldOwotCQlpZiAob2JqKQotCQkJZHJtX2dlbV9v
YmplY3RfdW5yZWZlcmVuY2VfdW5sb2NrZWQob2JqKTsKLQl9CisJZm9yIChpID0gMDsgaSA8IFJP
Q0tDSElQX01BWF9GQl9CVUZGRVI7IGkrKykKKwkJZHJtX2dlbV9vYmplY3RfdW5yZWZlcmVuY2Vf
dW5sb2NrZWQocm9ja2NoaXBfZmItPm9ialtpXSk7CiAKIAlkcm1fZnJhbWVidWZmZXJfY2xlYW51
cChmYik7CiAJa2ZyZWUocm9ja2NoaXBfZmIpOwotLSAKMi45LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

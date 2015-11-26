From: Chris Zhong <zyw@rock-chips.com>
Subject: [PATCH v5 05/11] drm: bridge: allow some funcs to be optional
Date: Thu, 26 Nov 2015 15:50:19 +0800
Message-ID: <1448524225-5489-6-git-send-email-zyw@rock-chips.com>
References: <1448524225-5489-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1448524225-5489-1-git-send-email-zyw@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org, mark.yao@rock-chips.com, treding@nvidia.com
Cc: Chris Zhong <zyw@rock-chips.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

Q2hlY2sgdGhlIHZhbGlkaXR5IG9mIHBvc3RfZGlzYWJsZS9wcmVfZW5hYmxlIGluIGJyaWRnZS0+
ZnVuY3MgYmVmb3JlCmNhbGwgdGhlbS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFpob25nIDx6eXdA
cm9jay1jaGlwcy5jb20+Ci0tLQoKQ2hhbmdlcyBpbiB2NTogTm9uZQpDaGFuZ2VzIGluIHY0OiBO
b25lCkNoYW5nZXMgaW4gdjM6IE5vbmUKQ2hhbmdlcyBpbiB2MjogTm9uZQoKIGRyaXZlcnMvZ3B1
L2RybS9kcm1fYnJpZGdlLmMgfCA2ICsrKystLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Jy
aWRnZS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9icmlkZ2UuYwppbmRleCA2YjhmNzIxLi44ZjI5
MzMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2JyaWRnZS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9kcm1fYnJpZGdlLmMKQEAgLTIyMyw3ICsyMjMsOCBAQCB2b2lkIGRybV9icmlk
Z2VfcG9zdF9kaXNhYmxlKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UpCiAJaWYgKCFicmlkZ2Up
CiAJCXJldHVybjsKIAotCWJyaWRnZS0+ZnVuY3MtPnBvc3RfZGlzYWJsZShicmlkZ2UpOworCWlm
IChicmlkZ2UtPmZ1bmNzLT5wb3N0X2Rpc2FibGUpCisJCWJyaWRnZS0+ZnVuY3MtPnBvc3RfZGlz
YWJsZShicmlkZ2UpOwogCiAJZHJtX2JyaWRnZV9wb3N0X2Rpc2FibGUoYnJpZGdlLT5uZXh0KTsK
IH0KQEAgLTI3Myw3ICsyNzQsOCBAQCB2b2lkIGRybV9icmlkZ2VfcHJlX2VuYWJsZShzdHJ1Y3Qg
ZHJtX2JyaWRnZSAqYnJpZGdlKQogCiAJZHJtX2JyaWRnZV9wcmVfZW5hYmxlKGJyaWRnZS0+bmV4
dCk7CiAKLQlicmlkZ2UtPmZ1bmNzLT5wcmVfZW5hYmxlKGJyaWRnZSk7CisJaWYgKGJyaWRnZS0+
ZnVuY3MtPnByZV9lbmFibGUpCisJCWJyaWRnZS0+ZnVuY3MtPnByZV9lbmFibGUoYnJpZGdlKTsK
IH0KIEVYUE9SVF9TWU1CT0woZHJtX2JyaWRnZV9wcmVfZW5hYmxlKTsKIAotLSAKMi42LjMKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBt
YWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

From: John Keeping <john@metanate.com>
Subject: [PATCH 3/3] drm/rockchip: explain why we can't wait_for_vblanks
Date: Thu, 14 Jan 2016 14:39:42 +0000
Message-ID: <107bbc36a316ed0ddc7b5a8bcd9b6db6cbc71d4f.1452782114.git.john@metanate.com>
References: <cover.1452782114.git.john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <cover.1452782114.git.john@metanate.com>
In-Reply-To: <cover.1452782114.git.john@metanate.com>
References: <20160114142047.GD19130@phenom.ffwll.local>
 <cover.1452782114.git.john@metanate.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark yao <mark.yao@rock-chips.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

U2lnbmVkLW9mZi1ieTogSm9obiBLZWVwaW5nIDxqb2huQG1ldGFuYXRlLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMgfCA2ICsrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fZmIuYwppbmRleCA2NzlkMjNhLi5iMjY3Y2U0IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV9mYi5jCkBAIC0xNzcsNiArMTc3LDEyIEBAIHN0YXRpYyB2
b2lkIHJvY2tjaGlwX2NydGNfd2FpdF9mb3JfdXBkYXRlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykK
IAkJY3J0Y19mdW5jcy0+d2FpdF9mb3JfdXBkYXRlKGNydGMpOwogfQogCisvKgorICogV2UgY2Fu
J3QgdXNlIGRybV9hdG9taWNfaGVscGVyX3dhaXRfZm9yX3ZibGFua3MoKSBiZWNhdXNlIHJrMzI4
OCBhbmQgcmszMDY2CisgKiBoYXZlIGhhcmR3YXJlIGNvdW50ZXJzIGZvciBuZWl0aGVyIHZibGFu
a3Mgbm9yIHNjYW5saW5lcy4gIFRoaXMgZnVuY3Rpb24gaXMKKyAqIGVxdWl2YWxlbnQgYnV0IHVz
ZXMgcm9ja2NoaXBfY3J0Y193YWl0X2Zvcl91cGRhdGUoKSBpbnN0ZWFkIG9mIHdhaXRpbmcgZm9y
CisgKiB2YmxhbmtfY291bnQgdG8gY2hhbmdlLgorICovCiBzdGF0aWMgdm9pZAogcm9ja2NoaXBf
YXRvbWljX3dhaXRfZm9yX2NvbXBsZXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBk
cm1fYXRvbWljX3N0YXRlICpvbGRfc3RhdGUpCiB7Ci0tIAoyLjcuMC4yMjYuZ2ZlOTg2ZmUKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBt
YWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

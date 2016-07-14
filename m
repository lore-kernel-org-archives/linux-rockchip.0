From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH 2/6] drm/rockchip: fb: add missing header
Date: Thu, 14 Jul 2016 11:31:26 +0800
Message-ID: <1468467090-6108-3-git-send-email-mark.yao@rock-chips.com>
References: <1468467090-6108-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1468467090-6108-1-git-send-email-mark.yao@rock-chips.com>
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

RnJvbTogSm9obiBLZWVwaW5nIDxqb2huQG1ldGFuYXRlLmNvbT4KClRoaXMgZml4ZXMgdGhlIGZv
bGxvd2luZyBzcGFyc2Ugd2FybmluZ3M6Cgpkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX2ZiLmM6MzI6MjM6IHdhcm5pbmc6IHN5bWJvbCAncm9ja2NoaXBfZmJfZ2V0X2dlbV9v
YmonIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/CmRyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYzozMTU6MjQ6IHdhcm5pbmc6IHN5bWJvbCAncm9j
a2NoaXBfZHJtX2ZyYW1lYnVmZmVyX2luaXQnIHdhcyBub3QgZGVjbGFyZWQuIFNob3VsZCBpdCBi
ZSBzdGF0aWM/CmRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYzozMjk6
Njogd2FybmluZzogc3ltYm9sICdyb2NrY2hpcF9kcm1fbW9kZV9jb25maWdfaW5pdCcgd2FzIG5v
dCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KClNpZ25lZC1vZmYtYnk6IEpvaG4gS2Vl
cGluZyA8am9obkBtZXRhbmF0ZS5jb20+ClNpZ25lZC1vZmYtYnk6IE1hcmsgWWFvIDxtYXJrLnlh
b0Byb2NrLWNoaXBzLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX2ZiLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmIuYwppbmRleCAyMGYxMmJjLi40ZmUyYWIz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9mYi5jCkBAIC0yMCw2
ICsyMCw3IEBACiAjaW5jbHVkZSA8ZHJtL2RybV9jcnRjX2hlbHBlci5oPgogCiAjaW5jbHVkZSAi
cm9ja2NoaXBfZHJtX2Rydi5oIgorI2luY2x1ZGUgInJvY2tjaGlwX2RybV9mYi5oIgogI2luY2x1
ZGUgInJvY2tjaGlwX2RybV9nZW0uaCIKIAogI2RlZmluZSB0b19yb2NrY2hpcF9mYih4KSBjb250
YWluZXJfb2YoeCwgc3RydWN0IHJvY2tjaGlwX2RybV9mYiwgZmIpCi0tIAoxLjkuMQoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWls
aW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

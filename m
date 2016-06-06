From: Yakir Yang <ykk@rock-chips.com>
Subject: [PATCH 1/2] drm/rockchip: vop: add uv_vir register field for RK3036
 VOP
Date: Mon,  6 Jun 2016 15:58:32 +0800
Message-ID: <1465199912-20932-1-git-send-email-ykk@rock-chips.com>
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
To: Mark Yao <yzq@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhlIFdJTjAgb2YgUkszMDM2IFZPUCBjb3VsZCBzdXBwb3J0IFlVViBkYXRhIGZvcm1hdCwgYnV0
IGRyaXZlcgpmb3JnZXQgdG8gYWRkIHRoZSB1dl92aXIgcmVnaXN0ZXIgZmllbGQgZm9yIGl0LgoK
U2lnbmVkLW9mZi1ieTogWWFraXIgWWFuZyA8eWtrQHJvY2stY2hpcHMuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3BfcmVnLmMgfCAxICsKIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF92b3BfcmVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
dm9wX3JlZy5jCmluZGV4IDMxNjZiNDYuLjdkYTIzMTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3BfcmVnLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL3JvY2tjaGlwX3ZvcF9yZWcuYwpAQCAtMjEwLDYgKzIxMCw3IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3Qgdm9wX3dpbl9waHkgcmszMDM2X3dpbjBfZGF0YSA9IHsKIAkueXJnYl9tc3QgPSBW
T1BfUkVHKFJLMzAzNl9XSU4wX1lSR0JfTVNULCAweGZmZmZmZmZmLCAwKSwKIAkudXZfbXN0ID0g
Vk9QX1JFRyhSSzMwMzZfV0lOMF9DQlJfTVNULCAweGZmZmZmZmZmLCAwKSwKIAkueXJnYl92aXIg
PSBWT1BfUkVHKFJLMzAzNl9XSU4wX1ZJUiwgMHhmZmZmLCAwKSwKKwkudXZfdmlyID0gVk9QX1JF
RyhSSzMwMzZfV0lOMF9WSVIsIDB4MWZmZiwgMTYpLAogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVj
dCB2b3Bfd2luX3BoeSByazMwMzZfd2luMV9kYXRhID0gewotLSAKMS45LjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBs
aXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

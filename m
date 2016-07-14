From: Mark Yao <mark.yao@rock-chips.com>
Subject: [PATCH 4/6] drm/rockchip: vop: add uv_vir register field for RK3036
 VOP
Date: Thu, 14 Jul 2016 11:31:28 +0800
Message-ID: <1468467090-6108-5-git-send-email-mark.yao@rock-chips.com>
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

RnJvbTogWWFraXIgWWFuZyA8eWtrQHJvY2stY2hpcHMuY29tPgoKVGhlIFdJTjAgb2YgUkszMDM2
IFZPUCBjb3VsZCBzdXBwb3J0IFlVViBkYXRhIGZvcm1hdCwgYnV0IGRyaXZlcgpmb3JnZXQgdG8g
YWRkIHRoZSB1dl92aXIgcmVnaXN0ZXIgZmllbGQgZm9yIGl0LgoKU2lnbmVkLW9mZi1ieTogWWFr
aXIgWWFuZyA8eWtrQHJvY2stY2hpcHMuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXJrIFlhbyA8bWFy
ay55YW9Acm9jay1jaGlwcy5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX3ZvcF9yZWcuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcF9yZWcuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3BfcmVnLmMKaW5kZXggNTI2NjFkMS4u
YTM0OGE3YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3Zv
cF9yZWcuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wX3JlZy5j
CkBAIC0yMTAsNiArMjEwLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB2b3Bfd2luX3BoeSByazMw
MzZfd2luMF9kYXRhID0gewogCS55cmdiX21zdCA9IFZPUF9SRUcoUkszMDM2X1dJTjBfWVJHQl9N
U1QsIDB4ZmZmZmZmZmYsIDApLAogCS51dl9tc3QgPSBWT1BfUkVHKFJLMzAzNl9XSU4wX0NCUl9N
U1QsIDB4ZmZmZmZmZmYsIDApLAogCS55cmdiX3ZpciA9IFZPUF9SRUcoUkszMDM2X1dJTjBfVklS
LCAweGZmZmYsIDApLAorCS51dl92aXIgPSBWT1BfUkVHKFJLMzAzNl9XSU4wX1ZJUiwgMHgxZmZm
LCAxNiksCiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHZvcF93aW5fcGh5IHJrMzAzNl93aW4x
X2RhdGEgPSB7Ci0tIAoxLjkuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaS1kZXZlbAo=

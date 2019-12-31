From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH] drm/rockchip: Add missing vmalloc header
Date: Tue, 31 Dec 2019 09:12:36 +0100
Message-ID: <1577779956-7612-1-git-send-email-krzk@kernel.org>
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
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, Douglas Anderson <dianders@chromium.org>, Krzysztof Kozlowski <krzk@kernel.org>, Eric Auger <eric.auger@redhat.com>, iommu@lists.linux-foundation.org
List-Id: linux-rockchip.vger.kernel.org

VGhlIFJvY2tzaGlwIERSTSBHRU0gY29kZSB1c2VzIHZtYXAoKS92dW5tYXAoKSBzbyB2bWFsbG9j
IGhlYWRlciBtdXN0IGJlCmluY2x1ZGVkIHRvIGF2b2lkIHdhcm5pbmdzIGxpa2UgKG9uIElBNjQs
IGNvbXBpbGUgdGVzdGVkKToKCiAgICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX2dlbS5jOiBJbiBmdW5jdGlvbiDigJhyb2NrY2hpcF9nZW1fYWxsb2NfaW9tbXXigJk6CiAg
ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jOjEzNDoyMDogZXJy
b3I6CiAgICAgICAgaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYdm1hcOKAmSBb
LVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KClJlcG9ydGVkLWJ5OiBrYnVp
bGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtv
emxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fZ2VtLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jCmluZGV4IDc1ODJk
MGU2YTYwYS4uMGQxODg0Njg0ZGNiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fZ2VtLmMKQEAgLTYsNiArNiw3IEBACiAKICNpbmNsdWRlIDxsaW51eC9kbWEtYnVm
Lmg+CiAjaW5jbHVkZSA8bGludXgvaW9tbXUuaD4KKyNpbmNsdWRlIDxsaW51eC92bWFsbG9jLmg+
CiAKICNpbmNsdWRlIDxkcm0vZHJtLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9nZW0uaD4KLS0gCjIu
Ny40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmkt
ZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

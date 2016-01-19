From: John Keeping <john@metanate.com>
Subject: [PATCH v2 0/3] drm/rockchip: fix cursor performance with atomic
Date: Tue, 19 Jan 2016 10:46:57 +0000
Message-ID: <cover.1453200263.git.john@metanate.com>
References: <cover.1452782114.git.john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <cover.1452782114.git.john@metanate.com>
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

VGhlIGZpcnN0IHR3byBwYXRjaGVzIGFyZSB1bmNoYW5nZWQgc2luY2UgdjEgYnV0IHRoZSBjb21t
ZW50IGluIHRoZQp0aGlyZCBoYXMgYmVlbiBleHBhbmRlZCBmb2xsb3dpbmcgVGhpZXJyeSdzIGNv
bW1lbnRzLgoKSm9obiBLZWVwaW5nICgzKToKICBkcm0vYXRvbWljLWhlbHBlcjogRXhwb3J0IGZy
YW1lYnVmZmVyX2NoYW5nZWQoKQogIGRybS9yb2NrY2hpcDogZG9uJ3Qgd2FpdCBmb3IgdmJsYW5r
IGlmIGZiIGhhc24ndCBjaGFuZ2VkCiAgZHJtL3JvY2tjaGlwOiBleHBsYWluIHdoeSB3ZSBjYW4n
dCB3YWl0X2Zvcl92YmxhbmtzCgogZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfaGVscGVyLmMg
ICAgICAgIHwgMjQgKysrKysrKysrKysrKysrKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX2ZiLmMgfCAyMyArKysrKysrKysrKysrKysrKysrKystLQogaW5j
bHVkZS9kcm0vZHJtX2F0b21pY19oZWxwZXIuaCAgICAgICAgICAgIHwgIDQgKysrKwogMyBmaWxl
cyBjaGFuZ2VkLCA0NSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKLS0gCjIuNy4wLjIy
Ni5nZmU5ODZmZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHA6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

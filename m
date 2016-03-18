From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: [PATCH] drm/rockchip: vop: Don't reject empty modesets
Date: Fri, 18 Mar 2016 12:22:02 +0100
Message-ID: <1458300123-6397-1-git-send-email-tomeu.vizoso@collabora.com>
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
To: linux-kernel@vger.kernel.org
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

U28gdGhhdCB3aGVuIERSTV9JT0NUTF9NT0RFX1NFVENSVEMgaXMgY2FsbGVkIHdpdGhvdXQgYSBG
QiBub3IgbW9kZSwgdGhlCkNSVEMgZ2V0cyBkaXNhYmxlZC4KClNpZ25lZC1vZmYtYnk6IFRvbWV1
IFZpem9zbyA8dG9tZXUudml6b3NvQGNvbGxhYm9yYS5jb20+Ckxpbms6IGh0dHA6Ly9sa21sLmtl
cm5lbC5vcmcvZy9DQUFPYnNLQXYrMDVpaDVVKz00a2ljX05zakdNaGZ4WWhlSFI4eFhYbWFjWnMr
cDVTSHdAbWFpbC5nbWFpbC5jb20KLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX3ZvcC5jIHwgMyAtLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgYi9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCmluZGV4IGZkMzcwNTQ4
ZDdkNy4uNWU1N2Y1YjJlNGIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX3ZvcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fdm9wLmMKQEAgLTg4NSw5ICs4ODUsNiBAQCBzdGF0aWMgYm9vbCB2b3BfY3J0Y19tb2Rl
X2ZpeHVwKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIHsKIAlzdHJ1Y3Qgdm9wICp2b3AgPSB0b192
b3AoY3J0Yyk7CiAKLQlpZiAoYWRqdXN0ZWRfbW9kZS0+aHRvdGFsID09IDAgfHwgYWRqdXN0ZWRf
bW9kZS0+dnRvdGFsID09IDApCi0JCXJldHVybiBmYWxzZTsKLQogCWFkanVzdGVkX21vZGUtPmNs
b2NrID0KIAkJY2xrX3JvdW5kX3JhdGUodm9wLT5kY2xrLCBtb2RlLT5jbG9jayAqIDEwMDApIC8g
MTAwMDsKIAotLSAKMi41LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aS1kZXZlbAo=

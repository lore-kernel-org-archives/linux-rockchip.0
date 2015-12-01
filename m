From: Mark Yao <mark.yao@rock-chips.com>
Subject: [RFC PATCH 8/9] drm: bridge/dw_hdmi: Covert to support atomic API
Date: Tue,  1 Dec 2015 11:35:53 +0800
Message-ID: <1448940953-23604-1-git-send-email-mark.yao@rock-chips.com>
References: <1448940391-23333-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1448940391-23333-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Russell King <rmk+kernel@arm.linux.org.uk>, Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, Fabio Estevam <fabio.estevam@freescale.com>, Thierry Reding <treding@nvidia.com>
List-Id: linux-rockchip.vger.kernel.org

RmlsbCBhdG9taWMgbmVlZGVkIGZ1bmNzIHdpdGggZGVmYXVsdCBhdG9taWMgaGVscGVyIGxpYnJh
cnkuCgpSb2NrY2hpcCB1c2UgZHdfaGRtaSwgYW5kIGRybS9yb2NrY2hpcCB3aWxsIGNvdmVydCB0
byBhdG9taWMgYXBpLAp3ZSBuZWVkIGR3X2hkbWkgc3VwcG9ydCBhdG9taWMgZnVuY3MuCgpTaWdu
ZWQtb2ZmLWJ5OiBNYXJrIFlhbyA8bWFyay55YW9Acm9jay1jaGlwcy5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9kd19oZG1pLmMgfCAgICA2ICsrKysrLQogMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9icmlkZ2UvZHdfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9kd19oZG1pLmMK
aW5kZXggNTZkZTlmMS4uNTg3MDY1YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9kd19oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9kd19oZG1pLmMKQEAgLTIy
LDYgKzIyLDcgQEAKIAogI2luY2x1ZGUgPGRybS9kcm1fb2YuaD4KICNpbmNsdWRlIDxkcm0vZHJt
UC5oPgorI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgogI2luY2x1ZGUgPGRybS9k
cm1fY3J0Y19oZWxwZXIuaD4KICNpbmNsdWRlIDxkcm0vZHJtX2VkaWQuaD4KICNpbmNsdWRlIDxk
cm0vZHJtX2VuY29kZXJfc2xhdmUuaD4KQEAgLTE1MTUsMTEgKzE1MTYsMTQgQEAgc3RhdGljIHZv
aWQgZHdfaGRtaV9jb25uZWN0b3JfZm9yY2Uoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rv
cikKIH0KIAogc3RhdGljIHN0cnVjdCBkcm1fY29ubmVjdG9yX2Z1bmNzIGR3X2hkbWlfY29ubmVj
dG9yX2Z1bmNzID0gewotCS5kcG1zID0gZHJtX2hlbHBlcl9jb25uZWN0b3JfZHBtcywKKwkuZHBt
cyA9IGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9kcG1zLAogCS5maWxsX21vZGVzID0gZHJt
X2hlbHBlcl9wcm9iZV9zaW5nbGVfY29ubmVjdG9yX21vZGVzLAogCS5kZXRlY3QgPSBkd19oZG1p
X2Nvbm5lY3Rvcl9kZXRlY3QsCiAJLmRlc3Ryb3kgPSBkd19oZG1pX2Nvbm5lY3Rvcl9kZXN0cm95
LAogCS5mb3JjZSA9IGR3X2hkbWlfY29ubmVjdG9yX2ZvcmNlLAorCS5yZXNldCA9IGRybV9hdG9t
aWNfaGVscGVyX2Nvbm5lY3Rvcl9yZXNldCwKKwkuYXRvbWljX2R1cGxpY2F0ZV9zdGF0ZSA9IGRy
bV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9kdXBsaWNhdGVfc3RhdGUsCisJLmF0b21pY19kZXN0
cm95X3N0YXRlID0gZHJtX2F0b21pY19oZWxwZXJfY29ubmVjdG9yX2Rlc3Ryb3lfc3RhdGUsCiB9
OwogCiBzdGF0aWMgc3RydWN0IGRybV9jb25uZWN0b3JfaGVscGVyX2Z1bmNzIGR3X2hkbWlfY29u
bmVjdG9yX2hlbHBlcl9mdW5jcyA9IHsKLS0gCjEuNy45LjUKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

From: John Keeping <john@metanate.com>
Subject: [PATCH v2 15/26] drm/rockchip: dw-mipi-dsi: ensure PHY is reset
Date: Sat, 21 Jan 2017 16:31:17 +0000
Message-ID: <20170121163128.22240-16-john@metanate.com>
References: <20170121163128.22240-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170121163128.22240-1-john@metanate.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QWxzbyBkb24ndCBwb3dlciB1cCB0aGUgRFNJIGhvc3QgYXQgdGhpcyBwb2ludCBzaW5jZSB0aGlz
IGlzIG5vdApuZWNlc3NhcnkgaW4gb3JkZXIgdG8gY29uZmlndXJlIHRoZSBQSFkgYW5kIHdlIGRv
IHNvIGxhdGVyIHdoZW4Kc2VsZWN0aW5nIHZpZGVvIG9yIGNvbW1hbmQgbW9kZS4KClNpZ25lZC1v
ZmYtYnk6IEpvaG4gS2VlcGluZyA8am9obkBtZXRhbmF0ZS5jb20+Ci0tLQpVbmNoYW5nZWQgaW4g
djIKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYyB8IDUgKysrKy0K
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYyBiL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jCmluZGV4IGMyZTBiYTk2ZTBhMC4uNWIzMDY4ZTll
OGRiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYwpAQCAtMzk3LDcgKzM5
NywxMCBAQCBzdGF0aWMgaW50IGR3X21pcGlfZHNpX3BoeV9pbml0KHN0cnVjdCBkd19taXBpX2Rz
aSAqZHNpKQogCQlyZXR1cm4gdGVzdGRpbjsKIAl9CiAKLQlkc2lfd3JpdGUoZHNpLCBEU0lfUFdS
X1VQLCBQT1dFUlVQKTsKKwkvKiBTdGFydCBieSBjbGVhcmluZyBQSFkgc3RhdGUgKi8KKwlkc2lf
d3JpdGUoZHNpLCBEU0lfUEhZX1RTVF9DVFJMMCwgUEhZX1VOVEVTVENMUik7CisJZHNpX3dyaXRl
KGRzaSwgRFNJX1BIWV9UU1RfQ1RSTDAsIFBIWV9URVNUQ0xSKTsKKwlkc2lfd3JpdGUoZHNpLCBE
U0lfUEhZX1RTVF9DVFJMMCwgUEhZX1VOVEVTVENMUik7CiAKIAlkd19taXBpX2RzaV9waHlfd3Jp
dGUoZHNpLCAweDEwLCBCWVBBU1NfVkNPX1JBTkdFIHwKIAkJCQkJIFZDT19SQU5HRV9DT05fU0VM
KHZjbykgfAotLSAKMi4xMS4wLjE5Ny5nYjU1NmRlNS5kaXJ0eQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

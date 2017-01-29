From: John Keeping <john@metanate.com>
Subject: [PATCH v3 14/24] drm/rockchip: dw-mipi-dsi: ensure PHY is reset
Date: Sun, 29 Jan 2017 13:24:34 +0000
Message-ID: <20170129132444.25251-15-john@metanate.com>
References: <20170129132444.25251-1-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170129132444.25251-1-john@metanate.com>
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
ZmYtYnk6IEpvaG4gS2VlcGluZyA8am9obkBtZXRhbmF0ZS5jb20+ClJldmlld2VkLWJ5OiBDaHJp
cyBaaG9uZyA8enl3QHJvY2stY2hpcHMuY29tPgotLS0KdjM6Ci0gQWRkIENocmlzJyBSZXZpZXdl
ZC1ieQpVbmNoYW5nZWQgaW4gdjIKCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1k
c2kuYyB8IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ku
YyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jCmluZGV4IGMyZTBiYTk2
ZTBhMC4uNWIzMDY4ZTllOGRiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
ZHctbWlwaS1kc2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ku
YwpAQCAtMzk3LDcgKzM5NywxMCBAQCBzdGF0aWMgaW50IGR3X21pcGlfZHNpX3BoeV9pbml0KHN0
cnVjdCBkd19taXBpX2RzaSAqZHNpKQogCQlyZXR1cm4gdGVzdGRpbjsKIAl9CiAKLQlkc2lfd3Jp
dGUoZHNpLCBEU0lfUFdSX1VQLCBQT1dFUlVQKTsKKwkvKiBTdGFydCBieSBjbGVhcmluZyBQSFkg
c3RhdGUgKi8KKwlkc2lfd3JpdGUoZHNpLCBEU0lfUEhZX1RTVF9DVFJMMCwgUEhZX1VOVEVTVENM
Uik7CisJZHNpX3dyaXRlKGRzaSwgRFNJX1BIWV9UU1RfQ1RSTDAsIFBIWV9URVNUQ0xSKTsKKwlk
c2lfd3JpdGUoZHNpLCBEU0lfUEhZX1RTVF9DVFJMMCwgUEhZX1VOVEVTVENMUik7CiAKIAlkd19t
aXBpX2RzaV9waHlfd3JpdGUoZHNpLCAweDEwLCBCWVBBU1NfVkNPX1JBTkdFIHwKIAkJCQkJIFZD
T19SQU5HRV9DT05fU0VMKHZjbykgfAotLSAKMi4xMS4wLjE5Ny5nYjU1NmRlNS5kaXJ0eQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1h
aWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

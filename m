From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH v2 6/8] arm64: dts: rockchip: rk3399: Correct MIPI DPHY PLL
 clock
Date: Tue, 26 Sep 2017 15:55:21 +0800
Message-ID: <1506412523-1766-6-git-send-email-nickey.yang@rock-chips.com>
References: <1506412523-1766-1-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1506412523-1766-1-git-send-email-nickey.yang@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: bivvy.bi@rock-chips.com, hl@rock-chips.com, briannorris@chromium.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, nickey.yang@rock-chips.com, zyw@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

TWlwaS1kcGh5J3MgcmVmX2NsayBjb25uZWN0IHRvIGNsa19kcGh5X3BsbCBpbnNpZGUgcmszMzk5
LgpjbGtfMjRtIC0+IEdhdGUxMVsxNF0gLT4gY2xrX21pcGlkcGh5X3JlZiAtPiBHYXRlMjFbMF0g
LT4gY2xrX2RwaHlfcGxsClNvIGNvcnJlY3QgaXQuCgpTaWduZWQtb2ZmLWJ5OiBOaWNrZXkgWWFu
ZyA8bmlja2V5LnlhbmdAcm9jay1jaGlwcy5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTkuZHRzaSB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNp
CmluZGV4IGQ3OWU5YjMuLjZhYTQzZmQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTkuZHRzaQpAQCAtMTYyOSw3ICsxNjI5LDcgQEAKIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hp
cCxyazMzOTktbWlwaS1kc2kiLCAic25wcyxkdy1taXBpLWRzaSI7CiAJCXJlZyA9IDwweDAgMHhm
Zjk2MDAwMCAweDAgMHg4MDAwPjsKIAkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQ1IElSUV9UWVBF
X0xFVkVMX0hJR0ggMD47Ci0JCWNsb2NrcyA9IDwmY3J1IFNDTEtfTUlQSURQSFlfUkVGPiwgPCZj
cnUgUENMS19NSVBJX0RTSTA+LAorCQljbG9ja3MgPSA8JmNydSBTQ0xLX0RQSFlfUExMPiwgPCZj
cnUgUENMS19NSVBJX0RTSTA+LAogCQkJIDwmY3J1IFNDTEtfRFBIWV9UWDBfQ0ZHPjsKIAkJY2xv
Y2stbmFtZXMgPSAicmVmIiwgInBjbGsiLCAicGh5X2NmZyI7CiAJCXBvd2VyLWRvbWFpbnMgPSA8
JnBvd2VyIFJLMzM5OV9QRF9WSU8+OwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=

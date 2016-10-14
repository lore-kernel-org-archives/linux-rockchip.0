From: =?utf-8?B?UGF3ZcWC?= Jarosz <paweljarosz3691@gmail.com>
Subject: [PATCH v2 2/2] ARM: dts: rockchip: initialize rk3066 PLL clock rate
Date: Fri, 14 Oct 2016 14:16:54 +0200
Message-ID: <6992e44d06e1615048717deb3dd76e52d26da869.1476447057.git.paweljarosz3691@gmail.com>
References: <cover.1476447057.git.paweljarosz3691@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <cover.1476447057.git.paweljarosz3691@gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: paweljarosz3691@gmail.com
Cc: mark.rutland@arm.com, heiko@sntech.de, mturquette@baylibre.com, sboyd@codeaurora.org, linux@armlinux.org.uk, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

SW5pdGlhbGl6ZSBQTEwsIGNwdSBidXMgYW5kIHBlcmlwaGVyaWFsIGJ1cyByYXRlIHdoaWxlIGtl
cm5lbCBpbml0LgpObyBvdGhlciBtb2R1bGUgZG9lcyB0aGFuLgoKVGhpcyBnaXZlcyB1cyBwZXJm
b3JtYW5jZSBib29zdCBvYnNlcnZhYmxlIGZvciBleGFtcGxlIGluIG1tYyB0cmFuc2ZlcnMuCgpT
aWduZWQtb2ZmLWJ5OiBQYXdlxYIgSmFyb3N6IDxwYXdlbGphcm9zejM2OTFAZ21haWwuY29tPgot
LS0KCkNoYW5nZXMgaW4gdjI6Ci0gYWRkZWQgcGVyaXBoZXJpYWwgYW5kIGNwdSBidXMKLSByZW1v
dmVkIFBMTF9EUExMLCBQTExfQVBMTAoKIGFyY2gvYXJtL2Jvb3QvZHRzL3JrMzA2NmEuZHRzaSB8
IDkgKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMDY2YS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmsz
MDY2YS5kdHNpCmluZGV4IDBkMGRhZTMuLjI5ZGQ0MzQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL3JrMzA2NmEuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9yazMwNjZhLmR0c2kK
QEAgLTE1MSw2ICsxNTEsMTUgQEAKIAogCQkjY2xvY2stY2VsbHMgPSA8MT47CiAJCSNyZXNldC1j
ZWxscyA9IDwxPjsKKwkJYXNzaWduZWQtY2xvY2tzID0gPCZjcnUgUExMX0NQTEw+LCA8JmNydSBQ
TExfR1BMTD4sCisJCQkJICA8JmNydSBBQ0xLX0NQVT4sIDwmY3J1IEhDTEtfQ1BVPiwKKwkJCQkg
IDwmY3J1IFBDTEtfQ1BVPiwgPCZjcnUgQUNMS19QRVJJPiwKKwkJCQkgIDwmY3J1IEhDTEtfUEVS
ST4sIDwmY3J1IFBDTEtfUEVSST47CisKKwkJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8NDAwMDAw
MDAwPiwgPDU5NDAwMDAwMD4sCisJCQkJICAgICAgIDwzMDAwMDAwMDA+LCA8MTUwMDAwMDAwPiwK
KwkJCQkgICAgICAgPDc1MDAwMDAwPiwgPDMwMDAwMDAwMD4sCisJCQkJICAgICAgIDwxNTAwMDAw
MDA+LCA8NzUwMDAwMDA+OwogCX07CiAKIAl0aW1lckAyMDAwZTAwMCB7Ci0tIAoyLjcuNAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK

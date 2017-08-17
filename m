From: Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH v2 4/5] rockchip: rk322x: pinctrl: fix IO MASK
	error on sdcard pin
Date: Thu, 17 Aug 2017 15:17:36 +0800
Message-ID: <1502954257-7256-5-git-send-email-kever.yang@rock-chips.com>
References: <1502954257-7256-1-git-send-email-kever.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <1502954257-7256-1-git-send-email-kever.yang@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de
List-Id: linux-rockchip.vger.kernel.org

Rml4IHRoZSBJT01VWCBzZXR0aW5nIGZvciBTRGNhcmQgQ01EIHBpbiBhdCB0aGUgc2FtZSB0aW1l
LgoKU2lnbmVkLW9mZi1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4K
LS0tCgpDaGFuZ2VzIGluIHYyOiBOb25lCgogZHJpdmVycy9waW5jdHJsL3JvY2tjaGlwL3BpbmN0
cmxfcmszMjJ4LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvcm9ja2NoaXAvcGluY3RybF9y
azMyMnguYyBiL2RyaXZlcnMvcGluY3RybC9yb2NrY2hpcC9waW5jdHJsX3JrMzIyeC5jCmluZGV4
IGQ5Zjg2MTQuLjU3NmIwMzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGluY3RybC9yb2NrY2hpcC9w
aW5jdHJsX3JrMzIyeC5jCisrKyBiL2RyaXZlcnMvcGluY3RybC9yb2NrY2hpcC9waW5jdHJsX3Jr
MzIyeC5jCkBAIC0xNjgsNyArMTY4LDcgQEAgc3RhdGljIHZvaWQgcGluY3RybF9yazMyMnhfc2Rt
bWNfY29uZmlnKHN0cnVjdCByazMyMnhfZ3JmICpncmYsIGludCBtbWNfaWQpCiAJCXJrX2NscnNl
dHJlZygmZ3JmLT5ncGlvMWJfaW9tdXgsCiAJCQkgICAgIEdQSU8xQjZfTUFTSyB8IEdQSU8xQjdf
TUFTSywKIAkJCSAgICAgR1BJTzFCNl9TRE1NQ19QV1JFTiA8PCBHUElPMUI2X1NISUZUIHwKLQkJ
CSAgICAgR1BJTzFCN19TRE1NQ19DTUQgPDwgR1BJTzFCNl9TSElGVCk7CisJCQkgICAgIEdQSU8x
QjdfU0RNTUNfQ01EIDw8IEdQSU8xQjdfU0hJRlQpOwogCQlya19jbHJzZXRyZWcoJmdyZi0+Z3Bp
bzFjX2lvbXV4LCAweGZmZiwKIAkJCSAgICAgR1BJTzFDNV9TRE1NQ19EMyA8PCBHUElPMUM1X1NI
SUZUIHwKIAkJCSAgICAgR1BJTzFDNF9TRE1NQ19EMiA8PCBHUElPMUM0X1NISUZUIHwKLS0gCjEu
OS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVLUJv
b3QgbWFpbGluZyBsaXN0ClUtQm9vdEBsaXN0cy5kZW54LmRlCmh0dHBzOi8vbGlzdHMuZGVueC5k
ZS9saXN0aW5mby91LWJvb3QK

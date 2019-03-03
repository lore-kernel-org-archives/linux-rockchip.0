From: =?UTF-8?q?Andrius=20=C5=A0tikonas?= <andrius@stikonas.eu>
Subject: [PATCH] rockpro64: dts: fix gmac2io stability issues
Date: Sun,  3 Mar 2019 22:32:04 +0000
Message-ID: <20190303223204.23061-1-andrius@stikonas.eu>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Cc: =?UTF-8?q?Andrius=20=C5=A0tikonas?= <andrius@stikonas.eu>
List-Id: linux-rockchip.vger.kernel.org

RW5hYmxlIHRocmVzaCBkbWEgbW9kZSB0byBkaXNhYmxlIGNoZWNrc3VtaW5nLgpTZWUgY29tbWl0
IDczZTQyZTE4NjY5OTM0ZmE5NmNmMmJiNTQyOTFkYTU0MTc3MDc2ZDcgZm9yIHNpbWlsYXIgZml4
IG9uIHJvY2s2NC4KCkluIHBhcnRpY3VsYXIsIHRoaXMgZml4ZXMgdGVycmlibGUgSVB2NiBwZXJm
b3JtYW5jZS4KClNpZ25lZC1vZmYtYnk6IEFuZHJpdXMgxaB0aWtvbmFzIDxhbmRyaXVzQHN0aWtv
bmFzLmV1PgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82
NC5kdHMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCmluZGV4IGJlNzgx
NzJhYmMwOS4uODU4YmQ5ODA2MDdhIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMKQEAgLTE5Nyw2ICsxOTcsNyBAQAogCXBoeS1tb2Rl
ID0gInJnbWlpIjsKIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwm
cmdtaWlfcGlucz47CisJc25wcyxmb3JjZV90aHJlc2hfZG1hX21vZGU7CiAJc25wcyxyZXNldC1n
cGlvID0gPCZncGlvMyBSS19QQjcgR1BJT19BQ1RJVkVfTE9XPjsKIAlzbnBzLHJlc2V0LWFjdGl2
ZS1sb3c7CiAJc25wcyxyZXNldC1kZWxheXMtdXMgPSA8MCAxMDAwMCA1MDAwMD47Ci0tIAoyLjE5
LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==

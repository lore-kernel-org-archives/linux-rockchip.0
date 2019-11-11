From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH] arm64: dts: rockchip: Add regulators for pcie on
 rk3399-roc-pc
Date: Mon, 11 Nov 2019 15:21:39 +0100
Message-ID: <8fa0c3da-b64d-f47f-a9eb-b3456a3fd073@fivetechno.de>
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------32B8AA59744FD73ACAF813EF"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: de-DE
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--------------32B8AA59744FD73ACAF813EF
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Add regulators to pcie node from schematics.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 .../boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts      |  2 ++
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi        | 10 ++++++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
index d6b3042cffa9..2c9c13a0fca9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
@@ -50,6 +50,8 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie_perst>;
 	vpcie3v3-supply = <&vcc3v3_pcie>;
+	vpcie1v8-supply = <&vcc1v8_pmu>;
+	vpcie0v9-supply = <&vcca_0v9>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 287f97488f65..2ef8ee2eae02 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -145,6 +145,16 @@
 		vin-supply = <&dc_12v>;
 	};
 
+	vcca_0v9: vcca-0v9 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcca_0v9";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
 	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
 	vcc5v0_host: vcc5v0-host-regulator {
 		compatible = "regulator-fixed";
-- 
2.20.1


--------------32B8AA59744FD73ACAF813EF
Content-Type: text/plain; charset=UTF-8;
 name="Nachrichtenteil als Anhang"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="Nachrichtenteil als Anhang"

VGhpcyBpcyBhbiBPcGVuUEdQL01JTUUgc2lnbmVkIG1lc3NhZ2UgKFJGQyA0ODgwIGFuZCAz
MTU2KQotLW1hNk5za2Q0dHB2UDV2c1JWVW5VV3NnaUlTMkR3YkJuVwpDb250ZW50LVR5cGU6
IG11bHRpcGFydC9taXhlZDsgYm91bmRhcnk9InlKWndjcDFZbXN1a2xoN2FHUzlXTUhVTkox
bm5MNWk1aiI7CiBwcm90ZWN0ZWQtaGVhZGVycz0idjEiCkZyb206IE1hcmt1cyBSZWljaGwg
PG0ucmVpY2hsQGZpdmV0ZWNobm8uZGU+ClRvOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJu
ZWwub3JnPiwgTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4sCiBIZWlrbyBT
dHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiwgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNv
bHV0aW9ucy5jb20+LAogTWFya3VzIFJlaWNobCA8bS5yZWljaGxAZml2ZXRlY2huby5kZT4s
IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnLAogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnLCBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnLAogbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZwpNZXNzYWdlLUlEOiA8N2Q4ZDg1YzktNWZkZS03
OTQzLWE2YjYtNjM5YmNhMzhiZGMxQGZpdmV0ZWNobm8uZGU+ClN1YmplY3Q6IFtQQVRDSF0g
YXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBMRUQgbm9kZXMgb24gcmszMzk5LXJvYy1wYwoK
LS15Slp3Y3AxWW1zdWtsaDdhR1M5V01IVU5KMW5uTDVpNWoKQ29udGVudC1UeXBlOiB0ZXh0
L3BsYWluOyBjaGFyc2V0PXV0Zi04CkNvbnRlbnQtTGFuZ3VhZ2U6IGRlLURFCkNvbnRlbnQt
VHJhbnNmZXItRW5jb2Rpbmc6IHF1b3RlZC1wcmludGFibGUKCnJrMzM5OS1yb2MtcGMgaGFz
IHRocmVlIGdwaW8gTEVEcywgZW5hYmxlIHRoZW0uCgpTaWduZWQtb2ZmLWJ5OiBNYXJrdXMg
UmVpY2hsIDxtLnJlaWNobEBmaXZldGVjaG5vLmRlPgotLS0KIC4uLi9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLmR0cyB8IDQxICsrKysrKysrKysrKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLmR0cyBiL2FyY2gvYXJtNjQv
PQpib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLmR0cwppbmRleCBmYWY2MGIyYTc2
NzMuLmJhNTJlMTA1M2EyZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcm9jLXBjLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1yb2MtcGMuZHRzCkBAIC0yOCw2ICsyOCwzMyBAQAogCQkjY2xvY2stY2Vs
bHMgPTNEIDwwPjsKIAl9Owo9MjAKKwlsZWRzIHsKKwkJY29tcGF0aWJsZSA9M0QgImdwaW8t
bGVkcyI7CisJCXBpbmN0cmwtbmFtZXMgPTNEICJkZWZhdWx0IjsKKwkJcGluY3RybC0wID0z
RCA8JndvcmtfbGVkX2dwaW8+LCA8JmRpeV9sZWRfZ3Bpbz4sIDwmeWVsbG93X2xlZF9ncGlv
PjsKKworCQl3b3JrLWxlZCB7CisJCQlsYWJlbCA9M0QgImdyZWVuOndvcmsiOworCQkJZ3Bp
b3MgPTNEIDwmZ3BpbzIgUktfUEQzIEdQSU9fQUNUSVZFX0hJR0g+OworCQkJZGVmYXVsdC1z
dGF0ZSA9M0QgIm9uIjsKKwkJCWxpbnV4LGRlZmF1bHQtdHJpZ2dlciA9M0QgImhlYXJ0YmVh
dCI7CisJCX07CisKKwkJZGl5LWxlZCB7CisJCQlsYWJlbCA9M0QgInJlZDpkaXkiOworCQkJ
Z3Bpb3MgPTNEIDwmZ3BpbzAgUktfUEI1IEdQSU9fQUNUSVZFX0hJR0g+OworCQkJZGVmYXVs
dC1zdGF0ZSA9M0QgIm9mZiI7CisJCQlsaW51eCxkZWZhdWx0LXRyaWdnZXIgPTNEICJtbWMx
IjsKKwkJfTsKKworCQl5ZWxsb3ctbGVkIHsKKwkJCWxhYmVsID0zRCAieWVsbG93OnllbGxv
dy1sZWQiOworCQkJZ3Bpb3MgPTNEIDwmZ3BpbzAgUktfUEEyIEdQSU9fQUNUSVZFX0hJR0g+
OworCQkJZGVmYXVsdC1zdGF0ZSA9M0QgIm9mZiI7CisJCQlsaW51eCxkZWZhdWx0LXRyaWdn
ZXIgPTNEICJtbWMwIjsKKwkJfTsKKwl9OworCiAJc2Rpb19wd3JzZXE6IHNkaW8tcHdyc2Vx
IHsKIAkJY29tcGF0aWJsZSA9M0QgIm1tYy1wd3JzZXEtc2ltcGxlIjsKIAkJY2xvY2tzID0z
RCA8JnJrODA4IDE+OwpAQCAtNDk0LDYgKzUyMSwyMCBAQAogCQl9OwogCX07Cj0yMAorCWxl
ZHMgeworCQl3b3JrX2xlZF9ncGlvOiB3b3JrX2xlZC1ncGlvIHsKKwkJCXJvY2tjaGlwLHBp
bnMgPTNEIDwyIFJLX1BEMyBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKKwkJfTsK
KworCQlkaXlfbGVkX2dwaW86IGRpeV9sZWQtZ3BpbyB7CisJCQlyb2NrY2hpcCxwaW5zID0z
RCA8MCBSS19QQjUgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47CisJCX07CisKKwkJ
eWVsbG93X2xlZF9ncGlvOiB5ZWxsb3dfbGVkLWdwaW8geworCQkJcm9ja2NoaXAscGlucyA9
M0QgPDAgUktfUEEyIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OworCQl9OworCX07
CisKIAlwbWljIHsKIAkJdnNlbDFfZ3BpbzogdnNlbDEtZ3BpbyB7CiAJCQlyb2NrY2hpcCxw
aW5zID0zRCA8MSBSS19QQzIgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfZG93bj47Ci0tPTIw
CjIuMjAuMQoKCgoKCi0teUpad2NwMVltc3VrbGg3YUdTOVdNSFVOSjFubkw1aTVqLS0KCi0t
bWE2TnNrZDR0cHZQNXZzUlZVblVXc2dpSVMyRHdiQm5XCkNvbnRlbnQtVHlwZTogYXBwbGlj
YXRpb24vcGdwLXNpZ25hdHVyZTsgbmFtZT0ic2lnbmF0dXJlLmFzYyIKQ29udGVudC1EZXNj
cmlwdGlvbjogT3BlblBHUCBkaWdpdGFsIHNpZ25hdHVyZQpDb250ZW50LURpc3Bvc2l0aW9u
OiBhdHRhY2htZW50OyBmaWxlbmFtZT0ic2lnbmF0dXJlLmFzYyIKCi0tLS0tQkVHSU4gUEdQ
IFNJR05BVFVSRS0tLS0tCgppUUd6QkFFQkNBQWRGaUVFVktlSWVCaDBaV0pPbGR6TE9pWGVE
bXNhL2JJRkFsMnRoMlFBQ2drUU9pWGVEbXNhCi9iS1hCd3Y3QmhSemkwM0k5aitNZTFacDl5
RzI3bFhBUTZGT1BwSG10NUdKZG1GWmtwdXVyUlFRNmxCT0ptZmQKNjFLT3I2Z05ZTExWT2JN
ZVJjWjMwZ29uWEU1VEswbExQNm1PYWp0STRZQkIwKy80ZHkzS3dmNXF6bXRBSWFNMwo0N05a
OVdpVGx4UjdPaDFFU1ZGTHhHazdleG5NcTFSMHpGMlRMYWZEWnhQMXZaWGNvdzdhQ3BnY3g4
SE1naXZmCkROK3VBUTgrbU1DZDNpN2hleUJycURVeDRvQlFhbWRQRjIwU3BSU2ZYNm9OTW1O
Yk85Vm5vMmx5OEpmWEJ2OU8KMStUaE9YRit3Vm5PNVYzUTJPUWRIc3laR3QzdlpEdWduYnE5
UlFYamRwSmtKZkEzcm11R2dDZ25PY2FkMCsxMQpnMGt4eVUrMGlsMDdTdVVWZlhWWlhHcmFX
WVo0V3lPcEtrT09ENVloV1A4Y1lTSzR0T0ZRbENwZU5vL1V5a0hjCkY2YlhBd2NjOHg1bmFM
Mko2TDRONGhGbUdJNEkwd29xWnNUS05YNGdIUGkzMFhIZjkxbUo1bjJUYXRQQ3F1WjAKTGk2
ZmFuZ0k1dml4M1VFTWJpRkYwOWc5cktZZzJrOHYvVWlUallna2o1cU1ka2xNM3FnTVRUb1lZ
cTFybTJheQp5V2ZWQTFPRwo9S1RPaQotLS0tLUVORCBQR1AgU0lHTkFUVVJFLS0tLS0KCi0t
bWE2TnNrZDR0cHZQNXZzUlZVblVXc2dpSVMyRHdiQm5XLS0KCgo=
--------------32B8AA59744FD73ACAF813EF
Content-Type: text/plain; charset=UTF-8;
 name="Nachrichtenteil als Anhang"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="Nachrichtenteil als Anhang"

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAoK
--------------32B8AA59744FD73ACAF813EF--

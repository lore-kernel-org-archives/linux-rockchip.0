Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 973CFC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Mar 2024 06:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:Cc:From:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kJujTjLeL7iELYR+EadWiC1padkSYXBhW+lmEu6rlbk=; b=Lay
	YH9PsE1DaVA48CMRa8zSBDBwwWHK1UYQlAvwTJmg6kkmykA8R1QzpQlgp50o2eSFf1rYxHIetRe6L
	joiVd9CtOABb0HqoSElEMtjh7KhGXOzfIQo52d/c+plrngcQ3qu0WzSvhiLFSEZlACQf18/YT3FGH
	UPcps9BreRHCL6N5P572wnBYaN9rwAcfy6XqDfbUhFGW55gJb7d2GKi9SvOycf2T2nkCGR+huxthW
	KiPiiEw9yjv2XGo58qjhr/itP6WR9l2kHBkKRWJ1u56p+omxKBXxTIwr+CeRj/EzF2QtBd4A/WUye
	45sOzkvMYDzM1ZFAkkFe6mQAo25QeVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roHLY-0000000BzIf-02US;
	Sun, 24 Mar 2024 06:28:44 +0000
Received: from mail-4323.proton.ch ([185.70.43.23])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roHLU-0000000BzGe-3GDT;
	Sun, 24 Mar 2024 06:28:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thefossguy.com;
	s=protonmail; t=1711261707; x=1711520907;
	bh=a63CZcwFphRB57yPggM+jr72sf2vf1666LkQCgfK334=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=hHxJ/wM8FAmmGAR72NKrEG2yhdCpRUhNFL6Xd7KLv6Qe1y2gv5z8n4yZUEQv8ljNO
	 iOy67FMN0U+dv8rR31yUEPONhfaK8yYync3e5Kudlcez3M0BeH2joCUR1nX2pDazWG
	 21JtDOr8cLGOYAY6xeHDB6BhLBX3L4O8UtyqxsE3vJcvOiiJBWEhHVOR+Qh/5Vm5Ay
	 DN/DIYPjjsTtXMrC0CGbujV+DKRORGGKGKi9z1TxqDgEQdoM7E2NR5JnITFSsClZ+K
	 jIkmw55zBdFPIxvo6BiZ0f4tNOw9xc14i7kldml9vHyYgc4JZ8snub59c5v2M+gvtR
	 +WYLAqyAEL4sQ==
Date: Sun, 24 Mar 2024 06:28:23 +0000
To: robh@kernel.org
From: Pratham Patel <prathampatel@thefossguy.com>
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: rockchip: disable analog audio for rock-5b
Message-ID: <20240324062816.145858-1-prathampatel@thefossguy.com>
Feedback-ID: 104309535:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_232841_138728_48E8B85C 
X-CRM114-Status: GOOD (  14.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4398294263532110010=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4398294263532110010==
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------3c806d4c2f81f7a599b0ee2b3bd7400598ea8a4eeaf69b05d445b87dd6a7713e"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------3c806d4c2f81f7a599b0ee2b3bd7400598ea8a4eeaf69b05d445b87dd6a7713e
Content-Type: multipart/mixed;
 boundary=8b8383b24c45133ed25453f6bb43398b50bf4dbdc8feb4450923da509f1c
From: Pratham Patel <prathampatel@thefossguy.com>
To: robh@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: rockchip: disable analog audio for rock-5b
Date: Sun, 24 Mar 2024 11:58:16 +0530
Message-ID: <20240324062816.145858-1-prathampatel@thefossguy.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0

--8b8383b24c45133ed25453f6bb43398b50bf4dbdc8feb4450923da509f1c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The addition of `of: property: fw_devlink: Fix stupid bug in remote-endpoint parsing`
has surfaced an issue with the analog audio property in the devicetree
for the rock-5b. Booting kernels v6.7.9+ and v6.8.0+ would cause the
following call trace:

[   21.595068] Call trace:
[   21.595288]  smp_call_function_many_cond+0x174/0x5f8
[   21.595728]  on_each_cpu_cond_mask+0x2c/0x40
[   21.596109]  cpuidle_register_driver+0x294/0x318
[   21.596524]  cpuidle_register+0x24/0x100
[   21.596875]  psci_cpuidle_probe+0x2e4/0x490
[   21.597247]  platform_probe+0x70/0xd0
[   21.597575]  really_probe+0x18c/0x3d8
[   21.597905]  __driver_probe_device+0x84/0x180
[   21.598294]  driver_probe_device+0x44/0x120
[   21.598669]  __device_attach_driver+0xc4/0x168
[   21.599063]  bus_for_each_drv+0x8c/0xf0
[   21.599408]  __device_attach+0xa4/0x1c0
[   21.599748]  device_initial_probe+0x1c/0x30
[   21.600118]  bus_probe_device+0xb4/0xc0
[   21.600462]  device_add+0x68c/0x888
[   21.600775
]  platform_device_add+0x19c/0x270
[   21.601154]  platform_device_register_full+0xdc/0x178
[   21.601602]  psci_idle_init+0xa0/0xc8
[   21.601934]  do_one_initcall+0x60/0x290
[   21.602275]  kernel_init_freeable+0x20c/0x3e0
[   21.602664]  kernel_init+0x2c/0x1f8
[   21.602979]  ret_from_fork+0x10/0x20

This is a temporary workaround to at least have the SBC boot. There are
a few more SBCs that _might_ have this issue. I suspect that the
rock-5a and nanopc-t6 might also have this issue but I do not own either
board to verify this claim, yet.

Closes: https://lore.kernel.org/regressions/28S1EMw5YOnQIBpQ8_qaZZ6c9Go-j6-lLuWWbRpe6-MtRUd7Ay-uXq8JHbVVtJv3LzpxjI8jYg7ukNntbN22PVV-hOWbuTY8FNWgvM4zSwI=@thefossguy.com/T/#m69eedea6fbcb0591d54a9ccd478c2782ef045547

Signed-off-by: Pratham Patel <prathampatel@thefossguy.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 110 +++++++++---------
 1 file changed, 57 insertions(+), 53 deletions(-)

diff --git a/arch/arm64/boot/d
ts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 1fe8b2a0e..6d3b9f52c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -20,22 +20,24 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
-	analog-sound {
-		compatible = "audio-graph-card";
-		label = "rk3588-es8316";
-
-		widgets = "Microphone", "Mic Jack",
-			  "Headphone", "Headphones";
-
-		routing = "MIC2", "Mic Jack",
-			  "Headphones", "HPOL",
-			  "Headphones", "HPOR";
-
-		dais = <&i2s0_8ch_p0>;
-		hp-det-gpio = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&hp_detect>;
-	};
+	/*
+	 *analog-sound {
+	 *	compatible = "audio-graph-card";
+	 *	label = "rk3588-es8316";
+	 *
+	 *	widgets = "Microphone", "Mic Jack",
+	 *		  "Headphone", "Headphones";
+	 *
+	 *	routing = "MIC2", "Mic Jack",
+	 *		  "Headphones", "HPOL",
+	 *		  "Headphones", "HPOR";
+	 *

+	 *	dais = <&i2s0_8ch_p0>;
+	 *	hp-det-gpio = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
+	 *	pinctrl-names = "default";
+	 *	pinctrl-0 = <&hp_detect>;
+	 *};
+	 */
 
 	leds {
 		compatible = "gpio-leds";
@@ -236,43 +238,45 @@ hym8563: rtc@51 {
 	};
 };
 
-&i2c7 {
-	status = "okay";
-
-	es8316: audio-codec@11 {
-		compatible = "everest,es8316";
-		reg = <0x11>;
-		clocks = <&cru I2S0_8CH_MCLKOUT>;
-		clock-names = "mclk";
-		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
-		assigned-clock-rates = <12288000>;
-		#sound-dai-cells = <0>;
-
-		port {
-			es8316_p0_0: endpoint {
-				remote-endpoint = <&i2s0_8ch_p0_0>;
-			};
-		};
-	};
-};
-
-&i2s0_8ch {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2s0_lrck
-		     &i2s0_mclk
-		     &i2s0_sclk
-		     &i2s0_sdi0
-		     &i2s0_sdo0>;
-	status = "okay";
-
-	i2s0_8ch_p0: port {
-		i2s0_8ch_p0_0: endpoint {
-			dai-format = "i2s";
-			mclk-fs = <256>;
-			remote-endpoint = <&es8316_p0_0>;
-		};
-	};
-};

+/*
+ *&i2c7 {
+ *	status = "okay";
+ *
+ *	es8316: audio-codec@11 {
+ *		compatible = "everest,es8316";
+ *		reg = <0x11>;
+ *		clocks = <&cru I2S0_8CH_MCLKOUT>;
+ *		clock-names = "mclk";
+ *		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
+ *		assigned-clock-rates = <12288000>;
+ *		#sound-dai-cells = <0>;
+ *
+ *		port {
+ *			es8316_p0_0: endpoint {
+ *				remote-endpoint = <&i2s0_8ch_p0_0>;
+ *			};
+ *		};
+ *	};
+ *};
+ *
+ *&i2s0_8ch {
+ *	pinctrl-names = "default";
+ *	pinctrl-0 = <&i2s0_lrck
+ *		     &i2s0_mclk
+ *		     &i2s0_sclk
+ *		     &i2s0_sdi0
+ *		     &i2s0_sdo0>;
+ *	status = "okay";
+ *
+ *	i2s0_8ch_p0: port {
+ *		i2s0_8ch_p0_0: endpoint {
+ *			dai-format = "i2s";
+ *			mclk-fs = <256>;
+ *			remote-endpoint = <&es8316_p0_0>;
+ *		};
+ *	};
+ *};
+ */
 
 &pcie2x1l0 {
 	pinctrl-names = "default";
-- 
2.42.0


--8b8383b24c45133ed25453f6bb43398b50bf4dbdc8feb4450923da509f1c
Content-Transfer-Encoding: base64
Content-Disposition: attachment; name="publickey -
 prathampatel@thefossguy.com - f2dde54d.asc"; filename="publickey -
 prathampatel@thefossguy.com - f2dde54d.asc"
Content-Type: application/pgp-keys; name="publickey -
 prathampatel@thefossguy.com - f2dde54d.asc"; filename="publickey -
 prathampatel@thefossguy.com - f2dde54d.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tClZlcnNpb246IEdvcGVuUEdQIDIu
Ny4zCkNvbW1lbnQ6IGh0dHBzOi8vZ29wZW5wZ3Aub3JnCgp4ak1FWmZjR2RSWUpLd1lCQkFIYVJ3
OEJBUWRBa2VYM3NrdFI1R0lZQTM5VXhoRTlZcitZMy8zd0ZXUmxmVnlPClhsaWdnS2ZOT1hCeVlY
Um9ZVzF3WVhSbGJFQjBhR1ZtYjNOelozVjVMbU52YlNBOGNISmhkR2hoYlhCaGRHVnMKUUhSb1pX
WnZjM05uZFhrdVkyOXRQc0tNQkJBV0NnQStCWUpsOXdaMUJBc0pCd2dKa01lcFhtOWRLYStXQXhV
SQpDZ1FXQUFJQkFoa0JBcHNEQWg0QkZpRUU4dDNsVFJRTDQ4NE9oNDE3eDZsZWIxMHByNVlBQUNi
UUFQOUxzU3BSClQwSTV2TC8ycHpBa2F2UVhLdStWR1BRMk44RUVYZGpSVkRseGl3RUFwMVpSUHQz
aTlEb2pxeDU4T0xDZHc3bEcKMlVwdkJGZ2dCeGVrV216d1dRbk9PQVJsOXdaMUVnb3JCZ0VFQVpk
VkFRVUJBUWRBcmU5anlpVHdUUEZKM1prMgpvTVd0ZDVxSi9zcWNKRUZrckZxNUpVVzRWalVEQVFn
SHduZ0VHQllLQUNvRmdtWDNCblVKa01lcFhtOWRLYStXCkFwc01GaUVFOHQzbFRSUUw0ODRPaDQx
N3g2bGViMTBwcjVZQUFEVEZBUDlZRkgvQXErNUV3ekdDTEllaE00YmwKUW5hK2t0cnNPRWlwVllV
TVZMd0tjQUQvVktHQzR4VG1MQ1RBQ0NwU2pGN1VHMFVjY005VTRPbVlXZGVVT0dSTQphd1k9Cj01
cTBtCi0tLS0tRU5EIFBHUCBQVUJMSUMgS0VZIEJMT0NLLS0tLS0=
--8b8383b24c45133ed25453f6bb43398b50bf4dbdc8feb4450923da509f1c--

--------3c806d4c2f81f7a599b0ee2b3bd7400598ea8a4eeaf69b05d445b87dd6a7713e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wnUEARYIACcFAmX/yAYJEMepXm9dKa+WFiEE8t3lTRQL484Oh417x6leb10p
r5YAAPO5AP9YZpo1HThMcfrMLya9+c3+SBqyU8JuDWvN2MRLtkaMMgEApkZZ
dpmaWfNi4Vdfs4OUd1oSAfLGUw9dCGUaufd3JQk=
=GeuM
-----END PGP SIGNATURE-----


--------3c806d4c2f81f7a599b0ee2b3bd7400598ea8a4eeaf69b05d445b87dd6a7713e--



--===============4398294263532110010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4398294263532110010==--



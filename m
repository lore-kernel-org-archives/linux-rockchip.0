Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01369C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 12:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfyV8lUuqwZg4epsS5OQ7lqA6cWDOgURwI5N+WiW2Mg=; b=43g5jEfPzodwPe
	i08qSyZzYarszeYKcfB6J+nFhlN0qhM7rtuMfzPCJsq50j4AaP4vm7aqq8RfnagmCJpxCj9+dmPj8
	Z20U/fqoh5AYT2k2j5NfXo458p4RTLrUDTZ+xS1YfuV5tewLAfz/MmcfpSPBtHfKSBx1xbWF3OGay
	NvGO6eM1Ed7W2kQGccqn8CL0yfujyhMrd8lBV5eBsKQobHJkH8ElEoQGDmPMAM3ov3rKgaWWKAOVK
	1g1c2Ve5whoXBX95LIE12WnzURSZWvDIJjWMf1EB+8SVQbdr5YCaXVfgg0s5lummveZ0OXSN2ob27
	fmeuqeNU6+PTOl4x/bMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0L5X-001Sxh-2x;
	Tue, 07 Nov 2023 12:21:47 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0L5T-001Sv3-33;
	Tue, 07 Nov 2023 12:21:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 8B351B81699;
	Tue,  7 Nov 2023 12:21:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6ADCAC433C8;
	Tue,  7 Nov 2023 12:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699359701;
	bh=fbCE/3wGbrk0VpscWgRWMhvjTR4+0eLeBxvgG53oMa0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XTGhxBv5xY2zGgTFp7ip1XJKUJVdc9RBmZv9of7lOmB6p4wLpWvGfbpdYwBHUt0HH
	 FhW+fMxpqlmJfNDUcnQFuoVOaXRzPjfDgzDjORSwAzTudLfwF4lbLg8TZCsmIWuoWj
	 B4HKTJ0TzJUOTwOX1Z++R/tUvo1dbRzUItxT/hCLGhnbCOi/1kAqAY5Ung5wmUD5A6
	 YdkOquJX0croYu7xZnigqGbdgfqk9UePk6o1yRXyuKKM2m/TFPriOXEFGGaGDyWr5P
	 KNz/sinTtR81oH228rsps8hD9pVmLx5oMBwqq0BqQX5KzysFhN826sRRKwMouQxz2/
	 N7gGqFqU1RpQw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: John Clark <inindev@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	macromorgan@hotmail.com,
	jagan@edgeble.ai,
	tmckahan@singleboardsolutions.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 38/40] arm64: dts: rockchip: Add NanoPC T6 PCIe e-key support
Date: Tue,  7 Nov 2023 07:16:40 -0500
Message-ID: <20231107121837.3759358-38-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107121837.3759358-1-sashal@kernel.org>
References: <20231107121837.3759358-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_042144_281742_B1337930 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: John Clark <inindev@gmail.com>

[ Upstream commit ac76b786cc370b000c76f3115a5d2ee76ff05c08 ]

before
~~~~
0000:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0002:20:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0002:21:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)
0004:40:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0004:41:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)

after
~~~
0000:00:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0002:20:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0002:21:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)
0003:30:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0003:31:00.0 Network controller: Realtek Semiconductor Co., Ltd. RTL8822CE 802.11ac PCIe Wireless Network Adapter
0004:40:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
0004:41:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8125 2.5GbE Controller (rev 05)

Signed-off-by: John Clark <inindev@gmail.com>
Link: https://lore.kernel.org/r/20230906012305.7113-1-inindev@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../boot/dts/rockchip/rk3588-nanopc-t6.dts    | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 0bd80e5157544..97af4f9128285 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -137,6 +137,18 @@ vbus5v0_typec: vbus5v0-typec-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
+	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_m2_1_pwren>;
+		regulator-name = "vcc3v3_pcie2x1l0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc3v3_pcie30: vcc3v3-pcie30-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -421,6 +433,14 @@ &pcie2x1l0 {
 	status = "okay";
 };
 
+&pcie2x1l1 {
+	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_1_rst>;
+	status = "okay";
+};
+
 &pcie2x1l2 {
 	reset-gpios = <&gpio4 RK_PA4 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc_3v3_pcie20>;
@@ -467,6 +487,10 @@ pcie2_0_rst: pcie2-0-rst {
 			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
+		pcie2_1_rst: pcie2-1-rst {
+			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		pcie2_2_rst: pcie2-2-rst {
 			rockchip,pins = <4 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -474,6 +498,10 @@ pcie2_2_rst: pcie2-2-rst {
 		pcie_m2_0_pwren: pcie-m20-pwren {
 			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+
+		pcie_m2_1_pwren: pcie-m21-pwren {
+			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	usb {
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

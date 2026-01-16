Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C2EAD47CAB
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 00:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/msYkHfRkr87dnmbogZqgDFu+hSf6K52dJVk+XJK4jg=; b=T9G3RHF8EB1dHK
	CkicPLnoh2fgDtR0JZGqXPBwE5JKeuVLE8oyTCUEtpNBYYtrQnd+WxNSeZ02+SqkYJ0FMk6iz2wF/
	IN0zwGF8H1YqgcjrWqF0klNe/6nllGUdgf9FeMY2XyZHdzFSGTmwYgo2GfZPFNXWtC5FVq9iPLpM2
	8KI2vvkLoE8Ib8JuR6KV66hqHN20af95mxiw4WlaSgLcQUdITPa0oFrsuX4LNzOe336usdN3AiDjf
	vQc6HMWYg7yCXs10UYZMjJqvviELogCHTC3H1qaFdG7z6lFwOfCkSKN7tJ9RYtiW4aQ1ZcYbrNLFo
	eq8NeTbYz6jdLX2fHxqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgY8P-0000000DNox-3NfE;
	Fri, 16 Jan 2026 00:56:20 +0000
Received: from mail-m822136169.xmail.ntesmail.com ([8.221.36.169])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgY8M-0000000DNnH-2xPy
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jan 2026 00:56:16 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30d5a76e2;
	Fri, 16 Jan 2026 08:56:07 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Marco Schirrmeister <mschirrmeister@gmail.com>,
	John Clark <inindev@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v4 4/5] arm64: dts: rockchip: Fix SD card support for RK3576 EVB1
Date: Fri, 16 Jan 2026 08:55:31 +0800
Message-Id: <1768524932-163929-5-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768524932-163929-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768524932-163929-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bc44d6d6709cckunm67a197c8691c66
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUMfTFZKShlISEkZGEpCHRlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=B41+5BNN8U8LwQOv+Cw+mwykc51TOmSanrzWjIkf+AuztK+zBGMyCYMDusIQnpezJc9l2GVRFCW51Z9IbVFrwbtsvCu5oOaj/ct/Wxfj+P2Imwz/ZSqR8HauPu0gtPN9gA2faDyc5RoN5+MaOXEWFqf1Acem2b8543axCxuy3J0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=nq2tVcXmboBM5WaNxo3fVBNL6liOQSzqhx/PdcQP5Zg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_165615_450981_E2743338 
X-CRM114-Status: GOOD (  11.22  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

When runtime suspend is enabled, the associated power domain is powered
off, which resets the registers, including the power control bit. As a result,
the card loses power during runtime suspend. The card should still be able
to process I/O with the help of mmc_blk_mq_rw_recovery(), which is suboptimal.
To address this issue, we must use vmmc-supply with a GPIO based method to
maintain power to the card. Also, add cd-gpios method to make hot-plug work
correctly during idle periods.

Fixes: f135a1a07352 ("arm64: dts: rockchip: Add rk3576 evb1 board")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v3: None
Changes in v2: None

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index 0789733..f5746bc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -223,6 +223,18 @@
 		vin-supply = <&vcc_3v3_s3>;
 	};
 
+	vcc3v3_sd: regulator-vcc-3v3-sd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_pwren>;
+		regulator-name = "vcc3v3_sd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s0>;
+	};
+
 	vcc_ufs_s0: regulator-vcc-ufs-s0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_ufs_s0";
@@ -904,6 +916,12 @@
 		};
 	};
 
+	sdmmc {
+		sdmmc_pwren: sdmmc-pwren {
+			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		usb_host_pwren: usb-host-pwren {
 			rockchip,pins = <0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -958,11 +976,15 @@
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <200000000>;
 	no-sdio;
 	no-mmc;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_det &sdmmc0_bus4>;
 	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sd>;
 	vqmmc-supply = <&vccio_sd_s0>;
 	status = "okay";
 };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

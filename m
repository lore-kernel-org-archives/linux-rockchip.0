Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89AFDC44502
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 08:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	MIME-Version:Subject:Date:From:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/WHAJnx55R0725vYx8lO5YvbIXWROPESmhI7dCc3Kao=; b=EykLeovmQTYYOrjL85r0K4BkbB
	VFG1XyQktfw5o/pGSLI5JJHgxDQl775n8KJ8HV4HpeXG6xC0ubgfFuPwBU5vyXb5WA/WkzmvBb8bu
	sQiWbbp3jsQEtuoGWLJKsUwczU27yQZGoaF9SN432Ut/0vx9ErHwdTh5wmu8LzA3TFa8hlRKQxoGS
	XX1f2UnrsH6J5//Oabu9CHp3NhPDaKeapvM+oP0ovoWDaXzOTvVyZUjeTL38hAmsxJPsw4sdegqsV
	Yn2osUnOv2a1auChS4IcKYowoctTyv+UzrHlh8mFAht4wffT6jLU9nK7VfwmBEqmhnFyFT7N5pa5f
	US2emwng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfYqS-00000006K6y-027t;
	Fri, 03 Jul 2026 08:01:56 +0000
Received: from out162-62-57-87.mail.qq.com ([162.62.57.87])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfYqM-00000006Jwa-0syA
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 08:01:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783065706; bh=FNpeTTaxZzlztLRm8w0bMFvau88h3vRn+4DN6i85aPU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=A/My9xQj4mts/W3erMsGKGNTu1fD8b1M7Xsce0ojDdt2OnAYWOsQpyTNF/LYXtHwZ
	 V2tTGZ4yVhfLTnizkdzrrQc3zQ5kI+VnqfzyP9Y5zIsUXmMoOJpvCiF2MOKho/eCs4
	 8yFwwgGEXsKczZesLcj1AYZOPeism/vsj/KcgjtY=
Received: from ubuntu2204.localdomain ([218.4.149.66])
	by newxmesmtplogicsvrsza73-0.qq.com (NewEsmtp) with SMTP
	id 6622C6D; Fri, 03 Jul 2026 16:01:38 +0800
X-QQ-mid: xmsmtpt1783065703to60n66h5
Message-ID: <tencent_48121342466E02301067FDB89BEA68886509@qq.com>
X-QQ-XMAILINFO: NbgegmlEc3Ju/QNpdGKi0FoBdgmbPC6VWoOUSy+A92JizyDLsIv3UryUA44qsT
	 x7qANg0RMIeBE+xi5cD7PxKOno8sb+BqRINt74xhZS4bCF4NA9Rr5gHQuQFTdQMItBlwCnajDMvI
	 lEaHwCDf40gx8HhtU5raAjpbQd5eg5jb7ic18UEDfJGKAYcm9cPrKB7TUaME24iR/657lzee3PVR
	 kTnHh0lcMudeqo5nGFxXVrDSmcjvHsQAuz1w09jhAx2MPWP22aaqpogWl5B+n/MwzbNIYvckn3MM
	 5+vrWvOE7lEzjiki7faNqSRa+OcSEgHYlFyS7nYe0TxPKvN4F8MmgJQWmRGiPjRKcTDx6/vsNq1T
	 qYu3EHPzytPnjihLBkgKokOsavnRKbrDHLHdK1nMgySqneBEWH9vCGHF8TlF8eS0ZxJ/bghNqnxB
	 l9m/j4SShuFlJkk2QrnP7Ar0J35m/FdW7iGp55S9LiOUFMuMPfxvq7nkubAleHJ7usg4JM92qy1+
	 BEBzH/dKCX+cei6RKioVwPDrv5mOcGNzFxOUXBXGfdqbAzSzCJTHAGQKNTbTtRq3OVYFJL3aEzRJ
	 ejNxbb6GnY1jKoMAYuTImjFuqVwlrIo8f0HNQxOZKU333S0DY9owWC7yd0lIZZYW1SXmZdR2tkWs
	 QUJ0DmLphDCdXN+cKZ8lq1ASTy9/nQupmxOt6XdN/D+0QMSN434aDUsZg8GzyeGGV7TJw1wuMEAM
	 xMKY8BDz3GirJE25SI4asX8bjEUnUpgrF31L305SgIQCHK0a4owSeu+TRlz0luGVk7PZ3UG8lIRx
	 2h48u6E3xCFYa5Qdj1em+koNtGf7/O8NwmXJI0rTwqFsH9SuhVnNH/3XqL5oObopaxblZ5bPhx2q
	 y2STno/2c3sv9OVbK27FCggFf1FEqQF5aSWD+wxcu6fzfk0Ecv+j8QS9jRX4jxkz/SD/tMwNgC3Z
	 FiJ0GIqUiwxUGv4ZLmhau6M+yjSVRD1RlsqsvG/uMFmcWkQ3PaAX3EsS+LRhcFDpQwhKkEN3QFbI
	 PWc6bzRneBErPz9v6bE4HxCSl1R6wLIhw267UWmnA35PIw6cirV2WiDl7bVxnue67pCekL3Rbzpc
	 8TXFpTJeOaq6/4rlO92DFpFDH5KSFXe4O0OnAAEtp0Im6ZogDF4kym7F2CSQ==
X-QQ-XMRINFO: NS+P29fieYNwqS3WCnRCOn9D1NpZuCnCRA==
From: Cunhao Lu <1579567540@qq.com>
Date: Fri, 03 Jul 2026 16:01:28 +0800
Subject: [PATCH v4 3/4] arm64: dts: rockchip: add CAN-FD nodes for RK3588
MIME-Version: 1.0
X-OQ-MSGID: <20260703-master-v4-3-47d40bbf5fda@qq.com>
References: <20260703-master-v4-0-47d40bbf5fda@qq.com>
In-Reply-To: <20260703-master-v4-0-47d40bbf5fda@qq.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de, 
 Vincent Mailhol <mailhol@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Cunhao Lu <1579567540@qq.com>, 
 Heiko Stuebner <heiko.stuebner@cherry.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_010150_787845_06651905 
X-CRM114-Status: UNSURE (   7.48  )
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

Describe the three CAN-FD controllers integrated in RK3588 in the base
SoC .dtsi.

Add CAN0, CAN1 and CAN2 nodes with their register ranges, interrupts,
clocks and resets, and keep them disabled by default so board DTS files
can enable them as needed.

Co-developed-by: Heiko Stuebner <heiko.stuebner@cherry.de>
Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
v2 -> v3:
- Use Co-developed-by for Heiko's RK3588 contributions and add his
  Signed-off-by
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 39 +++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index fc1fdbfd3162..b340973775c5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -2648,6 +2648,45 @@ dmac1: dma-controller@fea30000 {
 		#dma-cells = <1>;
 	};
 
+	can0: can@fea50000 {
+		compatible = "rockchip,rk3588-canfd";
+		reg = <0x0 0xfea50000 0x0 0x1000>;
+		interrupts = <GIC_SPI 341 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru CLK_CAN0>, <&cru PCLK_CAN0>;
+		clock-names = "baud", "pclk";
+		resets = <&cru SRST_CAN0>, <&cru SRST_P_CAN0>;
+		reset-names = "core", "apb";
+		pinctrl-names = "default";
+		pinctrl-0 = <&can0m0_pins>;
+		status = "disabled";
+	};
+
+	can1: can@fea60000 {
+		compatible = "rockchip,rk3588-canfd";
+		reg = <0x0 0xfea60000 0x0 0x1000>;
+		interrupts = <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru CLK_CAN1>, <&cru PCLK_CAN1>;
+		clock-names = "baud", "pclk";
+		resets = <&cru SRST_CAN1>, <&cru SRST_P_CAN1>;
+		reset-names = "core", "apb";
+		pinctrl-names = "default";
+		pinctrl-0 = <&can1m0_pins>;
+		status = "disabled";
+	};
+
+	can2: can@fea70000 {
+		compatible = "rockchip,rk3588-canfd";
+		reg = <0x0 0xfea70000 0x0 0x1000>;
+		interrupts = <GIC_SPI 343 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru CLK_CAN2>, <&cru PCLK_CAN2>;
+		clock-names = "baud", "pclk";
+		resets = <&cru SRST_CAN2>, <&cru SRST_P_CAN2>;
+		reset-names = "core", "apb";
+		pinctrl-names = "default";
+		pinctrl-0 = <&can2m0_pins>;
+		status = "disabled";
+	};
+
 	i2c1: i2c@fea90000 {
 		compatible = "rockchip,rk3588-i2c", "rockchip,rk3399-i2c";
 		reg = <0x0 0xfea90000 0x0 0x1000>;

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

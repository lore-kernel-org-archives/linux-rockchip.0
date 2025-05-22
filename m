Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADF39C54756
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 06:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRH4GeGJQSD0Vs+aTE844yow1poaHiwOn6ZDVXQPLBc=; b=W6uSb7Zk5rrXFQ
	MFzwbZ5cl9e+1r7LpKoHshlkMgiihS1NnVnakasgAgDPIf2YhrQcSCOoPFCo3g04xoeUQmIAcdMEP
	4stQ8j3sO/MuznO6IKfO6O9wuFfywY0A1TPxIXCEPE/vzBUBt06Ae23kS8FMYq4MtlTP1VgXU86x7
	znp2CyjxByjxYssDOByniJmw+3R9KARPog556IkOkKl8YoOfqttxNzn9HOqo5Han5RkeTp3zu/G1g
	3d2ssdj7okbPemoij3eCnglPrcZXKqzMCGnF4Jj3xOiDVdqTvRAD3k6x3HGqAxPwIsV0cjZMugrL3
	itkkwCJhp2Wo6pJQB0DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHzU1-000000000VS-00r9;
	Thu, 22 May 2025 06:32:49 +0000
Received: from mail-m1973177.qiye.163.com ([220.197.31.77])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHzTy-000000000TE-1KmH;
	Thu, 22 May 2025 06:32:47 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1602d1577;
	Thu, 22 May 2025 14:32:38 +0800 (GMT+08:00)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: zhangqing@rock-chips.com,
	mkl@pengutronix.de,
	kernel@pengutronix.de,
	mailhol.vincent@wanadoo.fr,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	cl@rock-chips.com,
	kever.yang@rock-chips.com
Cc: linux-can@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 3/3] arm64: dts: rockchip: rk3576: add can dts nodes
Date: Thu, 22 May 2025 14:32:32 +0800
Message-Id: <20250522063232.2197432-4-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250522063232.2197432-1-zhangqing@rock-chips.com>
References: <20250522063232.2197432-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRoaTVZDTh9PTkMeQkxIGBlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96f6b1a29703a3kunme211611210aab3f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MQw6Lzo6PTExCBIMKkMjEAsM
	DQ0wFDxVSlVKTE9MQ0JOTk1LSUpIVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlJTkw3Bg++
DKIM-Signature: a=rsa-sha256;
	b=G5JkPvUu6PwLVwBm8RzetK8sUJx0D2rodK40gP2ZxJe40N0MF/CFJCMAHCj6KI98D+2BVWvODGdeYYhw90TfS0U7JDZBV2nZW8PlL+sPtJZfK50jdXtPRYGoGy/n8i1sZOG5nOQIqteZ8x6peVM5Rhel9qxSdFPCMvSHPSdBHY0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=5IrppD+noS0OCQj8srA99WHmG3PCHUwAcMuiVB1ALqE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_233246_504583_5533F6D3 
X-CRM114-Status: UNSURE (   7.12  )
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

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 436232ffe4d1..ca665c29a72d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1195,6 +1195,28 @@ dmac2: dma-controller@2abd0000 {
 			#dma-cells = <1>;
 		};
 
+		can0: can@2ac00000 {
+			compatible = "rockchip,rk3576-canfd";
+			reg = <0x0 0x2ac00000 0x0 0x1000>;
+			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru CLK_CAN0>, <&cru HCLK_CAN0>;
+			clock-names = "baudclk", "apb_pclk";
+			resets = <&cru SRST_CAN0>, <&cru SRST_H_CAN0>;
+			reset-names = "can", "can-apb";
+			status = "disabled";
+		};
+
+		can1: can@2ac10000 {
+			compatible = "rockchip,rk3576-canfd";
+			reg = <0x0 0x2ac10000 0x0 0x1000>;
+			interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru CLK_CAN1>, <&cru HCLK_CAN1>;
+			clock-names = "baudclk", "apb_pclk";
+			resets = <&cru SRST_CAN1>, <&cru SRST_H_CAN1>;
+			reset-names = "can", "can-apb";
+			status = "disabled";
+		};
+
 		i2c1: i2c@2ac40000 {
 			compatible = "rockchip,rk3576-i2c", "rockchip,rk3399-i2c";
 			reg = <0x0 0x2ac40000 0x0 0x1000>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

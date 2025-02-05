Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEDB9C02198
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Feb 2025 06:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPERKnyKVlzvmMKZeOnnTNd9CFytun10rjFLrt/Ab6s=; b=3xmoJcWflDikMd
	DBBR05yycVsr1ZEazy2xR3m2ZYHAohzX/xsj1ZuwgE+x0QohD7nBrJmHlwf2/bAmfURWhxSz9QqBn
	JwDdYDuPb5OsX0yjHuUdmMHFxtM0Bu4kYvWiF6NT+XPhfxKtiDDOfwVh2RJsQQc3of+XsekdHH0Pc
	2bbHnd6o/XN2C0sBs2fpxGnBsMbLGtYSNZ09B6sqGQJXY/zI5DQRskkYmSyxCFmyw06qOALPHrJi7
	Efrw6uhBER85GC54anFfm8kVvUq47e7o7Rtj4Ct8TG00et5vEZGxycR3U25rgA0AwyTgGC5cbGisd
	setafcP5pJoKk/cTeN3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfYkD-00000002PFh-2uUK;
	Wed, 05 Feb 2025 06:18:41 +0000
Received: from mail-m49241.qiye.163.com ([45.254.49.241])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfYkB-00000002PEW-3VPP
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Feb 2025 06:18:41 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id a34e52fb;
	Wed, 5 Feb 2025 14:18:36 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v7 7/7] arm64: dts: rockchip: Add UFS support for RK3576 SoC
Date: Wed,  5 Feb 2025 14:15:56 +0800
Message-Id: <1738736156-119203-8-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk9CSFZNTkNLTkxPGU5NGB1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a94d4c2af6d09cckunma34e52fb
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nxw6Myo6ETIQEgs#EjcrHBor
	EwIwCxFVSlVKTEhDTEhNSEpMQ09PVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpCSEI3Bg++
DKIM-Signature: a=rsa-sha256;
	b=U5mFfZr1sdZFCWiqy8e46HIrf3ILOWz6zcrZR9gIKDOVFyKDGv9l6sb9Y4BUzQyUBMCa/5Hu29CePBxDLaW2MrUGAyn0cD6yXRuETVSd//zKpxM3HDnMN5T77EtzggDXhfmT0DtyfEpxS+vtowhhug6ZY69/Wh7R+/9/GZOp8rg=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=zXet6/X8S9LRHFBz6ujYL262DrXxbFU9c0/qc0AtD7Q=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_221840_037099_DF07AD6C 
X-CRM114-Status: GOOD (  11.02  )
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

Add ufshc node to rk3576.dtsi, so the board using UFS could
enable it.

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v7:
- Use 0x0 for consistency
- Collect Mani's acked-by tag

Changes in v6:
- remove comments suggested by Mani

Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 4dde954..bd55bd8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1221,6 +1221,30 @@
 			};
 		};
 
+		ufshc: ufshc@2a2d0000 {
+			compatible = "rockchip,rk3576-ufshc";
+			reg = <0x0 0x2a2d0000 0x0 0x10000>,
+			      <0x0 0x2b040000 0x0 0x10000>,
+			      <0x0 0x2601f000 0x0 0x1000>,
+			      <0x0 0x2603c000 0x0 0x1000>,
+			      <0x0 0x2a2e0000 0x0 0x10000>;
+			reg-names = "hci", "mphy", "hci_grf", "mphy_grf", "hci_apb";
+			clocks = <&cru ACLK_UFS_SYS>, <&cru PCLK_USB_ROOT>, <&cru PCLK_MPHY>,
+				 <&cru CLK_REF_UFS_CLKOUT>;
+			clock-names = "core", "pclk", "pclk_mphy", "ref_out";
+			assigned-clocks = <&cru CLK_REF_OSC_MPHY>;
+			assigned-clock-parents = <&cru CLK_REF_MPHY_26M>;
+			interrupts = <GIC_SPI 361 IRQ_TYPE_LEVEL_HIGH>;
+			power-domains = <&power RK3576_PD_USB>;
+			pinctrl-0 = <&ufs_refclk>;
+			pinctrl-names = "default";
+			resets = <&cru SRST_A_UFS_BIU>, <&cru SRST_A_UFS_SYS>,
+				 <&cru SRST_A_UFS>, <&cru SRST_P_UFS_GRF>;
+			reset-names = "biu", "sys", "ufs", "grf";
+			reset-gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_LOW>;
+			status = "disabled";
+		};
+
 		sdmmc: mmc@2a310000 {
 			compatible = "rockchip,rk3576-dw-mshc";
 			reg = <0x0 0x2a310000 0x0 0x4000>;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

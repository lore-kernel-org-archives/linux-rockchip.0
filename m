Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 020A6D5E140
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 07:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FphAExtR307hOuIVODRzENtok0yODNTxrsp7ujZhhaE=; b=TLOu4F1xeKVf48
	rh3by9pp9E9tyqKh+PPgQkRDcQW8i0AOXVuYQJbcWY3nR4KbwU2RoFMN57kSobv4NKxornYWQ4ff4
	dA5V+vJ1VXsUzFm3PuDo3ILoFqeZxrq29K2B4G3Az5h1tEgRglL/g8fUGE/T1XZoBNieF+2lYw4rx
	2w8xLTBp455RNhwc8+NsF+Qk6pvkYeRIRU8t3Gv6vXmU4C22dqaMQ44wc00P1tuxfYYghAelbsNUV
	/e778R8muE0wIp8mtcZ+PxAExy6Slkm/TesbZVq63qrufgz1xSr13fGblxNXd932VL39qy6N9+nBn
	BMC6TBjHTFOgrVrpYcmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9J1j-00000009Zgr-0Cvy;
	Fri, 08 Nov 2024 07:03:27 +0000
Received: from ec2-44-216-146-152.compute-1.amazonaws.com ([44.216.146.152])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9J1g-00000009Zfy-2oT4
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 07:03:26 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 22d55d15;
	Fri, 8 Nov 2024 14:58:13 +0800 (GMT+08:00)
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
Subject: [PATCH v5 7/7] arm64: dts: rockchip: Add UFS support for RK3576 SoC
Date: Fri,  8 Nov 2024 14:56:26 +0800
Message-Id: <1731048987-229149-8-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com>
References: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh1PTVZDHRhOQkIdSUtPQk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a930a90fb3409cckunm22d55d15
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OUk6Fhw6CDItNCpWLhkcPxge
	CwhPFB5VSlVKTEhKS09CS0JOT05DVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpDT0w3Bg++
DKIM-Signature: a=rsa-sha256;
	b=SOAZL9LvJ+qDHchjTV5Q0IP7mKMmQAwIOjP7EVVWMsshbpPJ7i7qK5h6SI0DOxkH95848JUG1ZewWnnjfYLxs9Nbwx/1Rl7C/sTd3K1zDbgeSSm8jKNxfTpSGqCMFrwEkuUJQmoKkHz6Q42h44vJdlmxbiPqMSB0RpTeokzmVnY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=3H24NrQLEMfPWL1st4iL+1t7GW4sDnhpoxLzFNJ/4Qk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_230325_311183_7993C6A0 
X-CRM114-Status: GOOD (  10.69  )
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

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 436232f..32beda2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1110,6 +1110,31 @@
 			};
 		};
 
+		ufshc: ufshc@2a2d0000 {
+			compatible = "rockchip,rk3576-ufshc";
+			reg = <0x0 0x2a2d0000 0 0x10000>, /* 0: HCI standard */
+			      <0x0 0x2b040000 0 0x10000>, /* 1: Mphy */
+			      <0x0 0x2601f000 0 0x1000>,  /* 2: HCI Vendor specified */
+			      <0x0 0x2603c000 0 0x1000>,  /* 3: Mphy Vendor specified */
+			      <0x0 0x2a2e0000 0 0x10000>; /* 4: HCI apb */
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

Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79250C43381
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 19:34:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 051B723AA7
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 19:34:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 051B723AA7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3EvE+gaZNHvvF8/i2afBvMT9FdnVj4wqoXZDJxvVuJA=; b=1RS84YhTxHrLzF3snXHy3kJ/Q
	MuUSpnM1ii1hwZZzOvPucmrwt7eZRR715Hthfq+Qw+DK8X3m9bmrDIk0raZYTz7Cg+//kuce5YvUj
	bGiCC0lXxhw1jGnKnjpN5zGg7rvnq0cgAOMa4APns10A4QH4y8EGB+eJ0o4jvRh4Q/AdSIAuU6qTl
	r68LONe5mj2+2b57EgT+suwW9Grj2ICuRez5CX9Qwj3+O8VTsmwTEa4VjbrQyD0/qabvDkKAdrBOR
	fovNe5/HPFcoC9aRZo5oTzU+srFMWBfm24rm7kWjeeB63PILKd6UKdrDrCGxCyT5LIZzliTYq/GsZ
	DnxMvq5Jw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxxWI-00060H-6X; Fri, 08 Jan 2021 19:33:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxxW8-0005u6-M0
 for linux-rockchip@lists.infradead.org; Fri, 08 Jan 2021 19:33:52 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kxxVv-0004Zr-Gj; Fri, 08 Jan 2021 20:33:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: ezequiel@collabora.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com
Subject: [PATCH RFC 02/11] arm64: dts: rockchip: add isp node for px30
Date: Fri,  8 Jan 2021 20:33:02 +0100
Message-Id: <20210108193311.3423236-3-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210108193311.3423236-1-heiko@sntech.de>
References: <20210108193311.3423236-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_143349_044296_33A8414F 
X-CRM114-Status: GOOD (  10.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com,
 mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Add the rkisp1 node and iommu for the px30 soc.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 43 ++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 52bc54416657..4f762968f75f 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1131,6 +1131,49 @@ vip: vip@ff490000 {
 		status = "disabled";
 	};
 
+	isp: isp@ff4a0000 {
+		compatible = "rockchip,px30-cif-isp"; /*rk3326-rkisp1*/
+		reg = <0x0 0xff4a0000 0x0 0x8000>;
+		interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "isp", "mi", "mipi";
+		clocks = <&cru SCLK_ISP>,
+			 <&cru ACLK_ISP>,
+			 <&cru HCLK_ISP>,
+			 <&cru PCLK_ISP>;
+		clock-names = "isp", "aclk", "hclk", "pclk";
+		iommus = <&isp_mmu>;
+		phys = <&csi_dphy>;
+		phy-names = "dphy";
+		power-domains = <&power PX30_PD_VI>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+	};
+
+	isp_mmu: iommu@ff4a8000 {
+		compatible = "rockchip,iommu";
+		reg = <0x0 0xff4a8000 0x0 0x100>;
+		interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "isp_mmu";
+		clocks = <&cru ACLK_ISP>, <&cru HCLK_ISP>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power PX30_PD_VI>;
+		rk_iommu,disable_reset_quirk;
+		#iommu-cells = <0>;
+		status = "disabled";
+	};
+
 	qos_gmac: qos@ff518000 {
 		compatible = "syscon";
 		reg = <0x0 0xff518000 0x0 0x20>;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

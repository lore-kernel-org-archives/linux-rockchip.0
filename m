Return-Path: <SRS0=TPHQ=NV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB266C4320E
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 14:13:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E01C860F44
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 14:13:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E01C860F44
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hSuKizqRVJ55PwXnbeyvI1LFYtGu7jMJaaqWEbjLo8U=; b=kZVfE/jEIPnrLm
	unxRY099k8M9wvu2N94nSGCXnzgS0g8ybTU4og0C4cdt30bZIy/JvfMPQqmd/wGVKEoOBjP7IdwOo
	Irg2wjda5jUUUgEFqSF++OnerAihLeo6K2k6eNlzZDuFtt+C3EYpvwyCSG3FCDbGDTut5+vywVSZQ
	ms76abaz6BHhitZehPIEbXorv9fZ4GqZT7oFwudgNLSg7ChW5u7GDIUom6hT+hTObrCTVEu8Pc/cA
	eR21Pkr3NBs4J3YT++yWbTCA5OR80+fwBuvX6RS9nAwNq4rim06JzjwePvH7zX2qno9sjCzNX0Kg9
	dSzr3gir5gdrMvaTjNpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKi2a-00HOv7-15; Mon, 30 Aug 2021 14:13:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKi2X-00HOty-HJ; Mon, 30 Aug 2021 14:13:34 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mKi2T-0008I3-IP; Mon, 30 Aug 2021 16:13:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jacopo@jmondi.org, heiko@sntech.de,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: add isp node for px30
Date: Mon, 30 Aug 2021 16:13:17 +0200
Message-Id: <20210830141318.66744-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_071333_621061_7A29E407 
X-CRM114-Status: GOOD (  10.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Add the rkisp1 node and iommu for the px30 soc.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 41 ++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 64f643145688..500ef3af2a49 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1189,6 +1189,47 @@ vopl_mmu: iommu@ff470f00 {
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
+		clocks = <&cru ACLK_ISP>, <&cru HCLK_ISP>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power PX30_PD_VI>;
+		rockchip,disable-mmu-reset;
+		#iommu-cells = <0>;
+	};
+
 	qos_gmac: qos@ff518000 {
 		compatible = "rockchip,px30-qos", "syscon";
 		reg = <0x0 0xff518000 0x0 0x20>;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=0DM3=MO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0F4C63797
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 07:40:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 05C1F61283
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 07:40:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 05C1F61283
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ruDxYCoXM6ILGPC811IHln73UTKB5PNbEIs1LhqTaYc=; b=ND3lqktsonDzpb
	FTpqG+Ceo5n8O8bwlTR6JWBvmfQgzvjAF2Nrf8l1RfhI6c+oE8F3xYp4ur+yWD61XSHMaS3IEBfyP
	Rchgh3tQK2jIu8A1T/fyL9HyU7ZFmcBxC51cmoDjC+L/qXeTfMLQUpRaV6+YTTtFviV4TNjahS+de
	iTrnTXpFstPuJNY1RM6CnRsHPJ/EsmNlpDiens4/01c4jMZb2YTLOqvQzbOF+Q1YtR7guXnKUuN6e
	KJ5OPYXyi41D7J/Jbmx/mxBnykUHpUIIe/XCMxhez+u/qAMytaXvaF//SnPuq1qrz2WU++uDVVbGM
	Szih+HlcCHEdIVO3uY3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6TJM-000Y7W-Cw; Thu, 22 Jul 2021 07:40:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6TJJ-000Y66-Eq; Thu, 22 Jul 2021 07:40:02 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m6TJF-0006ZQ-FF; Thu, 22 Jul 2021 09:39:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, heiko@sntech.de,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH] arm64: dts: rockchip: add csi-dphy to px30
Date: Thu, 22 Jul 2021 09:39:55 +0200
Message-Id: <20210722073955.1192168-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_004001_551165_48FCD199 
X-CRM114-Status: GOOD (  10.62  )
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

Add the CSI dphy node to the core px30 devicetree for later use
with the rkisp.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 248ebb61aa79..6e53a4cc75e6 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -864,6 +864,19 @@ dsi_dphy: phy@ff2e0000 {
 		status = "disabled";
 	};
 
+	csi_dphy: phy@ff2f0000 {
+		compatible = "rockchip,px30-csi-dphy";
+		reg = <0x0 0xff2f0000 0x0 0x4000>;
+		clocks = <&cru PCLK_MIPICSIPHY>;
+		clock-names = "pclk";
+		#phy-cells = <0>;
+		power-domains = <&power PX30_PD_VI>;
+		resets = <&cru SRST_MIPICSIPHY_P>;
+		reset-names = "apb";
+		rockchip,grf = <&grf>;
+		status = "disabled";
+	};
+
 	usb20_otg: usb@ff300000 {
 		compatible = "rockchip,px30-usb", "rockchip,rk3066-usb",
 			     "snps,dwc2";
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

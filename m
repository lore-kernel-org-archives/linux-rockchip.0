Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC45BC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:29:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7F7E6613B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:29:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7F7E6613B2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggU7NWhhtA0wb8iwIOeHO1Z+n2uPjWC31Jrkgw23SIU=; b=hkgtETFiETVO8X
	1aDukVzLnH35aPTewrCMBq2oAAVTndC81WZO4iXUZi58R2HeAFFnJ6Zcc2xC0zxa08to2bQID5N7h
	TsV7qifa86CHcJXV1Ey9sNbXFoAzEzoe0oxuNCWmzatX1c4uIopC1TITk+Sq+T7qVTRqWU/eWQQ+x
	YkeFhjYOwHAEiCbob4u8mY6V+Hki3XDDjGaxHfACiFM4RaisM/IoMAsZz2elzOpyqp/nGAXFCUCJu
	cNdczNMOPC9lwGspxplNuiIL7Vd6vFlTQ+lQ4YAF8QtY+vZmgyKOpKxKjFFUL1aHe12tuK936UTkN
	45f6lTRdkqHWGAI3qSYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvden-006ec8-LV; Tue, 22 Jun 2021 10:29:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvdeZ-006eXf-3R; Tue, 22 Jun 2021 10:29:12 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lvdeX-00031Z-Vt; Tue, 22 Jun 2021 12:29:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: cl@rock-chips.com
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com
Subject: [PATCH 10/10] arm64: dts: rockchip: add watchdog to rk3568
Date: Tue, 22 Jun 2021 12:29:07 +0200
Message-Id: <20210622102907.99242-2-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210622102907.99242-1-heiko@sntech.de>
References: <20210622102907.99242-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_032911_197077_429F3C51 
X-CRM114-Status: GOOD (  11.17  )
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

From: Liang Chen <cl@rock-chips.com>

Add the watchdog node to rk3568.

Signed-off-by: Liang Chen <cl@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 33db226b46cb..e9fa795b379e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -443,6 +443,14 @@ i2c5: i2c@fe5e0000 {
 		status = "disabled";
 	};
 
+	wdt: watchdog@fe600000 {
+		compatible = "rockchip,rk3568-wdt", "snps,dw-wdt";
+		reg = <0x0 0xfe600000 0x0 0x100>;
+		interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru TCLK_WDT_NS>, <&cru PCLK_WDT_NS>;
+		clock-names = "tclk", "pclk";
+	};
+
 	uart1: serial@fe650000 {
 		compatible = "rockchip,rk3568-uart", "snps,dw-apb-uart";
 		reg = <0x0 0xfe650000 0x0 0x100>;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

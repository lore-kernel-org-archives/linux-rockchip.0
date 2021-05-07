Return-Path: <SRS0=eK8e=KC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42AD7C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 09:04:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D2C8B61443
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 09:04:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D2C8B61443
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DBa6Usb8f4epBmmIq6tASm9m3GZPnYlMqAh/v5cnBPg=; b=g6auBcsAggV09Gy2Sc4Z79yqR
	FjLLe7GX2/Tl6Nk1jMwPNuwvNmi0lq1cgOW8NbKbY/+bXiktEapYcswmvNz36mxbdPFdI5I6c4kmk
	ooitPTkPXqw2YKqsPiMI39/TaR1tiyJN2R0TUlWX9hBoCrwNbqXqRbky21aWPZcij3AnSLEHJwFAf
	tyN7ftPSJF1XVWXnlA2qckXPsN5LROqTVFS3hFcy/CaBTceo55WDrQnwsmx4HfhWq+oDmGxWfib9a
	etPpCwkuzA2CoGI0ZPLS/mvaMnF235FMc/3WWmGX2RepslSjgOmjj1KzjKfi9e8QT6UuYEnVdppW5
	Ep+JVamjQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lewP1-006Z0j-7d; Fri, 07 May 2021 09:04:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lewNn-006Yfd-93; Fri, 07 May 2021 09:02:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=6yPG49K7KGTzslB73CEsMDobN5x0LSE1x5oweIkSH8Q=; b=WX0iKd0Y/q9cCFcRLr7L2AqLQq
 WNzpFfOEGHNIggEc4eC8yPRUXdUI+KiHJfjyWhzd5IWHvVPPiAZB3nZBWybfn/tvovg4O8t5gI4U8
 e2COKwPwWPWK5SphEzFBAcGuEW1rntUxyPDAjslviUXcPuFsIkiSzojJZqDeqxyhsdcuRxv+XVD/U
 CqChpKiR4NSuyiOeZsj/RHVhRbgVYWnQU/fytFgypLAr8JdbZ3TVHNm95Yzfi1jq95D9vx1tny6ax
 tKrVqExzQV1i0BSjY/jA9E82Q6BjznlSuNvaryP4WoVjmwcHe/H5+oO/Vteh3sVrQUflT3YvZKVvj
 K4PHC1aA==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lewNk-006iU2-Na; Fri, 07 May 2021 09:02:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id AA6481F43DCB
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 5/6] ARM64: dts: rockchip: rk3036: Remove useless
 interrupt-names properties
Date: Fri,  7 May 2021 11:02:31 +0200
Message-Id: <20210507090232.233049-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210507090232.233049-1-benjamin.gaignard@collabora.com>
References: <20210507090232.233049-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_020248_916319_21593C13 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
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

Remove useless interrupt-names properties for IOMMU nodes

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index c45b0cfcae09..47d0c29fd8d0 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1068,7 +1068,6 @@ vopb_mmu: iommu@ff460f00 {
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff460f00 0x0 0x100>;
 		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vopb_mmu";
 		clocks = <&cru ACLK_VOPB>, <&cru HCLK_VOPB>;
 		clock-names = "aclk", "iface";
 		power-domains = <&power PX30_PD_VO>;
@@ -1109,7 +1108,6 @@ vopl_mmu: iommu@ff470f00 {
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff470f00 0x0 0x100>;
 		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vopl_mmu";
 		clocks = <&cru ACLK_VOPL>, <&cru HCLK_VOPL>;
 		clock-names = "aclk", "iface";
 		power-domains = <&power PX30_PD_VO>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

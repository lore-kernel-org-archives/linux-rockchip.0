Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7536FC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 11:06:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C9D92395C
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 11:06:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9C9D92395C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MkLMoHzaKkcdSjcCn7qdO9Z5kUWf1NVTKdcVaBnCBeg=; b=EUeIg7EeF3kM6SbBEGH2m2Gshx
	kERaNYgd/Y8U5A3A3HgGyzNT29xGix6jF8GDwZpcM09f1fDl2RYUWnPFIw+B+RTbSloEWd5iLQw5E
	wXLQOC6gH+5LdHvye0GqwgnZrWVhtMSEAeB3lydmoI56X30kZI0EV+svKl+M4OfBiJ+2YVjQ6PSRE
	uV3MAuiilF2c0/ei9FeMdwhrtmYBRkG4IgbUb0dBy+VP7JrNKLJ4Md9DSnNTLvjpZ8aWtkP+HJofZ
	NrBZ4Lc12XThTf0E6sGCZDnqWMkXHuZSYghOhAWC/aguGUFdSkJs9tJpafhr277wcd35mWrnxFaMq
	PTpC4jRQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxpbJ-0001pm-9n; Fri, 08 Jan 2021 11:06:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxpbG-0001oX-4p; Fri, 08 Jan 2021 11:06:35 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kxpbD-0002PB-Pe; Fri, 08 Jan 2021 12:06:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: fix vopl iommu irq on px30
Date: Fri,  8 Jan 2021 12:06:27 +0100
Message-Id: <20210108110627.3231226-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_060634_242734_0834415F 
X-CRM114-Status: GOOD (  12.48  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 paul.kocialkowski@bootlin.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Sandy Huang <hjc@rock-chips.com>

The vop-mmu shares the irq with its matched vop but not the vpu.

Fixes: 7053e06b1422 ("arm64: dts: rockchip: add core dtsi file for PX30 SoCs")
Signed-off-by: Sandy Huang <hjc@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 39b54093d858..4f762968f75f 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1110,7 +1110,7 @@ vopl_out_lvds: endpoint@1 {
 	vopl_mmu: iommu@ff470f00 {
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff470f00 0x0 0x100>;
-		interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "vopl_mmu";
 		clocks = <&cru ACLK_VOPL>, <&cru HCLK_VOPL>;
 		clock-names = "aclk", "iface";
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

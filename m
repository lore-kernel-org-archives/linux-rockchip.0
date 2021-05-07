Return-Path: <SRS0=eK8e=KC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36434C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 09:03:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA1BD6144A
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 09:03:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DA1BD6144A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ns3uenm8Lmo86DoMf1hcXXfm9kqzGDwlQQdNw6l7Smw=; b=ShPJg3MNn2RivmhLob4E/YefS
	RB9IfcxhEXC6Gky18V76Wuc8KGKQies7Jo1ehAWKIZ70LTUvWbGAnjVFgmm2TbPjeEhUsxomUNYFo
	zeMamCO+d6qzskSoh/vwK6mdvL2yhDDfnODdL3UmSDTkkNdd3FbfE4DuWa7iOF1OR7EdtZc84sPLC
	giuQNjpQV/D+ioSmNge97o+gku8ZpZZYXoT56q1kugHXDeFCaP86/wRwEc7DxYnPzn4mPiVFlp8Jl
	z+BuIyXbH0oEvZujhfdGRbTlO3ZgfQNTdkO3igKBhZz5XPxsrJyc2qr/5kmuL65diK/yRPgYy1ahp
	35jZArP+Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lewOX-006Ynu-O6; Fri, 07 May 2021 09:03:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lewNl-006YfA-Op; Fri, 07 May 2021 09:02:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=cw3HroXgSsWpBksnBgpYOJCFov41kpyQ4fex23JLPUY=; b=2NWfl//w56vu6FbMNqqMHgZDQx
 NqwzKUZcRDwoVrIUlPrrlqtVuEKXIPwTz0YV3oZNik96hKVKMwkNpC8oMyidDgU3w5sZOeZY7UenY
 VX0tS7+RE9q7xqsAXyQIT119hnE0ZYnqvQevIYlQi18wOy9HCz5nTaSZJQASsNi8qVexUlNPsHcUe
 iDfnqHB4Pw0XyoPsBdLaK76RWmIutbi9mjtCeh/avEuW4c8jhZmSUNL5Fc+lYa4DNyiKuHyWIBFP/
 CttlhZfJb401F2Nfphg6bXFaGeMBJcPlwMdOcALzMEbEP66fvAP2FC5Rl0JVrFCIF16sARW1nraHc
 JVTlpFrA==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lewNj-006iSn-12; Fri, 07 May 2021 09:02:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id F21E21F43DC6
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 4/6] ARM: dts: rockchip: rk3036: Remove useless
 interrupt-names on IOMMU node
Date: Fri,  7 May 2021 11:02:30 +0200
Message-Id: <20210507090232.233049-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210507090232.233049-1-benjamin.gaignard@collabora.com>
References: <20210507090232.233049-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_020247_215481_E23932F8 
X-CRM114-Status: UNSURE (   8.45  )
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

Remove useless interrupt-names property for IOMMU node

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 47a787a12e55..16753dc50bf3 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -140,7 +140,6 @@ vop_mmu: iommu@10118300 {
 		compatible = "rockchip,iommu";
 		reg = <0x10118300 0x100>;
 		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "vop_mmu";
 		clocks = <&cru ACLK_LCDC>, <&cru HCLK_LCDC>;
 		clock-names = "aclk", "iface";
 		#iommu-cells = <0>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

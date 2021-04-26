Return-Path: <SRS0=k14b=JX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5859C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 02:41:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7FCE361078
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 02:41:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7FCE361078
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LUC57+10nvpkkZBE7y3LaSxjOrerG0vXbI4msEPaNEM=; b=fH7nZBidYWNfszfQgSgQaPnB1m
	rnRWTFY42pXVvheyk4uXNdqR2s4zmF0QI2d1jGnnhL82gfZcUh3FSFobIwGAwEr/Q/ofyRqtloIcd
	THnrwQ64snIfRisQrzrb0ROsSchGhiMg+92KbcjqMYkZPhZMzYV5/9NeMlKHh0PWXzuUuysvFH7KJ
	DX2hcPk/5KSKzHoA0/4varkzO+3CzR5yWsNHST3ZDyZtNmn4CHskIZzWdC7xMb1QxX/kh6CjtuLnE
	CBdW49xxER9xprbBD4URN6qS480vfKIIzUykhg/XBX7zZ/uzz1NK4NwqHATqfgqFiQeSjA4FoWJ0g
	C1iT9LCw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1larBv-006jIr-48; Mon, 26 Apr 2021 02:41:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1larBs-006jIV-SW
 for linux-rockchip@desiato.infradead.org; Mon, 26 Apr 2021 02:41:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=HWONKSeSvgBjznQbprkw9EJw28bAhQWQ4ZoLVN7M5aY=; b=yS3lLe1WGNlct7i+/lt21TYwUF
 4lAEiek9Qzt/sKTSdjrj5Y9hBVVGnDhqBLocQjPLCMCKKNn9pQ99t5kkGZFgK7sKCUt6CPRDmXbMa
 kg3vYwfvtb6UjIOQszFKEMqelwt005HXzx+fg9PMcEeYxkIiDbNowkmKdY/a6BUh+pTRjhTOwJnJR
 OpKJ4yXmrP5qVtmQhxHqyiXd8Uah7+A8RwuapzAw1Cwjol1vVtUvMYMYLsPW4NZfA7QEYJyHM3654
 raaWpuqGh8GjGROrEmmzieynhmWxHGIPJhQMk8BwPtpmrCnDf/C/t3HIo4ITe7M2xQo6DSB0lXiuz
 6ewKZvTg==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1larBq-00FhDn-AH
 for linux-rockchip@lists.infradead.org; Mon, 26 Apr 2021 02:41:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 0C5051F41EC4
From: Ezequiel Garcia <ezequiel@collabora.com>
To: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 David Wu <david.wu@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 kernel@collabora.com
Subject: [PATCH 1/3] arm64: dts: rockchip: Remove unnecessary reset in
 rk3328.dtsi
Date: Sun, 25 Apr 2021 23:41:16 -0300
Message-Id: <20210426024118.18717-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210425_194138_499259_3B4DF641 
X-CRM114-Status: UNSURE (   8.39  )
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

Rockchip DWMAC glue driver uses the phy node (phy-handle)
reset specifier, and not a "mac-phy" reset specifier.

Remove it.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 5bab61784735..3ed69ecbcf3c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -916,8 +916,8 @@ gmac2phy: ethernet@ff550000 {
 			      "mac_clk_tx", "clk_mac_ref",
 			      "aclk_mac", "pclk_mac",
 			      "clk_macphy";
-		resets = <&cru SRST_GMAC2PHY_A>, <&cru SRST_MACPHY>;
-		reset-names = "stmmaceth", "mac-phy";
+		resets = <&cru SRST_GMAC2PHY_A>;
+		reset-names = "stmmaceth";
 		phy-mode = "rmii";
 		phy-handle = <&phy>;
 		snps,txpbl = <0x4>;
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

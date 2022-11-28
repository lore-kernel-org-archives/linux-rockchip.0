Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A06EC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 18:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpSs6azkIN957rSAayTVZqyMcjjuOVKL0dACZ7oJNPk=; b=fHJQuwsPwDumPk
	uBrBsE9WJ+WNDR5bI657BSGWiCBsOZJ/nyiZw0K2Ag9NNs5BcGmU9bnb2e4/S9UYNAOXDy7/fDpLI
	f6LMFAk5+pryV/+dJr9RhxLGYoaiZIbkRD4GOhRVQaXcjixligdKq6Ou1KCIwVqlMuhzLTryZh9OP
	wVh0POe3Ufp4y0y+pQj1M/96fvQjGt5sLFwKqALwNOxMmcyn6ZA+wtbrriNvaifB4O5wmKjlE7ELU
	GAJr3wgA0XyCa0EPPZpMhRznxHcfRQCXMs0xR9YuDlVCMmPksxPzN9j1QygleLf6azNcYJhuEqSGr
	F8ziciPrqJPVEt6rZjtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozij0-003VCr-Ae; Mon, 28 Nov 2022 18:19:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi9s-003BLk-Lu; Mon, 28 Nov 2022 17:43:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F27F661306;
	Mon, 28 Nov 2022 17:43:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65EFCC433C1;
	Mon, 28 Nov 2022 17:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657387;
	bh=ug1Uc+lJIZfLFh84yhLcoR3GcnCytGp+8mmFU37YIIM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oBokbLl02nykrz1F4Myx8gmLDDCOwD88l3c9eKHMYlEByd2T5oAl51MJSFNSlXPXd
	 b9zSj1CCtkqUjqfbzXwoNtZxR/9TUVA0HtM5MeBX+nQ01ldCushWk4NM2aI9nbuUXe
	 mkx4wue4tVZ3W5koKCVHvAbsvETuOvq4OZ8DTZqzRkZXEvQntdigRkMRSZ8+B6Rsz8
	 6rfAZCFDqx6sDZHIrX8AxALgYfbmVn3C/TbbZuNlUrqtJO9pB/dBIpNp5KpLA7E5CJ
	 LuKx9Lk6lhPGqd6fEvCnZEjxlS7Y0/+1XCqdN3zooFOfOarf9bctAwz8Pvr7Ty3W+R
	 ga9r5ETTp4oGA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 2/9] ARM: dts: rockchip: fix ir-receiver node names
Date: Mon, 28 Nov 2022 12:42:55 -0500
Message-Id: <20221128174303.1443008-2-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128174303.1443008-1-sashal@kernel.org>
References: <20221128174303.1443008-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_094308_845057_C2BB6B60 
X-CRM114-Status: GOOD (  11.87  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit dd847fe34cdf1e89afed1af24986359f13082bfb ]

Fix ir-receiver node names on Rockchip boards,
so that they match with regex: '^ir(-receiver)?(@[a-f0-9]+)?$'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/ea5af279-f44c-afea-023d-bb37f5a0d58d@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3188-radxarock.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188-radxarock.dts b/arch/arm/boot/dts/rk3188-radxarock.dts
index 541a798d3d20..3844fbd84ba7 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -104,7 +104,7 @@ spdif_out: spdif-out {
 		#sound-dai-cells = <0>;
 	};
 
-	ir_recv: gpio-ir-receiver {
+	ir_recv: ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

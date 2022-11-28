Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE9F3C4167D
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 17:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzRAKtAR5vBSIRS9wxJksWtlN+vuYYZpaWt1JguBTvQ=; b=4lnGy0viJ3wDeA
	RuKvtM9zsPkHx0BNPYt1bHUB2twzSGJLZQuSMqUNvypsYMDJBS9LsBsLxOuQmg3OUF60/Od8zeZti
	Iz8iohsJqMfQraMZ9Zr1iU4buNicpm0en4V1UX5LM7gH/FY1+tiX2pRqqNk+DSBBsaAqsYLm98PMj
	0fIYjSg/NkIPNYroezl84tXbzyv3PowJ9lsdPb+siAzcBF7SP0CvUKTWiafrp2eOYW00Yli6wkkGq
	dzsvvCQZRs4wLwZ+39gWrpsAtXQKCOLvrt6DzNjW9vSNxdkkqO9mM1V6AaVyIYJDQVugTNLxi4YkJ
	6qmjiHVblDfNAyyrMNAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oziBD-003C6h-AG; Mon, 28 Nov 2022 17:44:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi5D-0038UN-2h; Mon, 28 Nov 2022 17:38:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 62809612FB;
	Mon, 28 Nov 2022 17:38:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4F51C43470;
	Mon, 28 Nov 2022 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657097;
	bh=ua/4Crys1Ezij36FB126JHzOPkz+BEQ0LMOiOr3Zs/k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jMkr1+i1yPrlq/yjjJWVWGjc7Ilx/iGPyh1aS/bsx5cE7xrovkLSX0lrRjzzKnhXu
	 HcaezORsNsMjvfEWChSjIqN4NFs1AWL5TCj+pNayZ2OLxiZxkfgVNQeuhq0QPaeoGX
	 IL1AOv8vAcfhM+H2Rl6PmqAcdm8WRjoM/o5FFu7KD0O7xfOYd6fUIAv9E0/SZ0JkVa
	 OpVShJGhwPIJxVl231igB8WGnlncIOhLPAeMSjRV7nPAgd+hFGEBqndrayHUpqQhrV
	 aIPJBUnSz3Cj9V0q2UlQoD0BLtj/JEEf70zEF7IjXIyvDyT0Vgm42gmUyRDMlrfyhQ
	 0/P5PX4/MS/Gg==
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
Subject: [PATCH AUTOSEL 6.0 10/39] ARM: dts: rockchip: fix ir-receiver node names
Date: Mon, 28 Nov 2022 12:35:50 -0500
Message-Id: <20221128173642.1441232-10-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128173642.1441232-1-sashal@kernel.org>
References: <20221128173642.1441232-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_093819_235631_8BA9C169 
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
index a9ed3cd2c2da..239d2ec37fdc 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -71,7 +71,7 @@ spdif_out: spdif-out {
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7047AC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 18:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSjKftaRGGMgJJnCM8+yFTMoJhOd+3rsYkRY69KrAD8=; b=Ehf0de2LJ2rPmL
	C+Ugp/sVHb5zMciybyWo2VbvcNmpb7EmY8QVS+7/6Wd+WLQ+dYB/37iS0WpyDOHUPCCUVDVJp6ouC
	ieBBIue3GXkqyPGAgSCYDxLAlr9zMek1wNVKj1KUCsm6SgXhK6CM/VlC/7gQINyDbUzXibEl19pc6
	PPOSbx29msuBTvyUSczVOVVK07k6lv4GJFdKu9FGINSFSkAc4UCY2b+7Xmx3QHKInhG7hkjcu+ETF
	YdX97QSH9gu3e4TSF9OSt26+jj/b1pOYStIG1VKEWMSXscJczcXnK7m0gHEejH0x446g5feAeWPYn
	jsJdIQOWFC0NGRqhttyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oziSn-003M5p-NW; Mon, 28 Nov 2022 18:02:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozi8E-003AQQ-NH; Mon, 28 Nov 2022 17:41:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 34D5E612ED;
	Mon, 28 Nov 2022 17:41:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 199F8C433D6;
	Mon, 28 Nov 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669657286;
	bh=omV9gOWDMSbqKUYZDzNaiOfBi3Px658B3WX5l37rH8E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qB/84NA6eEtSWmjJiLjBJoprCaWk7qgjUrvZZPPOPVI53XFvxacdfGWsPPkliZj0H
	 tpZRPNsVoqWiHWKcwRuj4WkVAsOK4AOkzGB4uiwaGFUO1bq+zwAyN9LvXYPHXpTA61
	 uBYoZCxx2nbKL6HWFWqL66v6NIsn638kJrDBiv2snKb8yOMCUqIZmLUOcOODIM0z0b
	 EGeas0iAz/xZX6tX46EcjqVZ+J9xPSfOM7WphtAMNG+7on4TTN72oPUaEvkXaAuZn5
	 6xrqr26nEW2acvxLKly6MZKZO2d6imQwC38mwaAV5twcLvAfVVSVLdOOUpT0d/9Cal
	 PQwrsAiAQjPlA==
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
Subject: [PATCH AUTOSEL 5.10 03/19] ARM: dts: rockchip: fix ir-receiver node names
Date: Mon, 28 Nov 2022 12:41:03 -0500
Message-Id: <20221128174120.1442235-3-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128174120.1442235-1-sashal@kernel.org>
References: <20221128174120.1442235-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_094126_832320_A6F5BA71 
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
index b0fef82c0a71..39b913f8d701 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -67,7 +67,7 @@ spdif_out: spdif-out {
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58BAAC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olnztxZ2rAml/GGI0a947nVHr2uUrg7XyVHDjUaxbe8=; b=ImpHIryvvE0ozb
	N9CDvyZy9lsGk32CPkxJp09i8Bwq1VAx25rL5XpnSGxcDBl1S7joJbu3SAJN1pzALyrJ3gJBmX/P2
	o4K9DB9rUIUYhpqShdyR+aTET6m6lB3+WLPG43gBciNbMXBbxfK894Iz/bTTTaGWBGitckPUnQ+Qf
	IB1HfYrGlesCemjqrdCpkib2f2yLd+1udgyLykj9t4pxs7JQo3CPDe/05SdD6hI2cXtAfxsTEcb9V
	xm0Jc/BCB0VYkrA5+gMugqqyNKORQMJFKoEvfLd0zz4XijG/8UJT80U38nWqCwFVxHD5nf8uG5g24
	yZhdlel1vnfCB63tm1hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRzER-009RZf-PM; Wed, 09 Mar 2022 16:32:11 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRz4z-009MZ9-G5; Wed, 09 Mar 2022 16:22:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0DCECB82212;
 Wed,  9 Mar 2022 16:22:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5544EC340E8;
 Wed,  9 Mar 2022 16:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646842942;
 bh=f+/LjIyPWDuCwlVHkTax26XwIURY3UIYesjueyn5gTI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pPbOVTW8OYEvqxPq0KDfS4x+8t6nEpRVJDL/YWZy4x5WB5Hj0D3ACOEg7yY1vViqu
 RiVEWfiTGStuHDUzGWTVCII1tx00eLJe1XLlBKxRuTiGcvzsP89fBI7JhArVpxH7Cy
 KZ40HJR81JRQ6ATXsmuzHtx1mJHwfBH1vPHx8t8N6R67dXfzWUOqUks0bR1aRKD108
 BZ3old2TMlCgJi/wW1QEm3BO/rCXauVwU338AfBVNaV9K6azGVAkVAJN2jr7byYK6+
 /ts7DT69yZ+TMmTqFlFUC3uqloxsEUz1hM9HRG4Bsh/J2jFmZugVIV96dH0+ecw1Dx
 UWAPi9yzJCctw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, robh+dt@kernel.org, jbx6244@gmail.com,
 helen.koike@collabora.com, thierry.reding@gmail.com,
 punitagrawal@gmail.com, knaerzche@gmail.com, briannorris@chromium.org,
 zhangqing@rock-chips.com, daniel.lezcano@linaro.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 04/20] arm64: dts: rockchip: reorder rk3399 hdmi
 clocks
Date: Wed,  9 Mar 2022 11:21:42 -0500
Message-Id: <20220309162158.136467-4-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309162158.136467-1-sashal@kernel.org>
References: <20220309162158.136467-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_082225_721843_DF948F9A 
X-CRM114-Status: GOOD (  11.95  )
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

From: Sascha Hauer <s.hauer@pengutronix.de>

[ Upstream commit 2e8a8b5955a000cc655f7e368670518cbb77fe58 ]

The binding specifies the clock order to "cec", "grf", "vpll". Reorder
the clocks accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Link: https://lore.kernel.org/r/20220126145549.617165-19-s.hauer@pengutronix.de
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 4b6065dbba55..52ba4d07e771 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1770,10 +1770,10 @@ hdmi: hdmi@ff940000 {
 		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru PCLK_HDMI_CTRL>,
 			 <&cru SCLK_HDMI_SFR>,
-			 <&cru PLL_VPLL>,
+			 <&cru SCLK_HDMI_CEC>,
 			 <&cru PCLK_VIO_GRF>,
-			 <&cru SCLK_HDMI_CEC>;
-		clock-names = "iahb", "isfr", "vpll", "grf", "cec";
+			 <&cru PLL_VPLL>;
+		clock-names = "iahb", "isfr", "cec", "grf", "vpll";
 		power-domains = <&power RK3399_PD_HDCP>;
 		reg-io-width = <4>;
 		rockchip,grf = <&grf>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

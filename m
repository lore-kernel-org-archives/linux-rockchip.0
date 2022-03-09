Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97A91C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/og2aI7cmO/FUV1rJoCMc72E2iNmFRojuPW64Av8Yjw=; b=EBI/0oQn24PiWB
	VAToPdkZL1XSPwsvCpM4pLqFYIf8h9zzmwY8oDq+XA/Ox6EjvTMKoUFytbTwZnJ0RmIOSuWkelxoC
	wCRXOVtD+/OHcYk/L7b1Tu0jcI6fP0+ODvtWvDOJqN4JOOFgkxSdeFks+VWtsXr5mXAqL7pdRI/1p
	Q3BHEUazJbMwSJLDWJls0GnOGTJWic17F5XKD1mcNKnLdtsEEaJPe/yGG92O8rDuRLztGdpFJKkHu
	9BDIUGbQWlV1cbfx1G+jmyED+2vsf26r4zBHCl0t2pNeGOl2m0pvrLrV3b/RO4R64sd9i1M4nKkOF
	0g4B1Q4orsB4tFOlEZhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRzIK-009TeK-Fw; Wed, 09 Mar 2022 16:36:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRz6Y-009NX2-El; Wed, 09 Mar 2022 16:24:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A3D846193B;
 Wed,  9 Mar 2022 16:24:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AF9CC340E8;
 Wed,  9 Mar 2022 16:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646843039;
 bh=aRujg7DCfCwhUQUnKt+v2yJpA3gL/esTSYaKgC2Yn6A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=giR57gYHXZ/dHIWrDA6F2YuFk2FfrHibYfIpMTYjLXJwIII3ZXbg55QHilb7Dcsi9
 dprhduAAtIzFHcYJnOWkqHWclhlgDIV23jL20UR/TarRwxdJuC3AbvvpcEcKq8j2Rz
 igpNlj5u4zBMJVvXhS9l0BsZOzuN6mEF72uvMv8jGn2fvbj3VxLBF7c2T7YQxNlrTt
 k+1z499y9+goqlC3SmJSjUsilk7xd0vDv2w86PfrRq12NEDGHHBcBzWHw3YqnBimuS
 I/uGRCiRBRMpYdgntqwXGmw8u3oGeN1vyWVo05QHfBZCUpMy4dcq03Mn/dDC309dAM
 8j9E8i1DTmIPw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, robh+dt@kernel.org, jbx6244@gmail.com,
 helen.koike@collabora.com, knaerzche@gmail.com, zhangqing@rock-chips.com,
 briannorris@chromium.org, daniel.lezcano@linaro.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.4 04/19] arm64: dts: rockchip: reorder rk3399 hdmi
 clocks
Date: Wed,  9 Mar 2022 11:23:21 -0500
Message-Id: <20220309162337.136773-4-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309162337.136773-1-sashal@kernel.org>
References: <20220309162337.136773-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_082402_647546_F88F184B 
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
index 750dad0d1740..95942d917de5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1746,10 +1746,10 @@ hdmi: hdmi@ff940000 {
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

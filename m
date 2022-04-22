Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C043C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 07:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cOYvVHtNZyGYE9OPQsf/gLYHaA+LpxvkweP0ooXpww=; b=cWqxXC/I6DGbVo
	Cfi4t4wBzEvxFPf5/97h6+PWa3DSJwJraoRgzVPU2joEm/+ZhdKxNH+I0K6Uubdd59C4sskeEEt6N
	lpM9I+hW77/hzyla9uiYoYUGx5KE1/opNOc1hWh4KYPft1B8MCtZctZ9S5gC+WBfVelsAZlW3L3hH
	Pps81JNg2FMCFx41+iPi8qX0bZxlYAxMMGkQ82erOOGI9byZAxuit2dg8pmzDG+XSkwnclmcqiyGi
	Cp/k6A+JexFjVYoZvMvO4aRq+tDOym9WNpjo7d4u3FG9f5KqWFppPnMp5ELIk0mPnuSOcYfI9a0Bt
	c7fRwdmo/qCL6tB1Qwfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhnox-00Grkg-Ic; Fri, 22 Apr 2022 07:35:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhniy-00GoI4-CP
 for linux-rockchip@bombadil.infradead.org; Fri, 22 Apr 2022 07:29:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=GuoX5iKRAfhQRIaVAkXZxhEanzVk9stBeKLFe/Qv/Bs=; b=nMe7YuiI/BAsuM1HNICLffIjYl
 Vz3jtwChQ5GawEyoMtH3oekEaVaeQFcPJDsSEJI3zq9LNGIxEewAM0l4RYROdjFQtk5nXC7PmChKX
 0vdwZTg/sUkad6JOZ+sX2wTvioG28WW0lyNLDPrbkpYECLTItmZb5Cl0S18eZJi+k+GYXWLqNW+fj
 N8zSk3hlqtbFil4qL7PAPYVVUHZXRrSKCgZHT+7PzxKxK4RZeNjJkYET5ZPA9VOM4zll9i9QDXErI
 fB0StPBLS4d5Gkg0nAn6V6wTG22H3QEm6jcYfksVnesp56hT33dHkq7P4bUrmG8xxz2zvAomzFOQH
 vQgNVAXw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhnit-007dDH-Qh
 for linux-rockchip@lists.infradead.org; Fri, 22 Apr 2022 07:29:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nhnii-0008K3-S7; Fri, 22 Apr 2022 09:28:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nhnig-004Vy3-6r; Fri, 22 Apr 2022 09:28:44 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nhnid-009ITf-2W; Fri, 22 Apr 2022 09:28:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v11 06/24] arm64: dts: rockchip: rk3399: rename HDMI ref clock
 to 'ref'
Date: Fri, 22 Apr 2022 09:28:23 +0200
Message-Id: <20220422072841.2206452-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220422072841.2206452-1-s.hauer@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_082900_239134_68CBF711 
X-CRM114-Status: GOOD (  12.08  )
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

The reference clock for the HDMI controller has been renamed to 'ref',
the previous 'vpll' name is only left for compatibility in the driver.
Rename the clock to the new name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 080457a68e3c7..d0add619b0d22 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1884,7 +1884,7 @@ hdmi: hdmi@ff940000 {
 			 <&cru SCLK_HDMI_CEC>,
 			 <&cru PCLK_VIO_GRF>,
 			 <&cru PLL_VPLL>;
-		clock-names = "iahb", "isfr", "cec", "grf", "vpll";
+		clock-names = "iahb", "isfr", "cec", "grf", "ref";
 		power-domains = <&power RK3399_PD_HDCP>;
 		reg-io-width = <4>;
 		rockchip,grf = <&grf>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

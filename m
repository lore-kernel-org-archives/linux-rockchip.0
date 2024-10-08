Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1863CF0423
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyJHhWaU54A+GoA4LqKSJaf6OuUNtz7rdfwc0VOhOTQ=; b=nv23lsJ/1VDIXZ
	i6QKTaOduaUzCXOkP6DxpNGXU2w9IZAWzFnFxMjHwSbvexBLAb2mlOf/u34lwGI96+iYK77ytx9yp
	w9Hm1x9VLgxzX0NviTuLgRVJ58A0MChWQRoGs/fcXNwHdYMbI+HK6xcNi4kL39BVAfQ3WjxgzTQdr
	kZZfcJr48Y4ILuoojQtrLu6ClKmqwg/FQS2QLZ6o3X4ZuKjFvNq/VFfpUnt0Ac9Jgd2jhxS+vO0nP
	pqAeF+Wq6wAGYUF3AIr4Z5mjXO2chi/gm7xlUfs7rsm8ebpWfkkS1DYpxddGbvezzLP2XBOq3rtYW
	NOD10/e8FLTj37GBwTYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syHDw-0000000776n-2SkM;
	Tue, 08 Oct 2024 20:54:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH0u-000000075N8-2zhc;
	Tue, 08 Oct 2024 20:41:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=1Ss5v3ULHCunVrXhSZIkIP3MNlCeEJXebPB4aKeixYg=; b=M8u38ivjJa5SgkMHeQ87g9oobd
	35EWhNuyBA6J8ORwC2Z5xqmPXwt49xG7IuvJOPz1+Un8Ov70uGpXpW32fuJYORzgi3cqpC8jFif3Y
	+q0PtIfAmEOneHWGkPiO4Uqdfz9KQJZO7ZFvCCuKRLoO8XII0+SH+i9jKZyLISuT4zg//K68AebN2
	XO95qG5U7Y45BUfJNvAqCwpte6zHXzIEqeKybOOr+5WhtjGtscoFzDTHBG7+nxXCzf9XYlneSgARR
	CEIuD6gSk6fYIATOi2JWuZmozNQI8c3HHvspmtaWe8fyYWFC+gRci0DiMcU1mDdAfllcr462u1fBo
	Z7ahKUAQ==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzz-0007ua-5e; Tue, 08 Oct 2024 22:40:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Martijn Braam <martijn@brixit.nl>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Ondrej Jirman <megi@xff.cz>
Subject: [PATCH v2 10/14] arm64: dts: rockchip: remove orphaned pinctrl-names from pinephone pro
Date: Tue,  8 Oct 2024 22:39:36 +0200
Message-ID: <20241008203940.2573684-11-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_134100_773070_9C296FD5 
X-CRM114-Status: GOOD (  10.95  )
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

The patch adding display support for the pinephone pro introduced two
regulators that contain pinctrl-names props but no pinctrl-assignments.

Looks like someone forgot the pinctrl settings, so remove the orphans
for now, until that changes.

Fixes: 3e987e1f22b9 ("arm64: dts: rockchip: Add internal display support to rk3399-pinephone-pro")
Cc: Martijn Braam <martijn@brixit.nl>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Cc: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 1a44582a49fb..09a016ea8c76 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -166,7 +166,6 @@ vcc1v8_lcd: vcc1v8-lcd {
 		regulator-max-microvolt = <1800000>;
 		vin-supply = <&vcc3v3_sys>;
 		gpio = <&gpio3 RK_PA5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
 	};
 
 	/* MIPI DSI panel 2.8v supply */
@@ -178,7 +177,6 @@ vcc2v8_lcd: vcc2v8-lcd {
 		regulator-max-microvolt = <2800000>;
 		vin-supply = <&vcc3v3_sys>;
 		gpio = <&gpio3 RK_PA1 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
 	};
 
 	vibrator {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

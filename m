Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0A45CF0421
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/0C5cj3K+9LpPytotaCVP/tEPz9kKAupnbTHW/JPmM=; b=TwM0aHaepsREvG
	t3+gTCdmASvG3L2QMRRaqby4NaAy6iGF5n55XAPWljC6t2aj+vSLqK/SfL0DtTn6Uc9MhSnzGkStj
	cKL3f1GsZ3uYg61Q0DRmzyf/cOM1uG15vz2WyktAp3WQu69vAEJ5v6+XgaYPOvqXz2glN3CW4Po3H
	Tq7fmW1yLsAYW9b+24Xuy3uaAQeiBe+RsDBxj2o6lAEUNCnH1kl0Z9KnEOFQVFbrKneVhypxZNrhj
	173qHhJFD42M3Gt9OpDJs9tYi+qeWotlYnorWpWSFawmgYhsjUpu0rHMUp11FjllO+IozVs4V4e+D
	cqLbbJsJKwJHqZybJ+dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syHBN-000000076kF-2Xiy;
	Tue, 08 Oct 2024 20:51:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH0O-000000075Jj-0qi9;
	Tue, 08 Oct 2024 20:40:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=kbHRuisZyrs8FwUsSu90NxL13w/ixqtP/x+s/iP2Gds=; b=V3AG0I/oRGdy4wiZdq6TlcbXnO
	c4sLFN/0z61kWE9/W0Gg8XBHnMfxo/uej7jmpYJtXnq07T+qKGvK5go3AyubDO0/e2GXZTM58ZaQT
	9NqH7DB3bGDOKDcWe3qHTITQt8g3PuE4UFRfPaucdaym0iZMRMwmpqaYTymnPIvLfnesYKpdZdAly
	OPvi+masElahz4+MKpkm/srQxxYpVDOH9wKM1j6fGqJ+g595wGUz0FIsFjYzIcaLIZIc52OCL5tmU
	MzP8kNNa2CdCbvGnUw9kK19dmTKNNgNU13JLgKeedeQjVtEgsd3SgMyaja/JOF5fTnAwmx3+e58Bz
	V3ROAfFQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH06-00000004gem-3Lpk;
	Tue, 08 Oct 2024 20:40:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=kbHRuisZyrs8FwUsSu90NxL13w/ixqtP/x+s/iP2Gds=; b=HO2z7P7te2LlOPQDTUNm2sOiS0
	ohQxYqIRHUnzUDJUa7BLcVLMMhdthbTmn4w2QybkyGoFLkMese5KxQnPr/Iz7W+TuV2iLfHe1PNYY
	i+CsEEIngdYImpIwK8sAd4oVNzWilrGA9NHU9BRoUWCzSOQMp4RdbAk/vPorj8M4yUYUrwZH41eYw
	nFhIoslajt/4G0i/qmbidLy59uNpM7ShZ+0cC5F53Y7iM3OcEZnyCQ+YO1IyEQXnIJ/peEcjgaUrv
	v7lX0SD6bOosGXtPkmpg8C/fAzMfYwUAj1cMGrbYQI1FAfLbFVTCxPM3ahNc8zWAJhPmadiD8lr8d
	XOmjVxQw==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzy-0007ua-6k; Tue, 08 Oct 2024 22:40:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 07/14] arm64: dts: rockchip: Fix LED triggers on rk3308-roc-cc
Date: Tue,  8 Oct 2024 22:39:33 +0200
Message-ID: <20241008203940.2573684-8-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_214015_165362_21F5CAEB 
X-CRM114-Status: GOOD (  12.96  )
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

There are two LEDs on the board, power and user events.
Currently both are assigned undocumented IR(-remote)
triggers that are probably only part of the vendor-kernel.

To make dtbs check happier, assign the power-led to a generic
default-on trigger and the user led to the documented rc-feedback
trigger that should mostly match its current usage.

Fixes: 4403e1237be3 ("arm64: dts: rockchip: Add devicetree for board roc-rk3308-cc")
Cc: Andy Yan <andy.yan@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index 9232357f4fec..d9e191ad1d77 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -36,14 +36,14 @@ leds {
 
 		power_led: led-0 {
 			label = "firefly:red:power";
-			linux,default-trigger = "ir-power-click";
+			linux,default-trigger = "default-on";
 			default-state = "on";
 			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 		};
 
 		user_led: led-1 {
 			label = "firefly:blue:user";
-			linux,default-trigger = "ir-user-click";
+			linux,default-trigger = "rc-feedback";
 			default-state = "off";
 			gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_HIGH>;
 		};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1531C88E40
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2026 13:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkIfkXJGwRChjiuDwNAB8Op4RGi1uj2KtmyO/hkt9aM=; b=NQKeby4gZgkJ8x
	WDI+58oe4xp9Op/K0DgHcolEwKTYJwfzqrgZEbWqSKAU6BMm9zFL6ArZNXUYx67QXmqwfQ6r4UHsw
	zXe0tFK4Q4fgjc2pU27YqUVOhWGtQzgwtgyAk8P5N84XGSH4ILIqCp1dubq+2sSynT3K0Nmewm5X8
	MEC8vbUtR3p1zxOfjXU8xbMYDWjvdzRW5iIt9MquRD5kEEvNZx4I+s/VjKkVwc5woNOwMZvmaJmXB
	f0q+9uE3dHbCDtD+TxgGXMEq2l8RabrDMfKzB+panx6RnvReTkpXkj7vazZ/RpkXZygZG3I7EpTxu
	Fpu1uTVFa8jMFRrdqhmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ewY-0000000EUqQ-1Y4t;
	Thu, 10 Sep 2026 13:35:58 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ewK-0000000EUOV-3Ite;
	Thu, 10 Sep 2026 13:35:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789047342;
	bh=nnQom02Ih1qwesbG7H+t6ImlBeovlhLhrwVE7x/9+zc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=iSV8ptihFp7WCxm7ch7BNjgbQ3h09TdIlCvHTN7EjvyL/qBbmS1B4V3xf2ZC+R/Oi
	 mVV9fVchze+fEFoCBkAPzGqwQ/6xVGGkLRB/j7WJQSU3DQbqb0fizFTc4ml3U2tI6W
	 btLggQMJ54F1EZEDWRYJvNb95V0iscnLkBnMMliTPSKaGBmQld4WT6fEZPI1VOI2/Y
	 1/SAsmwXZMBgwMMkFWltScA+Y7+bJ9sN57GAmUS1a23zDQBmpg3Cj2t3EVFW+rT/2v
	 /F5HYwB+BqW9kTbYoLbm4uS7OZ++KB+tZwp9NOCAeFpjshqmvW/FEDeP+59QV+cMN8
	 kdtxk43r0ZzXg==
Received: from [192.168.0.15] (unknown [100.64.0.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D6A4517E0D81;
	Thu, 10 Sep 2026 15:35:40 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
Date: Thu, 10 Sep 2026 09:34:49 -0400
Subject: [PATCH v2 7/8] arm64: dts: rockchip: Rename rk3576 HDMI audio card
MIME-Version: 1.0
Message-Id: <20260910-fix-rockchip-hdmi-audio-names-v2-7-1396a6168e20@collabora.com>
References: <20260910-fix-rockchip-hdmi-audio-names-v2-0-1396a6168e20@collabora.com>
In-Reply-To: <20260910-fix-rockchip-hdmi-audio-names-v2-0-1396a6168e20@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, Alex Bee <knaerzche@gmail.com>, 
 Christian Hewitt <christianshewitt@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 David Summers <beagleboard@davidjohnsummers.uk>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_063544_990799_8C878537 
X-CRM114-Status: GOOD (  11.58  )
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

Rename the card from "HDMI" to "RK3576 HDMI" so it identifies the SoC
in user-visible ALSA fields and no longer collides with the identical
"HDMI" string used by other Rockchip SoCs.

Fixes: 7f1561d82e3d3 ("arm64: dts: rockchip: Add RK3576 HDMI audio")
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index b0c0d3c8b1b1..ca9cbf035265 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -410,7 +410,7 @@ scmi_clk: protocol@14 {
 
 	hdmi_sound: hdmi-sound {
 		compatible = "simple-audio-card";
-		simple-audio-card,name = "HDMI";
+		simple-audio-card,name = "RK3576 HDMI";
 		simple-audio-card,format = "i2s";
 		simple-audio-card,mclk-fs = <256>;
 		status = "disabled";

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

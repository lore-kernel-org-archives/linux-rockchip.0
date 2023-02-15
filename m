Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D2BCC636CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 20:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRr6K1JUyw1tEdzGfO0SL7ThThq6DjKpssH6/5XC8ck=; b=LF/QBefoAFP9z0
	4cEGTMm3WMDX1f0w+Ygw3p1uJofd4oSwMFXNWP5EG2saDviHvzNJ6VtBd5PWr9nDLcZ/9ple73Z7I
	KeHwIC65iV9KwSjQurD+redenjTGwgcmUB1dJ30neLWTxkPH5A2sVuOXIx09N988DBzv2/J96VqYO
	fGnLN5aS1gz8EAQOmoRucI4hDryfCgTmnYG5NbExzrQJSAtQnifYUll518xHPcsGxNJjZ0pyvXiMV
	BVz0/fTJsm1Jwju61w8tL0LQF+Z80kIlYAzYChkHQPxS5otjyz0cIiWAyLTca4lAm1U2DY/hpUGtr
	TLozR4AgCO8WP95qAqBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOgb-007Dfk-ME; Wed, 15 Feb 2023 20:47:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOfA-007CoG-4U; Wed, 15 Feb 2023 20:46:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8477261D77;
	Wed, 15 Feb 2023 20:45:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08E10C4339B;
	Wed, 15 Feb 2023 20:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676493959;
	bh=8J7t5UF5+5NksKzsY0+cwQgm8IdQtufSH5utrjhKLpw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AQp6mcKVgm99y9UDJ2mPpt9TVhP8Y4moCFaq1ikP0aVwTBV8T6sylQYYSzSallJXw
	 A1mks/XPas5QP1eAbizIEA2vqifiDYD35b9uwS77/Zs1zsUqovtPD4YXAWpY9G06jY
	 p7Y0gcACKcZt35yRdARY1ok7g2w+8eYwUl92/NX2m7uBfc69mtrfxSEtEqQ3Z66h8K
	 nycnH0Qw6OqtyLcBWGzvJwj9UQLqSx/MlOQJoZcEiZ4FfmmXuJyebFFHVcFfp5OV9D
	 W3ne9gZa4PZUYdsOVBFh72CCsw6ZqA71BNNJzRvRiqVsNNmYBR44YxjZeiK6UrbUls
	 bk88nYevQUcaA==
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
Subject: [PATCH AUTOSEL 6.1 04/24] ARM: dts: rockchip: add power-domains property to dp node on rk3288
Date: Wed, 15 Feb 2023 15:45:27 -0500
Message-Id: <20230215204547.2760761-4-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230215204547.2760761-1-sashal@kernel.org>
References: <20230215204547.2760761-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_124600_239560_50C81DEB 
X-CRM114-Status: GOOD (  10.68  )
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

[ Upstream commit 80422339a75088322b4d3884bd12fa0fe5d11050 ]

The clocks in the Rockchip rk3288 DisplayPort node are
included in the power-domain@RK3288_PD_VIO logic, but the
power-domains property in the dp node is missing, so fix it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/dab85bfb-9f55-86a1-5cd5-7388c43e0ec5@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3288.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 487b0e03d4b43..2ca76b69add78 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1181,6 +1181,7 @@ edp: dp@ff970000 {
 		clock-names = "dp", "pclk";
 		phys = <&edp_phy>;
 		phy-names = "dp";
+		power-domains = <&power RK3288_PD_VIO>;
 		resets = <&cru SRST_EDP>;
 		reset-names = "dp";
 		rockchip,grf = <&grf>;
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

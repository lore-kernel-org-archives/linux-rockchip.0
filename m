Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8591AE77180
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 10:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFYlLMx5gHhd1jNz2V6jRhTZxO3nBMn5Azm2nhlHwjA=; b=y2tJhkJqcSG/n9
	Pg4jKnVUt571pIcndMXe7zbGMR5gIiX24kppKtVYoyOcCe2gSvRtvWhU20OEAyMo1UNFmI7RTP0zR
	UZW1jJoXIfRV7eK2vqDYjl7G99BghVg71DDcngvXgv2l5/7CFRPGcUuTsnOfpdvhS6qx24d5vLnCz
	OnZZJE+YNCXu4WYj/LcUvjr0v+lky6NjeuDcQtcovEKFXTd7D1zBz3ZfsLE21tus1BqwrTNDJE4i8
	EzofBvJL7XwZ4BxFcqWaAe5ztUMKZPeBf28wGJDpqLs+HY5mz94d3EL7J5IbLjK/47Ax7aI5zMTRo
	zK6Eg9MXicObgum9reww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLJrN-0000000EZ0O-3wfU;
	Wed, 11 Dec 2024 10:22:25 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLJki-0000000EXaJ-397B;
	Wed, 11 Dec 2024 10:15:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733912131;
	bh=hessQfIJrJwj7BggoR6tvCjhK3ojBPXzkTn2YrM9Boc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=deZCx1L/6GVRi5qf05X08/Szk3Opa8lESlzJN1F5kSPq6e0CztF47VYvlNzgzOnXs
	 ObX2dHAjvpGGxgfiqqNjmU92RZh1d6ujkpiCyZX8sMF2zJ+tMV9X1GnYTaYmu8ggk4
	 A1QcKjEqeobV5jARkrmXeXARvtheTvJotZK0VKyQXcm7mMdGJzYIK8f1vGrxoMvfYb
	 uMt9nMM8s8owhbf9vHAHA3+POXj9Jgl/iZdkalg5+ehjKSGM8p2AfIrpWdmwANShds
	 psQvrD04B8ko7oprwJowUMZND3+AAgCCQbisf+KTURKJ89KbqZqbVzR+92eKoIGeMj
	 PYu0QpONCRoSA==
Received: from localhost (unknown [188.27.48.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DD47E17E360F;
	Wed, 11 Dec 2024 11:15:30 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 11 Dec 2024 12:15:09 +0200
Subject: [PATCH v2 5/5] arm64: dts: rockchip: Add HDMI0 PHY PLL clock
 source to VOP2 on RK3588
MIME-Version: 1.0
Message-Id: <20241211-vop2-hdmi0-disp-modes-v2-5-471cf5001e45@collabora.com>
References: <20241211-vop2-hdmi0-disp-modes-v2-0-471cf5001e45@collabora.com>
In-Reply-To: <20241211-vop2-hdmi0-disp-modes-v2-0-471cf5001e45@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 FUKAUMI Naoki <naoki@radxa.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_021532_976161_27CE8678 
X-CRM114-Status: GOOD (  10.58  )
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

VOP2 on RK3588 is able to use the HDMI PHY PLL as an alternative and
more accurate pixel clock source to improve handling of display modes up
to 4K@60Hz on video ports 0, 1 and 2.

For now only HDMI0 output is supported, hence add the related PLL clock.

Tested-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 22462e86f48027ab7c5e270f2fa04df7afcc1d24..d07be2a81f28b4cbfe314992c662d8cfb3d3d344 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1262,14 +1262,16 @@ vop: vop@fdd90000 {
 			 <&cru DCLK_VOP1>,
 			 <&cru DCLK_VOP2>,
 			 <&cru DCLK_VOP3>,
-			 <&cru PCLK_VOP_ROOT>;
+			 <&cru PCLK_VOP_ROOT>,
+			 <&hdptxphy_hdmi0>;
 		clock-names = "aclk",
 			      "hclk",
 			      "dclk_vp0",
 			      "dclk_vp1",
 			      "dclk_vp2",
 			      "dclk_vp3",
-			      "pclk_vop";
+			      "pclk_vop",
+			      "pll_hdmiphy0";
 		iommus = <&vop_mmu>;
 		power-domains = <&power RK3588_PD_VOP>;
 		rockchip,grf = <&sys_grf>;

-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

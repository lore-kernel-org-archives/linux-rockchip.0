Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6AD2C83026
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 19:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/RIvJLtSeTAF6aXJVFyG7LpJBfSY2yTeQxejyDEhSRQ=; b=btHVThXmyyoL0d
	wngIN3Wp5RLzi6rro+JX02weBojjVLupbw2ppZsmZUBX/FSmfqQFte9g6lig3yMx9qxGKNHtTuE2C
	kp841MPt0y3wQGK0QhEo07Yft4Hsj6jTCUwkDrpmhoBvq0hz26acDwNzk9GQ3ox2F70oGUzE0G4Zi
	gx+HvHEV3hXIJFaqybMB1pdxRDyENSp05Ck/tPPL8kDc61/zKG/TEwUpGYEArOjCvfVV+6QehUFRt
	nCSy05G2l/kwk+92t1Lf6lqpcv/FO2IEAGBuCxnuZeYpAg8G8bdxFGtM7kgqguq95bP0DFgEn0S1M
	9NhID6Rk4SAL1A1VSx1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTnHG-00000003skD-1QeZ;
	Mon, 23 Jun 2025 19:56:26 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTjjx-00000003Med-2kBi;
	Mon, 23 Jun 2025 16:09:51 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750694949; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Tvq9SVd7ARPBWa3fMmWRP/NQGUB60EVkqslAFKjahvQebS4TyVJ0TbMc8GzLcHmDRgZ8nqISx1UelNRG7S0ZMV2WtQj0GNFESik+efS0e8UIvLIQl1A+RSa2Uj4SJ1uWxR95bm/kMOX42W4ic8OWqxcV/m6Zwh+cl8tm5JzkVGE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750694949; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=zZ4j6JHoVwtwIfIGG4M1yLQOntpYwXzvw5iD2BBsBYw=; 
	b=HQpMzIO2Q7VOJ9fsxKOlrmGbMwQuHeL6WgB2p43aM7G9qObWrafEKNLzMHz0oC0B33njgeZ4xT76EbiZU6LE4gUtaeCNgSWUvrPjjoSjCVeB/rRgbXrxbZxR3fpJKyzW/OVOhxiEEFBA1gfKq58sRbc14YZ05pxbZ8BXGl3F1CI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750694949;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=zZ4j6JHoVwtwIfIGG4M1yLQOntpYwXzvw5iD2BBsBYw=;
	b=SPN2xJNLAqerbm+Q1kilsEjw7Hhyn0oHtS99qhBXA69mrcCCPSV734KKL0/I0ptL
	F8mdbWJAWxcnrLbGJI7M+78keu9Ak0Qx9+ejC3A4feShF21A5PFuGVY0xpWIsmCtUJe
	WbxPs0+1woBNnpzlajh51i+rHZ8+okyeB0W/A+oo=
Received: by mx.zohomail.com with SMTPS id 1750694947682868.0196949578926;
	Mon, 23 Jun 2025 09:09:07 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 23 Jun 2025 18:05:43 +0200
Subject: [PATCH v2 15/20] net: stmmac: dwmac-rk: switch to FIELD_PREP_WM16
 macro
MIME-Version: 1.0
Message-Id: <20250623-byeword-update-v2-15-cf1fc08a2e1f@collabora.com>
References: <20250623-byeword-update-v2-0-cf1fc08a2e1f@collabora.com>
In-Reply-To: <20250623-byeword-update-v2-0-cf1fc08a2e1f@collabora.com>
To: Yury Norov <yury.norov@gmail.com>, 
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shreeya Patel <shreeya.patel@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_090949_750131_3D317508 
X-CRM114-Status: GOOD (  14.69  )
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org, llvm@lists.linux.dev, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
drivers that use constant masks.

Like many other Rockchip drivers, dwmac-rk has its own HIWORD_UPDATE
macro. Its semantics allow us to redefine it as a wrapper to the shared
hw_bitfield.h FIELD_PREP_WM16 macros though.

Replace the implementation of this driver's very own HIWORD_UPDATE macro
with an instance of FIELD_PREP_WM16 from hw_bitfield.h. This keeps the
diff easily reviewable, while giving us more compile-time error
checking.

The related GRF_BIT macro is left alone for now; any attempt to rework
the code to not use its own solution here would likely end up harder to
review and less pretty for the time being.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 79b92130a03faafbd26a0edf1a73199ecbb6e82b..0a1a83817ec19f3a42bc2d90f8b274575d60e278 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -8,6 +8,7 @@
  */
 
 #include <linux/stmmac.h>
+#include <linux/hw_bitfield.h>
 #include <linux/bitops.h>
 #include <linux/clk.h>
 #include <linux/phy.h>
@@ -150,7 +151,7 @@ static int rk_set_clk_mac_speed(struct rk_priv_data *bsp_priv,
 }
 
 #define HIWORD_UPDATE(val, mask, shift) \
-		((val) << (shift) | (mask) << ((shift) + 16))
+		(FIELD_PREP_WM16((mask) << (shift), (val)))
 
 #define GRF_BIT(nr)	(BIT(nr) | BIT(nr+16))
 #define GRF_CLR_BIT(nr)	(BIT(nr+16))

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

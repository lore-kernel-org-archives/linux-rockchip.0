Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75F27C531CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 19:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ueMVscXZmD9TNP2Je+BHJFcD49hH/ML/IlRq0beEYgQ=; b=3UggdEgjwYS2vs
	6TLVypvj/4U84Kg0qPNn0QAVJA/2Mo4ekF/Wg+sXS/6UqSwnmsH/b1lUCzmKWldZnQZ8SqBeSNwiJ
	QRD+KgXcLCxpSm5kfmeAj9qFzw6qz0qp+6DulNWZJm4YAgQoqtpMnkaaQqWSeQmLSMaj22P+JW0Cn
	1eqtGOXuaHmfQXOPi7GpPzrrSHwGvrtmdhMoJ1E20BGxempVc6erI9kX6jw17UQFPe7gjBEhnwZiM
	bluH01U8u31HYXztZOAZbO81RoDNSeHKweM+4MoA7tALCBLvh6FGsPdItErZy4FIKzR/HJPJEBhjs
	sHdbgxXTzmXKJq/HpjyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzIo-0000000Eylp-2yhS;
	Thu, 23 Jul 2026 19:41:54 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzIk-0000000Eyig-2j0F;
	Thu, 23 Jul 2026 19:41:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784835708;
	bh=LY0yMgZJBPQvaHgbjl3dveOux4Be0xwL6G2Zen77Log=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=K8MC9VW5GsaRRF1DRBmLNZqNCtvqHgPVk8eDSIb1mIa/SbNtOrx/afZgJlPhL1YiX
	 8dnaa/ctKcSP98bAG2S2s1uDleDhkphD/FCZUXSUapKvTL+4PgTV+dl9VqOxdZvsHr
	 5Bve6LF14dRH05F7t12eCaS4wpxuNJz8iJ+aifuufqXk4pnMjP5ksKEIdhnDJaduEI
	 SXUUXJGbv9LBaiftIs73qmXMx1Wmj2OSsZZFbvfROKYUlYdNZU94eLC7t5YXEPO1Bt
	 jdM4I4yIoNZAh+MIE9GWHLFuHn6rJaSux6WAOEnIZunRKCWqRyp41QbcCa/uaIqd5I
	 wCnytMFhNtdug==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id ED92517E0C7E;
	Thu, 23 Jul 2026 21:41:47 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 23 Jul 2026 22:41:45 +0300
Subject: [PATCH v5 02/10] phy: rockchip: samsung-hdptx: Prevent
 divide-by-zero when computing clk rate
MIME-Version: 1.0
Message-Id: <20260723-hdptx-clk-fixes-v5-2-8e786067865f@collabora.com>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
In-Reply-To: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Andy Yan <andy.yan@rock-chips.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_124150_850088_6C810670 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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

Calculating 'sdm' fraction in rk_hdptx_phy_clk_calc_rate_from_pll_cfg()
could trigger a divide-by-zero, as it uses div_u64() with a denominator
read directly from hardware: the values ropll_hw.sdm_deno,
ropll_hw.sdc_deno, ropll_hw.sdc_n, and ropll_hw.sdc_num are populated
from PLL registers which, in theory, could be left by the bootloader
uninitialized/misconfigured.

Provide the necessary sanitization to avoid trusting the hardware state.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://sashiko.dev/#/patchset/20260611-hdptx-clk-fixes-v3-0-67b1b0c00e16@collabora.com?part=1
Fixes: 3481fc04d969 ("phy: rockchip: samsung-hdptx: Compute clk rate from PLL config")
Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Andy Yan <andy.yan@rock-chips.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 710603afff86..44e99343f249 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -2270,10 +2270,15 @@ static u64 rk_hdptx_phy_clk_calc_rate_from_pll_cfg(struct rk_hdptx_phy *hdptx)
 
 	fout = PLL_REF_CLK * ropll_hw.pms_mdiv;
 	if (ropll_hw.sdm_en) {
+		val = 16U * ropll_hw.sdm_deno *
+		      (ropll_hw.sdc_deno * ropll_hw.sdc_n - ropll_hw.sdc_num);
+		if (!val) {
+			dev_dbg(hdptx->dev, "Invalid ROPLL hw state: deno == 0\n");
+			return 0;
+		}
+
 		sdm = div_u64(PLL_REF_CLK * ropll_hw.sdc_deno *
-			      ropll_hw.pms_mdiv * ropll_hw.sdm_num,
-			      16 * ropll_hw.sdm_deno *
-			      (ropll_hw.sdc_deno * ropll_hw.sdc_n - ropll_hw.sdc_num));
+			      ropll_hw.pms_mdiv * ropll_hw.sdm_num, val);
 
 		if (ropll_hw.sdm_num_sign)
 			fout = fout - sdm;

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

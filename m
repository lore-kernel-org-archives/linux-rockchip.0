Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCC96C28B2E
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Mar 2025 12:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HfaoHBGSkI34mL0DMKruhLMr0uWoHohsWCOUAbR9I/Q=; b=WTOT1m8wlsyTyH
	yzjQ/daq5aDN06jnDwoZwfNIKx8osUs30Z5Y0fnDDariazdoi56BMgIcwuC4a3NW2Y+F3TvRB6EEx
	ar7qNN0vqxTN1tAUOd0ne861wzfApVrrT9TsI4pJL2DomHsPihbjSvd4ORRv/Vbs63JkhgYe9GUYa
	Zkgk7StG9CMFVOQguwWcq16Ca5t+PQv/tmpJ0sXDuhv/lJ4WfSg6yxLoObYsbUrshWF8lEAyd/AQo
	SXgAz2pWXSEYbBteXSvVf8DUdDMwiuzBOzSVbzxl0U+E9Sbfpl4lEvvoBoe5fRRSpVCuYCML5qFzt
	uOrYIBFfs7eNujRlelXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqtJQ-0000000GagA-1C2H;
	Sat, 08 Mar 2025 12:29:52 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqtBP-0000000GZbQ-0tGL;
	Sat, 08 Mar 2025 12:21:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741436493;
	bh=JVO6B5huh7eGDo+k3A1fG3SKCxGyB11XeWKMxuuZ+rw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=HPioRTv4CnTVqQh81bzz/2o6ENJerd7U3kGDTqmShoHEsNZdO5m193+SPAfLDvBA4
	 Qu5Qktc3iCmujLpVZPu82JaSRVAsvtw1XY0rvJOddfFWDc+Bb0ChVfT7gs0Fus4eL4
	 ofppyfFyejOWHhE+B/TvP7ow4WBDwqsVT7qXMk/Ta/BeWmsp76dGcM8kYPCypYZhLX
	 Gp0Op8err6kj/xSCDn71TY50aXBNVg3Se+UrC0BSK0/fd9Y0zls7SkX4WKw+YVqhmG
	 uWqWH1Phr0PYzHZso4pKqksBnLOobfDxZ2eeFcO6XaSY9YHIjXvRyPOfKFMViss5Y2
	 WM4qraw/HTawg==
Received: from localhost (unknown [84.232.140.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 6300117E1016;
	Sat,  8 Mar 2025 13:21:33 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 08 Mar 2025 14:21:12 +0200
Subject: [PATCH v5 03/12] phy: rockchip: samsung-hdptx: Fix clock ratio
 setup
MIME-Version: 1.0
Message-Id: <20250308-phy-sam-hdptx-bpc-v5-3-35087287f9d1@collabora.com>
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_042135_426611_5FFF5E3D 
X-CRM114-Status: UNSURE (   9.27  )
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

The switch from 1/10 to 1/40 clock ratio must happen when exceeding the
340 MHz rate limit of HDMI 1.4, i.e. when entering the HDMI 2.0 domain,
and not before.

While at it, introduce a define for this rate limit constant.

Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index f88369864c50e4563834ccbb26f1f9f440e99271..cf2c3a46604cb9d8c26fe5ec8346904e0b62848f 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -320,6 +320,7 @@
 #define LN3_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
 #define LN3_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
 
+#define HDMI14_MAX_RATE			340000000
 #define HDMI20_MAX_RATE			600000000
 
 enum dp_link_rate {
@@ -1072,7 +1073,7 @@ static int rk_hdptx_ropll_tmds_mode_config(struct rk_hdptx_phy *hdptx,
 
 	regmap_write(hdptx->regmap, LNTOP_REG(0200), 0x06);
 
-	if (rate >= 3400000) {
+	if (rate > HDMI14_MAX_RATE / 100) {
 		/* For 1/40 bitrate clk */
 		rk_hdptx_multi_reg_write(hdptx, rk_hdtpx_tmds_lntop_highbr_seq);
 	} else {

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

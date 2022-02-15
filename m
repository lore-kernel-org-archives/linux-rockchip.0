Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F355C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Feb 2022 15:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d6jzDXeZypoeEoNWb20M1z/8zxj56KSfjBLezIZj25w=; b=kSyYmorEeho8ye
	0Z7UymN0j74DvyVEKYl1029GFvgf29t7CO32Mc75FQsNPtOiKd2kDOUyLVW9lp59lFPkmqqAhADE6
	tMvD4mm2tygqkzLCqP2U4ePxES2gihbd5gv2WWtZihBeLokbdQqAQZeRVc/qAokLXdq9+caQeAVrq
	yO0+zzkpdY22GHY87LAQ4jJ7gV4V2UEqvQhpUsEPMexRo5t35fw0WY/t0XtvrMKeLGNPxKAMp+Mdr
	HLbJRTGZp6Gi/8fSlYU9ziM2gGNmQuS7BVOKCf8z1Ei3/1pexkt0eONubJmeOGwiOrJA7SwUhcow9
	0CyEPVP/yj+AX6lLpCqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK0D7-003UmR-H8; Tue, 15 Feb 2022 15:57:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJzn8-003Hv0-AW; Tue, 15 Feb 2022 15:31:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CFB2D612D7;
 Tue, 15 Feb 2022 15:30:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 174A8C340EB;
 Tue, 15 Feb 2022 15:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644939057;
 bh=Tp7Y9YHMOncNoiZZF7GWXAcQGmy39O0B35RFEcRctCM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PMPm82cSl99aE8ZYOjciVuXoisbBWkZRx4Tydr5+cSzyPn9louex23MWvcQDPR2W6
 ZamMyWu+MACbIMvfSb08rZoyB4xNdsG9zY3EUA0sA0Ko9AMuVNyRuK6bxYy+8XGlEy
 vQBMUTbtlnkDC+C4dy22OK88lxVnKYRhb7eRd1UFaTtGfrBHBXvZ9UHueBTPV9Cvnn
 VE9BjKKmJTv+JzNQiTUZo0QPRkR0k3ANdtNhEx9Wf9wKTejMV0Fnfj7V1dgI6wH1Uu
 RUcUqYs3uJGPaqCkAIIUmmY7PBIJ2sdl+mubB8OgDjlEZq1w7QZ1w0vkjt92Jpkbck
 23tb/iKyRL5Eg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, hjc@rock-chips.com, airlied@linux.ie,
 daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.4 12/17] drm/rockchip: dw_hdmi: Do not leave clock
 enabled in error case
Date: Tue, 15 Feb 2022 10:30:32 -0500
Message-Id: <20220215153037.581579-12-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220215153037.581579-1-sashal@kernel.org>
References: <20220215153037.581579-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_073058_442504_3ABCD325 
X-CRM114-Status: GOOD (  13.24  )
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

[ Upstream commit c0cfbb122275da1b726481de5a8cffeb24e6322b ]

The driver returns an error when devm_phy_optional_get() fails leaving
the previously enabled clock turned on. Change order and enable the
clock only after the phy has been acquired.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Link: https://patchwork.freedesktop.org/patch/msgid/20220126145549.617165-3-s.hauer@pengutronix.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 906891b03a38d..7805091bac32d 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -528,13 +528,6 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
-	ret = clk_prepare_enable(hdmi->vpll_clk);
-	if (ret) {
-		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI vpll: %d\n",
-			      ret);
-		return ret;
-	}
-
 	hdmi->phy = devm_phy_optional_get(dev, "hdmi");
 	if (IS_ERR(hdmi->phy)) {
 		ret = PTR_ERR(hdmi->phy);
@@ -543,6 +536,13 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
+	ret = clk_prepare_enable(hdmi->vpll_clk);
+	if (ret) {
+		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI vpll: %d\n",
+			      ret);
+		return ret;
+	}
+
 	drm_encoder_helper_add(encoder, &dw_hdmi_rockchip_encoder_helper_funcs);
 	drm_encoder_init(drm, encoder, &dw_hdmi_rockchip_encoder_funcs,
 			 DRM_MODE_ENCODER_TMDS, NULL);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

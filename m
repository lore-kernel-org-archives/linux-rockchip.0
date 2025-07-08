Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7A16C83F09
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jul 2025 20:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnHRtYtDXkeYnsnl/qEgN9PPVljOFeTWga4CZzNI3Yg=; b=aGNwylw14eTvNk
	V0u1NPl1uGxGbhab/O5hnoArKRk/AmXpdnsylM0e7QnmQGt3yWYUBvDO4cuLMOerBGNxP6nceevS1
	mtIuitI6TZbWxZSygzq4q3L17n6FLyqKRGK/UUwuaKRAFV8UjLMlyXb9vHgzE5hfXUh6Jz18V3S1N
	Bfcb08Y9vF9o8Vm34h3uJi17P4Bc5KKo99HSLcq7jul9r2BlltNtn2/OLtMDPWTjALMkUIaWXTTWe
	2IYjt7BVVEqQjnWpI1i4rkeA3msAfeulvyiuA6btNgysxhobdVFFpQtaGM3XlL7YTy8kgXrG7yFg6
	j8WAZC91nHqriSOj7ywQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEug-00000006ViP-25Is;
	Tue, 08 Jul 2025 20:27:38 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZE8A-00000006MCl-06aL;
	Tue, 08 Jul 2025 19:37:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1752003448;
	bh=x3VrdnN8H7+3VouRioNhlNkYqCVQfVdWis1xzS7nIV8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=MiPsqYXDXczW6Gpqi4ohDUsAv1PqbvdAinJX6VOPjWgfJA+mBSCjlLnVJZayPREro
	 OLF1VGHRfStWZr07bXzvxYzaZ7CvT9AagysD+TZHVq6KijKY3gpOXE0pWwUgS8ASAi
	 fc2h3YJMoCDIEWOwMpc1vDA4o30ANF2gT904r8u3NXjaC2SMGZZwJdicvpVuC1jvLI
	 rmeL276eotb8bA2rYjyu7t9gDY6gNHfHYtUVyT5D0irn1Ry2ohSuC8QdV72S+zOUga
	 oenOYB67SqDTlPRaAi/bc9SdKiD7OYSRbBjB28iCQ5gVVDjd+Z2eDaSr4rE4wnq00P
	 /RSTtEhT0A1Ow==
Received: from localhost (unknown [212.93.144.165])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 70E8317E04AA;
	Tue,  8 Jul 2025 21:37:28 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 08 Jul 2025 22:35:48 +0300
Subject: [PATCH 07/12] phy: rockchip: samsung-hdptx: Enable lane output in
 common helper
MIME-Version: 1.0
Message-Id: <20250708-phy-hdptx-frl-v1-7-cfe096e224f4@collabora.com>
References: <20250708-phy-hdptx-frl-v1-0-cfe096e224f4@collabora.com>
In-Reply-To: <20250708-phy-hdptx-frl-v1-0-cfe096e224f4@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_123730_211212_A2861913 
X-CRM114-Status: UNSURE (   9.66  )
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

In preparation to support FRL mode, move the PHY lane output enablement
from the TMDS specific configuration to the common *_post_enable_lane()
helper and make sure it gets turned off in *_phy_disable().

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 21b8ed427baf338300a0bce813037a54121e9ed9..595aa94eb2dd22acd44c653e51d85ac497a1cc44 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -830,6 +830,8 @@ static int rk_hdptx_post_enable_lane(struct rk_hdptx_phy *hdptx)
 	       HDPTX_I_BIAS_EN | HDPTX_I_BGR_EN;
 	regmap_write(hdptx->grf, GRF_HDPTX_CON0, val);
 
+	regmap_write(hdptx->regmap, LNTOP_REG(0207), 0x0f);
+
 	ret = regmap_read_poll_timeout(hdptx->grf, GRF_HDPTX_STATUS, val,
 				       (val & HDPTX_O_PHY_RDY) &&
 				       (val & HDPTX_O_PLL_LOCK_DONE),
@@ -883,6 +885,7 @@ static void rk_hdptx_phy_disable(struct rk_hdptx_phy *hdptx)
 	usleep_range(20, 30);
 	reset_control_deassert(hdptx->rsts[RST_APB].rstc);
 
+	regmap_write(hdptx->regmap, LNTOP_REG(0207), 0x0);
 	regmap_write(hdptx->regmap, LANE_REG(0300), 0x82);
 	regmap_write(hdptx->regmap, SB_REG(010f), 0xc1);
 	regmap_write(hdptx->regmap, SB_REG(0110), 0x1);
@@ -1059,7 +1062,6 @@ static int rk_hdptx_tmds_ropll_mode_config(struct rk_hdptx_phy *hdptx)
 	}
 
 	regmap_write(hdptx->regmap, LNTOP_REG(0206), 0x07);
-	regmap_write(hdptx->regmap, LNTOP_REG(0207), 0x0f);
 
 	rk_hdptx_multi_reg_write(hdptx, rk_hdptx_common_lane_init_seq);
 	rk_hdptx_multi_reg_write(hdptx, rk_hdptx_tmds_lane_init_seq);

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

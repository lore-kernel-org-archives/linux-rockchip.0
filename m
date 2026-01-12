Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B411CF45DD
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 23:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LZdson50nZlKBh5COWJpThXk81dSK8ahsaQ3YzTg+M=; b=RyYj59LQ4CVGOS
	h4KoY5ZZT90+ReT6yUCnywYnpG92siJFypUUZMTYf1+mnJm2uogyKil4f71kf7h44fa/FgCWYfqT2
	0pH4aLNYcmOLmP+2s/2HmL2E2/Utpq9PKjWXzZrJS/KwVrC64OxbI0Bwm95XRSrNnDDWnQ76H/LRX
	yFXJzObsRVNHTUp9HMDaaE3mdcTdjs3JfNHlFa7CgxRYcFbTPsahxNvgySeVl3sTZdLgO8M8fvKEo
	3W4mt9G1MQh8lcaMFfvwrP3y7GVtwm8xkChhYj5EgNgvxIhGvBdrxjbNV7GkmfTLg2EbN47hlfPDR
	IIpAYjZJXs91WGDR82XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfRDl-00000006Hy3-1zOb;
	Mon, 12 Jan 2026 23:21:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfRDg-00000006Hsw-3CNQ;
	Mon, 12 Jan 2026 23:21:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=2Hg/mQCj/eaueiT3Gt1Ye8e/iIh785R0cc8mnklrcIg=; b=SCB5QHGJWvfLFcTQPqW3g56bsJ
	dUeI2SDaxxeQEllinBLW3nBedL53zTrzNe5g1nJmfx+dFTRPssh7F9FfPzP61yfuAxuLwE4x8dc7s
	jTQmxpERwNktj4RymeUaYdclJ8iKjoPG3Y5BxCgrmP4v3Z3bUvjC02Cde1esB6Ht0Cl9MBGtcxF6X
	1YUDPmUQenI5NlN9QwP/5ANJekmpqte+vcVse5GQDybFR7Mgpz92cCHrvZD2Mr0vvgtNObzII4Srp
	a8j3zYY9NylYZjvf9uK8nNAsHRmhwFF2Fu3+oACi7Qew+piaQmEe80N+6v1QCSUwYKlMLI/ROB1bw
	431Xbt+g==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfRDa-00000001oNu-2heb;
	Mon, 12 Jan 2026 23:21:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768260061;
	bh=GapllIFE0EDg+WlX20BM3yTCFntHyqDn2P0gVDeiK0A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ZQZRJJFidp9qnkRVUTcfBxX+yE1fAkGok4KKe5Y49ChzbYxUGaeQf/BgkKcBhOlgd
	 X6TUivV9QKi8w+vgsKwlrcL+X+m+KScpsuJQyxV/VVGrqntF5FU7s8R1hOFQCzJBiw
	 jZd6T2cloKuqxFw5CSyURarpPVKgJolHqaZhflRgaQ07ogrUzRnD9vcifwvmEoGZgm
	 TlwW6Fs1+fuyLP8OB53DM31Y+RmTLR9wRqklxMkrWR19w/ixKzW7Bjw5LezQSKDaGL
	 1+l1Oep+lkPTxJObPUxW7f5Jov6MhDBMBJm3sWDOWWfvd1FBIdnURaTx7QbP0RUmY5
	 hL0xdO1EKGLgw==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C892E17E1416;
	Tue, 13 Jan 2026 00:21:00 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 13 Jan 2026 01:20:50 +0200
Subject: [PATCH v6 03/11] phy: rockchip: samsung-hdptx: Fix coding style
 alignment
MIME-Version: 1.0
Message-Id: <20260113-phy-hdptx-frl-v6-3-8d5f97419c0b@collabora.com>
References: <20260113-phy-hdptx-frl-v6-0-8d5f97419c0b@collabora.com>
In-Reply-To: <20260113-phy-hdptx-frl-v6-0-8d5f97419c0b@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_232103_115340_738EF54F 
X-CRM114-Status: UNSURE (   8.08  )
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

Handle a bunch of reported checkpatch.pl complaints:

  CHECK: Alignment should match open parenthesis

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 89710066d70c..3f8a7f4f5cd8 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1624,11 +1624,11 @@ static void rk_hdptx_phy_set_voltage(struct rk_hdptx_phy *hdptx,
 		regmap_update_bits(hdptx->regmap, LANE_REG(030a) + offset,
 				   LN_TX_JEQ_EVEN_CTRL_RBR_MASK,
 				   FIELD_PREP(LN_TX_JEQ_EVEN_CTRL_RBR_MASK,
-				   ctrl->tx_jeq_even_ctrl));
+					      ctrl->tx_jeq_even_ctrl));
 		regmap_update_bits(hdptx->regmap, LANE_REG(030c) + offset,
 				   LN_TX_JEQ_ODD_CTRL_RBR_MASK,
 				   FIELD_PREP(LN_TX_JEQ_ODD_CTRL_RBR_MASK,
-				   ctrl->tx_jeq_odd_ctrl));
+					      ctrl->tx_jeq_odd_ctrl));
 		regmap_update_bits(hdptx->regmap, LANE_REG(0311) + offset,
 				   LN_TX_SER_40BIT_EN_RBR_MASK,
 				   FIELD_PREP(LN_TX_SER_40BIT_EN_RBR_MASK, 0x1));
@@ -1638,11 +1638,11 @@ static void rk_hdptx_phy_set_voltage(struct rk_hdptx_phy *hdptx,
 		regmap_update_bits(hdptx->regmap, LANE_REG(030b) + offset,
 				   LN_TX_JEQ_EVEN_CTRL_HBR_MASK,
 				   FIELD_PREP(LN_TX_JEQ_EVEN_CTRL_HBR_MASK,
-				   ctrl->tx_jeq_even_ctrl));
+					      ctrl->tx_jeq_even_ctrl));
 		regmap_update_bits(hdptx->regmap, LANE_REG(030d) + offset,
 				   LN_TX_JEQ_ODD_CTRL_HBR_MASK,
 				   FIELD_PREP(LN_TX_JEQ_ODD_CTRL_HBR_MASK,
-				   ctrl->tx_jeq_odd_ctrl));
+					      ctrl->tx_jeq_odd_ctrl));
 		regmap_update_bits(hdptx->regmap, LANE_REG(0311) + offset,
 				   LN_TX_SER_40BIT_EN_HBR_MASK,
 				   FIELD_PREP(LN_TX_SER_40BIT_EN_HBR_MASK, 0x1));
@@ -1653,11 +1653,11 @@ static void rk_hdptx_phy_set_voltage(struct rk_hdptx_phy *hdptx,
 		regmap_update_bits(hdptx->regmap, LANE_REG(030b) + offset,
 				   LN_TX_JEQ_EVEN_CTRL_HBR2_MASK,
 				   FIELD_PREP(LN_TX_JEQ_EVEN_CTRL_HBR2_MASK,
-				   ctrl->tx_jeq_even_ctrl));
+					      ctrl->tx_jeq_even_ctrl));
 		regmap_update_bits(hdptx->regmap, LANE_REG(030d) + offset,
 				   LN_TX_JEQ_ODD_CTRL_HBR2_MASK,
 				   FIELD_PREP(LN_TX_JEQ_ODD_CTRL_HBR2_MASK,
-				   ctrl->tx_jeq_odd_ctrl));
+					      ctrl->tx_jeq_odd_ctrl));
 		regmap_update_bits(hdptx->regmap, LANE_REG(0311) + offset,
 				   LN_TX_SER_40BIT_EN_HBR2_MASK,
 				   FIELD_PREP(LN_TX_SER_40BIT_EN_HBR2_MASK, 0x1));

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

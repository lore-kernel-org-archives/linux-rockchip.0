Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24577C282D1
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 02:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwTf6740aN90QCe1poXG7egUcRKPDiFY8j3D5Kx4vFk=; b=Rn2l/8A7Qw30Zw
	Q8iqNtV1EoIvX6sut2iWZm/NRg5vLp17Pqva7sGz0JIliwQfDtLandyLmjDZ63KzfQjtRrkXGkUAz
	4HMyL1+ct1lN1d9fAcy1vUs4o+CVicwgZP0XIq4bHZ6/JBC99e3RN1L+S8/HZMdO9TCY9K3KsPton
	FlL8+8kXoawwDI7uDhUeLPW1p9O78feSnl339U9lFiIJ8pmkhCuh4rZYO1NLs3nLFir56qB9LYsdU
	3NVECZwUD5iY2RgVH9mFjnreVAJaJHQTkZ6ssr42wyf2R62HhW6iuzToD07TKePSilVjGE+/fglJ0
	REe1duKYffSQgwkltbPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpHmg-00000002sHH-4AxG;
	Tue, 04 Mar 2025 02:13:26 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpHKb-00000002o5h-49uS;
	Tue, 04 Mar 2025 01:44:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741052664;
	bh=sVknEgGNvct3p8aN+CRi6/k6aF+awKULL5O/9DK0SkA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ak4uWnPZXqtzuQ1GE+TpAm/gdOwpFUg1+TvLQS8H7koUNRxZjYQ+xSUf74miLb04e
	 KnZP5d2MhRpyvKRYn3i3XxNTODrfdGY87iM1H2KhA8PdTd2jVbhQyyTCaQeclXF5s6
	 4ljvESwXIUKgKEIrRhL8zdZfwZ09VlgiPPax/1qpcgsXeOd9XVx2lUK9p0eJ/FFCfu
	 qzV0lRs8pUBp1EWWgQnQdROrb6OumxNWt7LZVQ6meN25gjlWfR+zuvE5VRB0IFfD0V
	 J13fkfpXCiCHWT+KdpW04Ptp01E7/AKz+Kd0dUWYi0FJVz57cSyzQKahZRJpD2VBwy
	 dUg8UMTZ7k/DQ==
Received: from localhost (unknown [188.27.58.83])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 468E817E1023;
	Tue,  4 Mar 2025 02:44:24 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 04 Mar 2025 03:44:07 +0200
Subject: [PATCH v4 08/12] phy: rockchip: samsung-hdptx: Provide config
 params validation support
MIME-Version: 1.0
Message-Id: <20250304-phy-sam-hdptx-bpc-v4-8-8657847c13f7@collabora.com>
References: <20250304-phy-sam-hdptx-bpc-v4-0-8657847c13f7@collabora.com>
In-Reply-To: <20250304-phy-sam-hdptx-bpc-v4-0-8657847c13f7@collabora.com>
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
X-CRM114-CacheID: sfid-20250303_174426_208209_ADCF0C52 
X-CRM114-Status: GOOD (  11.49  )
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

Implement the phy_ops.validate() callback to allow checking the PHY
configuration parameters without actually applying them.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 7e1d1c10758249aa5bbddbdaae0108bba04f30df..47db1395051f5d900197871694bab90ca4d6e38e 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1482,6 +1482,17 @@ static int rk_hdptx_phy_verify_hdmi_config(struct rk_hdptx_phy *hdptx,
 	if (!hdmi->tmds_char_rate || hdmi->tmds_char_rate > HDMI20_MAX_RATE)
 		return -EINVAL;
 
+	u32 bit_rate = hdmi->tmds_char_rate / 100;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ropll_tmds_cfg); i++)
+		if (bit_rate == ropll_tmds_cfg[i].bit_rate)
+			break;
+
+	if (i == ARRAY_SIZE(ropll_tmds_cfg) &&
+	    !rk_hdptx_phy_clk_pll_calc(bit_rate, NULL))
+		return -EINVAL;
+
 	return 0;
 }
 
@@ -1789,10 +1800,22 @@ static int rk_hdptx_phy_configure(struct phy *phy, union phy_configure_opts *opt
 	return 0;
 }
 
+static int rk_hdptx_phy_validate(struct phy *phy, enum phy_mode mode,
+				 int submode, union phy_configure_opts *opts)
+{
+	struct rk_hdptx_phy *hdptx = phy_get_drvdata(phy);
+
+	if (mode != PHY_MODE_DP)
+		return rk_hdptx_phy_verify_hdmi_config(hdptx, &opts->hdmi);
+
+	return rk_hdptx_phy_verify_dp_config(hdptx, &opts->dp);
+}
+
 static const struct phy_ops rk_hdptx_phy_ops = {
 	.power_on  = rk_hdptx_phy_power_on,
 	.power_off = rk_hdptx_phy_power_off,
 	.configure = rk_hdptx_phy_configure,
+	.validate  = rk_hdptx_phy_validate,
 	.owner	   = THIS_MODULE,
 };
 

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

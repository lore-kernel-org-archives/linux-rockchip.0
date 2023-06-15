Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A240DEB64DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jun 2023 17:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VJrMhd1KevRnBTE9wjeE7V/LDbeRSjOVXypWTxx+QnE=; b=Dj8uvUaH636DGjhBthGxbreM4L
	fS8CnAg4Mkslc9tZ8TT5XZ4bpk/fs08N29lOj2ZFOEIqCxRxN84sSzx8M65UkTwuU78Elzk090xL+
	nSn0Xj//C6I8lA7LqA/u05w9vkvxf0Dzwxmhb2B+fYTBfMk8z9MjlHNXtyZaUGQj1ZhKla3aFa5Lk
	bGA1JEsOJMMQIwTXYH37BdZ96OdIC1O6h06KvLi9SZbd6WktKuwpGxUHnoVYP8jSr39/891nHYvkD
	59BP3ekiBnZ/SImlSCLz/DX3nxUfjsqJvMQh9ymIYOxJCpXg/Hw9aIYTAd4hCUuFxGRIMD12rmKil
	g4Fe5vWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUd-00FXVG-0w;
	Thu, 15 Jun 2023 17:10:43 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUJ-00FXDd-3D
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jun 2023 17:10:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=o8apgBeVbEFf/gdNMBJ4gZ0KNM+6ohNZauAFEg2dmLo=;
	b=SubMU7VgWGD8VuMblD3L94jbFI0WUHEDN638drCogRLHP8ZnaEChBmhy7HmKGZl9w9T6
	rUR+RaFep2gOfa7a2FL/q/GtHGfUF9D8LTsEQTjOcUjD99WdlNuF5CdzE9xgm3ldjhvwT9
	ufbFQc5d2qH6y6RpnMNaRy2LClUsz9cZnch+CCk23tCLt8qa3EhzMR6dA9B28zYDh2wJFX
	5e79mmHLGcg6Dl2CVy3PHWj+LRLwsewTEJHLv2hzWmw7P5JrjWk11c6MHGRL+QQsYnz/5O
	EkCm9nE+qMl4hTUq+DrzOGDlcIifIZ4cJvbrOrklXRCNVsrQeEX9+keb5d83K9NA==
Received: by filterdrecv-77869f68cc-wnrh7 with SMTP id filterdrecv-77869f68cc-wnrh7-1-648B45FE-46
        2023-06-15 17:10:22.884889446 +0000 UTC m=+3087262.537319377
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-2 (SG)
	with ESMTP
	id XoJ-0orTTC-S_Ki4s1EU2A
	Thu, 15 Jun 2023 17:10:22.683 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 5/6] phy/rockchip: inno-hdmi: force set_rate on power_on
Date: Thu, 15 Jun 2023 17:10:23 +0000 (UTC)
Message-Id: <20230615171005.2251032-6-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615171005.2251032-1-jonas@kwiboo.se>
References: <20230615171005.2251032-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h2VJzEQeUwe5Z84gV?=
 =?us-ascii?Q?AySJJvspWIh+Zfn4vnFh5NfVIXakuzGVhSpi4+m?=
 =?us-ascii?Q?WuIvbNPS+EcF=2FO2cKst8p1=2FD0VNif4F6nVa=2FIQJ?=
 =?us-ascii?Q?LmLZRnVaswCTSUl6OnuEYR5aLb7mEJhCfUK16zi?=
 =?us-ascii?Q?OysnAi7HuKflqp20M3TQvfu62x321ZaJrROMlt=2F?=
 =?us-ascii?Q?mUlwxRahqGFIdnZPdpLAg=3D=3D?=
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, Huicong Xu
	<xhc@rock-chips.com>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_101024_158609_340BEBB7 
X-CRM114-Status: GOOD (  13.20  )
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

From: Huicong Xu <xhc@rock-chips.com>

Regular 8-bit and Deep Color video formats mainly differ in TMDS rate and
not in pixel clock rate.
When the hdmiphy clock is configured with the same pixel clock rate using
clk_set_rate() the clock framework do not signal the hdmi phy driver
to set_rate when switching between 8-bit and Deep Color.
This result in pre/post pll not being re-configured when switching between
regular 8-bit and Deep Color video formats.

Fix this by calling set_rate in power_on to force pre pll re-configuration.

Signed-off-by: Huicong Xu <xhc@rock-chips.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v3:
- no change

 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index fe7fa9a43ec0..a1fb39af6493 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -245,6 +245,7 @@ struct inno_hdmi_phy {
 	struct clk_hw hw;
 	struct clk *phyclk;
 	unsigned long pixclock;
+	unsigned long tmdsclock;
 };
 
 struct pre_pll_config {
@@ -485,6 +486,8 @@ static int inno_hdmi_phy_power_on(struct phy *phy)
 
 	dev_dbg(inno->dev, "Inno HDMI PHY Power On\n");
 
+	inno->plat_data->clk_ops->set_rate(&inno->hw, inno->pixclock, 24000000);
+
 	ret = clk_prepare_enable(inno->phyclk);
 	if (ret)
 		return ret;
@@ -509,6 +512,8 @@ static int inno_hdmi_phy_power_off(struct phy *phy)
 
 	clk_disable_unprepare(inno->phyclk);
 
+	inno->tmdsclock = 0;
+
 	dev_dbg(inno->dev, "Inno HDMI PHY Power Off\n");
 
 	return 0;
@@ -628,6 +633,9 @@ static int inno_hdmi_phy_rk3228_clk_set_rate(struct clk_hw *hw,
 	dev_dbg(inno->dev, "%s rate %lu tmdsclk %lu\n",
 		__func__, rate, tmdsclock);
 
+	if (inno->pixclock == rate && inno->tmdsclock == tmdsclock)
+		return 0;
+
 	cfg = inno_hdmi_phy_get_pre_pll_cfg(inno, rate);
 	if (IS_ERR(cfg))
 		return PTR_ERR(cfg);
@@ -670,6 +678,7 @@ static int inno_hdmi_phy_rk3228_clk_set_rate(struct clk_hw *hw,
 	}
 
 	inno->pixclock = rate;
+	inno->tmdsclock = tmdsclock;
 
 	return 0;
 }
@@ -781,6 +790,9 @@ static int inno_hdmi_phy_rk3328_clk_set_rate(struct clk_hw *hw,
 	dev_dbg(inno->dev, "%s rate %lu tmdsclk %lu\n",
 		__func__, rate, tmdsclock);
 
+	if (inno->pixclock == rate && inno->tmdsclock == tmdsclock)
+		return 0;
+
 	cfg = inno_hdmi_phy_get_pre_pll_cfg(inno, rate);
 	if (IS_ERR(cfg))
 		return PTR_ERR(cfg);
@@ -820,6 +832,7 @@ static int inno_hdmi_phy_rk3328_clk_set_rate(struct clk_hw *hw,
 	}
 
 	inno->pixclock = rate;
+	inno->tmdsclock = tmdsclock;
 
 	return 0;
 }
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA1DBC5473A
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 10:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWNg+06FVfhjy7reg/9gg8GDULx0SL+nsm5280W1D4U=; b=VNPx75UN45sCro
	0cBnd4ntl2Q1EEB1aMmqu9qpxwPTs4bf6VTDLO5gjvmpg6D5n354sM73RIbkFaBeJN3yHkTt8MeAe
	v9MRMuU+QoMiLTCtMx1ktCb4Xm8T7/27dKn3IuCgGQ0tgc3Aay4cgV9vF16ZofpOOWkTlrS1f4vnG
	lFZvVzWRCF5+2qsnw4o000/LKvP3XEiOKtVz/Hy9f2bCEY3q1kfFwinvX8Wgf+qnP8gWxLsmdkohJ
	ON3Rr8AO0dV2e92QvTSyD3RBc8P9UNnUSZvBbiACDcr7hUe5CFA5SJUGhpFtF35ZjNAszJ2Z0HIbK
	ddHdv0vsIK/Hqgrb4l5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitV3-0000000ApIa-2NOu;
	Tue, 27 Aug 2024 10:32:33 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitUz-0000000ApFZ-3jQ2
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 10:32:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=kEVdY
	QDJa7elqAQK/YzzU7VkyiLjsDzbk2Kb7rTOPwo=; b=R+/wHt7Bb0vBRmfmPiIUz
	i3GSWPBcvQ20HFwctMbKtjQu8VNzR12G11sPyNslnsKXY2gLbQ6aOo6JR95Dpa17
	l7eLdKCxz+mf0Lnh5v03VafrPX0PKkfWdXz/NJuYx3YW3c+Udd1tzu7IksVlacMK
	Jjz6ikgaiIS6DKthLnFwus=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzsmtp4 (Coremail) with SMTP id sygvCgBHnBwtq81mBkshAA--.8204S6;
	Tue, 27 Aug 2024 18:32:20 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: detlev.casanova@collabora.com
Subject: [PATCH 4/5] phy: phy-rockchip-samsung-hdptx: Don't request RST_PHY/RST_ROPLL/RST_LCPLL
Date: Tue, 27 Aug 2024 18:32:10 +0800
Message-Id: <20240827103211.3132728-5-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240827103211.3132728-1-andyshrk@163.com>
References: <20240827103211.3132728-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: sygvCgBHnBwtq81mBkshAA--.8204S6
X-Coremail-Antispam: 1Uf129KBjvJXoW7Kr15Cw4ktw1furWxXFyxXwb_yoW8tF17pF
	s3CF47JrWqgFn8Wa1UKFn8CFW8JF9IqF1YqFs3Z3Wxtr1xArWDuryfuF95Xr1DJrW2qayF
	kw4xtFWfu3W2vwUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j0nQUUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hRIXmWXz+vZGQABsH
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_033230_320502_01F19CC4 
X-CRM114-Status: UNSURE (   9.55  )
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
Cc: heiko@sntech.de, s.hauer@pengutronix.de, hjc@rock-chips.com, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, sjoerd@collabora.com, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

RST_PHY/RST_ROPLL/RST_LCPLL are used for debug only,
and there are not exported on rk3576.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 .../phy/rockchip/phy-rockchip-samsung-hdptx.c   | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 946c01210ac8..f3f03914bf78 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -252,13 +252,10 @@ struct ropll_config {
 };
 
 enum rk_hdptx_reset {
-	RST_PHY = 0,
-	RST_APB,
+	RST_APB = 0,
 	RST_INIT,
 	RST_CMN,
 	RST_LANE,
-	RST_ROPLL,
-	RST_LCPLL,
 	RST_MAX
 };
 
@@ -655,11 +652,6 @@ static void rk_hdptx_phy_disable(struct rk_hdptx_phy *hdptx)
 {
 	u32 val;
 
-	/* reset phy and apb, or phy locked flag may keep 1 */
-	reset_control_assert(hdptx->rsts[RST_PHY].rstc);
-	usleep_range(20, 30);
-	reset_control_deassert(hdptx->rsts[RST_PHY].rstc);
-
 	reset_control_assert(hdptx->rsts[RST_APB].rstc);
 	usleep_range(20, 30);
 	reset_control_deassert(hdptx->rsts[RST_APB].rstc);
@@ -780,10 +772,6 @@ static int rk_hdptx_ropll_tmds_cmn_config(struct rk_hdptx_phy *hdptx,
 
 	rk_hdptx_pre_power_up(hdptx);
 
-	reset_control_assert(hdptx->rsts[RST_ROPLL].rstc);
-	usleep_range(20, 30);
-	reset_control_deassert(hdptx->rsts[RST_ROPLL].rstc);
-
 	rk_hdptx_multi_reg_write(hdptx, rk_hdtpx_common_cmn_init_seq);
 	rk_hdptx_multi_reg_write(hdptx, rk_hdtpx_tmds_cmn_init_seq);
 
@@ -958,13 +946,10 @@ static int rk_hdptx_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(hdptx->regmap),
 				     "Failed to init regmap\n");
 
-	hdptx->rsts[RST_PHY].id = "phy";
 	hdptx->rsts[RST_APB].id = "apb";
 	hdptx->rsts[RST_INIT].id = "init";
 	hdptx->rsts[RST_CMN].id = "cmn";
 	hdptx->rsts[RST_LANE].id = "lane";
-	hdptx->rsts[RST_ROPLL].id = "ropll";
-	hdptx->rsts[RST_LCPLL].id = "lcpll";
 
 	ret = devm_reset_control_bulk_get_exclusive(dev, RST_MAX, hdptx->rsts);
 	if (ret)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

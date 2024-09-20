Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ADF9CF58FA
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Sep 2024 09:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JRQ+vQX9gKjK8P6HE8AhfztrXGGK38rPHCL6fUQfKJ4=; b=j9BaauOCFzNueA
	FPFMf64KYfgP4l9EJkDAONmoumJeKidrTYLa2/6JuKhdbEuP/0T20wMQ/q4R2AqQH54/PMg0Bwspn
	x/mLuI7ZEXq/lBHYA2toAkRqe9t/49ph0g7KCdoiRR0GpnQJ2BFa8iiAMkLOrr2p9BZThI92kgrpg
	soiL0Rh6p3jt7gRb/5vQUe37RJi+0B7YMdjW7eIGEutJIF2MFkUqaHlAbCWWEHYvSFZ4VcqKxhltc
	0We3Wcyl35I4LqAxIIF4HKolC/fUPDUL5wSYgJXfFcGUk7NXNLkkFanS+GBYNil7kav0nPt070kCX
	423xOjeElCcudJoi9LiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sra5S-0000000BwYG-2LOR;
	Fri, 20 Sep 2024 09:38:02 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sra4J-0000000BwPW-43fe;
	Fri, 20 Sep 2024 09:36:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=hgecV
	r+tVurwSxwGSHpG48Xb3t6wVc7vDsaAUV3Jteo=; b=p9qtnjcoi+vM0Tv0vp/Em
	/36FwMP8HaFvSgjTtW5WgN7OnA96dkDRnJtyR99G2H1CW0BsXd/jfpaNnRTIM0Wr
	U7/vMKDcAeNNbIZCPOCfKTJoOzFLH55OSRsZmY4CzTzua9wvIpnrgLdxf0rtYQll
	EiB3i1XFAr2LsQJpkTpxjk=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g3-0 (Coremail) with SMTP id _____wDXH1MfQu1mJ+xaBg--.40480S2;
	Fri, 20 Sep 2024 17:36:34 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: vkoul@kernel.org
Subject: [PATCH] phy: phy-rockchip-samsung-hdptx: Don't request RST_PHY/RST_ROPLL/RST_LCPLL
Date: Fri, 20 Sep 2024 17:36:28 +0800
Message-ID: <20240920093629.7410-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wDXH1MfQu1mJ+xaBg--.40480S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Kr15JrWDZry3WF13ArykAFb_yoW8tFWfpF
	s3CF47JrWqgFn8Wa1UKFn8CFWxJF9IqF1YqFsxZa4xtr1xArWDuryruF95Xr1DJrW2qayF
	kw4xtFWfu3W2vwUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UvAp5UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQVgXmVODBPGLgAAsO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_023652_600095_A272E5DB 
X-CRM114-Status: UNSURE (   9.07  )
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
Cc: kishon@kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

RST_PHY/RST_ROPLL/RST_LCPLL are used for debug only on rk3588,
and they are not exported on rk3576, no need to request it in
driver.

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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EB68C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Nov 2022 07:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aUdNnp6oIWR3rtT+8bTG5tmIkYh4DJLfjrNEkvBJwAg=; b=IzSN41OeDtFjIs
	yvngclUIIh+LWkBxdVdAYBbTCTfj+AYm14KP71eokKJnVCluLeZfLO5oLyBpNbM282NdNJlCO5PbE
	Aoclnt66G2Q12/GqrvVbGcrR24w+ngp7BOyjvrYZBnxxauRotVU04tr2auPRhr0zI8zTvmLgg+nrF
	rjWzFnpZslRarU7MO8P8gUc1fuzihge4qzsGO9grztSpe8ziEs77Eci3UUwmfeLPSLh6EpVJbCkcj
	FUAZail+tI4GzRQz8j75LALtVK95SXVg1G+f62/ffQpaoZlwcMr38CW7ildpeiHNHVY5furjD3zgZ
	iYIT3uqLsUdnNa2TK7RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oweZf-002f4t-NX; Sun, 20 Nov 2022 07:17:07 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oweZU-002euk-Ew; Sun, 20 Nov 2022 07:16:58 +0000
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.53])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NFMDH2r5vzqSMb;
	Sun, 20 Nov 2022 15:12:47 +0800 (CST)
Received: from huawei.com (10.67.175.31) by dggpemm500024.china.huawei.com
 (7.185.36.203) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Sun, 20 Nov
 2022 15:16:39 +0800
From: GUO Zihua <guozihua@huawei.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <heiko@sntech.de>
CC: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <bivvy.bi@rock-chips.com>
Subject: [PATCH] phy: rockchip: Fix resource leakage in inno_dsidphy_power_on
Date: Sun, 20 Nov 2022 15:13:30 +0800
Message-ID: <20221120071330.31154-1-guozihua@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.67.175.31]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemm500024.china.huawei.com (7.185.36.203)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221119_231656_689313_828419EE 
X-CRM114-Status: UNSURE (   7.17  )
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

inno->pclk_phy and inno->ref_clk is not unprepared in error path.
pm_runtime should also be put. This patch fix these issues.

This resolves smatch warning:
inno_dsidphy_power_on() warn: 'inno->pclk_phy' from clk_prepare_enable()
	not released on lines: 607.

Fixes: b7535a3bc0ba ("phy/rockchip: Add support for Innosilicon MIPI/LVDS/TTL PHY")
Fixes: f0684c1a8367 ("phy/rockchip: inno-dsidphy: generalize parameter handling")
Signed-off-by: GUO Zihua <guozihua@huawei.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
index 2c5847faff63..20ba716f5dd0 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
@@ -604,6 +604,9 @@ static int inno_dsidphy_power_on(struct phy *phy)
 		inno_dsidphy_lvds_mode_enable(inno);
 		break;
 	default:
+		pm_runtime_put_sync(inno->dev);
+		clk_disable_unprepare(inno->ref_clk);
+		clk_disable_unprepare(inno->pclk_phy);
 		return -EINVAL;
 	}
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

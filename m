Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEFB2CA9EDE
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 04:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QRh4IDedxZVgi2vjdCGyYPa9CEfIu9sdQnC/F7lAXwg=; b=DNUn80/kIHAKcT
	AA9bmqHQ6PmyCzEEVitX7NIG6HBTEZycdWu4saugOu8VjEEEcuLiXkwsEZFJEsCPMqkMFiL78+YOj
	Eo8164UKf26p8xlXkcGt55xTK076G54RUk15UcTWMN3QQ0Rs+ahqjjr+YkFnt8Ny680ecmTuLNold
	3XsJvVrLZAmsDoZhPyNh1VNORIad8cgu0HnLu7TBKZJDo0+3NmMs+GjTsLrvHskYqOjAzRdGCuDn5
	uJhRpQ882fFYmrLuQliNHnIeERgNfJzp35qD/wf9tFHDa7GhrdYPAnsqZO72WHrlmiiIl+dC7yKnO
	pHeXv36uiw0zHRUsKB5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHCdT-0000000GmMY-2mGq;
	Thu, 15 Oct 2026 04:00:07 +0000
Received: from mail-m10169.netease.com ([154.81.10.169])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHCdN-0000000GmLP-1YbV;
	Thu, 15 Oct 2026 04:00:05 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 511c64fea;
	Thu, 15 Oct 2026 11:59:55 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] phy: rockchip: naneng-combphy: Fix overwritten PLL SSC control bit
Date: Thu, 15 Oct 2026 11:59:47 +0800
Message-Id: <1792036787-37927-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa13db771c103a4kunm0d452a123b0e15
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQkpMHlYaGkJLGhhPH0
	gaTh9WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=UsVVxotJPQ1v+E+yDQ7Hi3OH6sxoy5G2le0fc7Kf46PYtHIc/cK8J2RGT0KFe/VlZTC7a7MQ8Cbbb7bNvBv2gwl8Xod/CFpt6nzvR6Uc0zSs8AfQoelkaJfkBqSBKWkCxF1W13N9FQ076FLaUPmurKAHWGwyIGTlj4LzuwYaLB0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=5ouESOob9KPg2dEHIqwtyo3anJ0ed+UGtz0b1buJpts=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_210002_319726_E5F969F4 
X-CRM114-Status: GOOD (  10.56  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

rk_combphy_common_cfg_ssc() first sets RK3568_PHYREG33_PLL_SSC_CTRL on the
RK3588 and RK3576 SoCs, then, for PCIe at 24MHz, programs the PLL KVCO
adjust field. The latter used a plain writel() of the FIELD_PREP() value,
which cleared all the other bits of RK3568_PHYREG33, including the
PLL_SSC_CTRL bit that had just been set a few lines above.

Use rockchip_combphy_updatel() so that only the KVCO field is updated and
the SSC control bit is preserved, as the comment and the pre-consolidation
code intended.

Fixes: 0b31f297557f ("phy: rockchip: naneng-combphy: Consolidate SSC configuration")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 3102a99..b6cc010 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -526,7 +526,8 @@ static void rk_combphy_common_cfg_ssc(struct rockchip_combphy_priv *priv, unsign
 
 		val = FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
 				 RK3576_PHYREG33_PLL_KVCO_VALUE);
-		writel(val, priv->mmio + RK3568_PHYREG33);
+		rockchip_combphy_updatel(priv, RK3568_PHYREG33_PLL_KVCO_MASK,
+					 val, RK3568_PHYREG33);
 	}
 }
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

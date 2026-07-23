Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36794C531D0
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 19:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hp//2aBl9CIWIHHDqGTk3qPBsBkDSx9wu+rm62nW74Q=; b=RrlzPRPvj1MK2u
	dUGZP6qKfTjV91ISUXv3/lvm/N1T3KvfCGVA8iuIq4nClwLLIbmiaVFtAyDdgRKHaTsNKFcMRTkFJ
	lVk0RcwaueuSiE06nLO5zoc+Q4nH3lxtddmfaonDupc9EbI40DAY2pxW28a2gAziYZFXW6g+L/UTn
	gD9ufczmWITC4aUBdgSImfPtRflc8gbh7QiWCRP3tDilRfEVfyuvI71WVRy7JMkACWRia/1ZXYNUi
	AmWa6OreRQaGuvG296wICUlodN9NWnIuQzyz6XYtzgNHYRteS4AC9p+FRPst/JE4SJT/xEr9UKtTv
	9gHQSALZWaZS0KpmKa0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzJR-0000000EzJW-3oYr;
	Thu, 23 Jul 2026 19:42:33 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzIp-0000000EykR-0itB;
	Thu, 23 Jul 2026 19:41:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784835711;
	bh=Ii50quaNQ/xCX/bGr1AWgM8pL/yTxjNnuc4DhrYCdls=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=QiWTkor/umzCt9tZ4s0Wlfo+j4q18jPP+axwAqeJWDcmP1JrbJhv4TTIintvi1NgQ
	 DlZzd4cox60t9Gs96s3bkhq4oh64xLDDpNEqFaH9iqH9j5M/U84M/RBXIra467htKY
	 icgNHp2S/TgDW5OrC58XMQGVkh0WKXd3mKhZG7ddkqB+8V6ThvsLXhhYkJGVMoRICD
	 8WFtVwL8Hj2u/a3kTkbSaL60SBjR2zCSsiQrsy/TnlDxUcgZ1uJ+0bLB7TYpzBk4YQ
	 25uD65pJttDdvF9Eujcv1XpcMT0V8gVjlTFbJ/wAS128Zo0lOWiJZ6iwd9nxmryhPx
	 U6G+iiCcUAgFA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C774817E1274;
	Thu, 23 Jul 2026 21:41:51 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 23 Jul 2026 22:41:50 +0300
Subject: [PATCH v5 07/10] phy: rockchip: samsung-hdptx: Consolidate
 consumer_put on error path
MIME-Version: 1.0
Message-Id: <20260723-hdptx-clk-fixes-v5-7-8e786067865f@collabora.com>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
In-Reply-To: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_124155_387333_35A0DDC8 
X-CRM114-Status: GOOD (  10.06  )
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

rk_hdptx_phy_consumer_put() is invoked in both branches of the mode
check conditional in rk_hdptx_phy_power_on() on the error path.

Simplify the code by moving the single call to the end of the
function.

No functional change intended.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 31abff5ada9e..eda8e5055588 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1685,8 +1685,6 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
 		rk_hdptx_dp_pll_init(hdptx);
 
 		ret = rk_hdptx_dp_aux_init(hdptx);
-		if (ret)
-			rk_hdptx_phy_consumer_put(hdptx, true);
 	} else {
 		dev_dbg(hdptx->dev, "%s rate=%llu bpc=%u\n", __func__,
 			hdptx->hdmi_cfg.rate, hdptx->hdmi_cfg.bpc);
@@ -1703,11 +1701,11 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
 			else
 				ret = rk_hdptx_tmds_ropll_mode_config(hdptx);
 		}
-
-		if (ret)
-			rk_hdptx_phy_consumer_put(hdptx, true);
 	}
 
+	if (ret)
+		rk_hdptx_phy_consumer_put(hdptx, true);
+
 	return ret;
 }
 

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

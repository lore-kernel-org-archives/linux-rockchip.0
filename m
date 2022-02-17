Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 002CFC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 08:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXDL4o22OSrsF4lTl2vdutHPNKt+eHwc59LtgTltFz0=; b=FzKPCWnfVBU36E
	9tSd9Xbl8c7kU9ZD/IlZFIWubHyNrZB/ExUDDc+80cCvCAIsDMBnFOJga6WDJD3uZJNBXCsp//fxY
	kBkyIzXe+014jl8YTBvGx+EzKEIW3lFuEu5xp8l4avObFuLK30zcIIlvL564hHOEDqMkItqoBMejq
	d+Qugxci1WJIfNQcFPwLYBpQBL4XhTnnJl4bKb2wltgjETEfdLGR5AVPb3SEJYUSzOPeu1fLCng10
	LgmfnLy6HbsSdFlQYWFMbgzHeIHEvPkTgHSp46Tpq1qvD77Ad+LGkS2cgkCi2rp2eR9Zj8SCtM9bA
	0yB9J3C4XUetJLzyxBSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKcJT-009UwT-CQ; Thu, 17 Feb 2022 08:38:55 +0000
Received: from desiato.infradead.org ([90.155.92.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKcB8-009QNL-5v
 for linux-rockchip@bombadil.infradead.org; Thu, 17 Feb 2022 08:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=VaKMrEEeFPN7aNF7Sar4hgoeoNs2wITqDPQKn6ydxDg=; b=b3qVIKvF2ZH26pZcEafN5uMszz
 bg0xrFl+T1ydtFcvTurPrHFhuzeG1b4aNN3TneApDlyqIFogSmQFQDMBPx3BM4b+K/AHURcPdA9uP
 JwCXHuuNXhUvmF99H+EZel2CbFg+osRSNGwTJaHEPkIzppWEjORnKPqT01h1GAnnOROXbKYnct6Ys
 QP+KGs8p/9l1akhdVdtbDqBzHkU7VdP8LnhO8FBzfrPSp9+39iY5nZ5rCnd7vbs1bcYOaKd56TJDM
 6IIiPXWEXeDVU9ilha66oCv2/MxuVotPbH9nLDIpVT6FZDqb/YnvTpDmTqG7DQlOzNK84e/cgPxgD
 7BviYTmA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKcB0-00AXtP-Iv
 for linux-rockchip@lists.infradead.org; Thu, 17 Feb 2022 08:30:16 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nKcAw-0002EC-GM; Thu, 17 Feb 2022 09:30:06 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nKcAp-00ClTO-WA; Thu, 17 Feb 2022 09:29:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Nickey Yang <nickey.yang@rock-chips.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v6 14/23] drm/rockchip: dw_hdmi: add default 594Mhz clk for
 4K@60hz
Date: Thu, 17 Feb 2022 09:29:45 +0100
Message-Id: <20220217082954.2967889-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220217082954.2967889-1-s.hauer@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_083010_692687_59F4776B 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
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

From: Nickey Yang <nickey.yang@rock-chips.com>

add 594Mhz configuration parameters in rockchip_phy_config

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v3:
    - new patch

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 4f2aff4b512d8..2c9e3d82fbc69 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -192,6 +192,7 @@ static const struct dw_hdmi_phy_config rockchip_phy_config[] = {
 	{ 74250000,  0x8009, 0x0004, 0x0272},
 	{ 148500000, 0x802b, 0x0004, 0x028d},
 	{ 297000000, 0x8039, 0x0005, 0x028d},
+	{ 594000000, 0x8039, 0x0000, 0x019d},
 	{ ~0UL,	     0x0000, 0x0000, 0x0000}
 };
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

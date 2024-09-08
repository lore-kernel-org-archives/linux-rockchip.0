Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27627E6FE49
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 13:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQA3bVrDwWf+czwVt8Zp7hUvtRIAGsRGIgXDvZqG+cI=; b=En3XFytw2oBefK
	xoviYbHxNeciyAOGt0DC1mPJDC98qxhVX+7iTfomFUPiWjnPuDe6cyw5D/8FhbgJez+W66K7uOeP6
	FMvkxY+c4ADo9o2yXyPmtjYzl1GVgkRr1nGZDpz+s4q7xT55Z305o1YTEOSrLdIhRawH0tz1Nu16K
	Lo13S2Nlm0GfA5xRmxiwBQ8aD0YcZXslayP5zbQOhe2H71EM1Gtqtsg2BKJFe1Mzd0VtspXexfC5b
	osa+2Z0ZdGNmRIZhNSw+LvDUL7SfG2CRuBtqcMh3avgeJB0n2/pdtRC4ydzpQ9FpSZnfBlfWFLv87
	362xSqVHIbWKXd2olfww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snHyW-0000000Gpyw-03G5;
	Sun, 08 Sep 2024 13:29:08 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snHyT-0000000Gpw5-0W1c
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Sep 2024 13:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1725802119; bh=Kv653550ZAaYWcH77Mo8Hgi73sCYCuyVNLs67561gpQ=;
 b=MeyI+Xr9e5DGYFdF8X8Zcctpz8J3Ytfvis5MqM/5+ASyyuVckg0YITWoqFKtg6WNLzBTktxN6
 rhAVUyzVuEio18nugu8UT+SwCXqrJPjdHWrrE2ByjdbP7CL4wNe2vo8Ar3qrCNxUoaLpVZIU58C
 jeSlopzkOszghoA2RE605iS0Vq5ySTe+2DfDQiyKfzUMcD+xtXDjS2FVDED61O0atDmyaRmJdbp
 t+rdVkUb23eqTykIunpkyFg0lkPHBq6EjKhLD0phhN+Jx1e03sZjoWciYcRjQR0AluA7DL1N9/u
 /kPEMlmTZjnlKnTevrlbJaAIQS4aXxV16ihCgB6YolXQ==
From: Jonas Karlman <jonas@kwiboo.se>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Lucas Stach <l.stach@pengutronix.de>
Cc: Christian Hewitt <christianshewitt@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/10] drm: bridge: dw_hdmi: Only notify connected status on HPD interrupt
Date: Sun,  8 Sep 2024 13:28:04 +0000
Message-ID: <20240908132823.3308029-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240908132823.3308029-1-jonas@kwiboo.se>
References: <20240908132823.3308029-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 66dda6873c9877b459587918
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_062905_517149_2D5F556E 
X-CRM114-Status: GOOD (  11.18  )
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

drm_helper_hpd_irq_event() and drm_bridge_hpd_notify() may incorrectly
be called with a connected status when HPD is high and RX sense is
changed. This typically happen when the HDMI cable is unplugged, shortly
before the HPD is changed to low.

Fix this by only notify connected status on the HPD interrupt when HPD
is going high, not on the RX sense interrupt when RX sense is changed.

Fixes: da09daf88108 ("drm: bridge: dw_hdmi: only trigger hotplug event on link change")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: New patch
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index 9e7f86a0bf5c..055fc9848df4 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -3123,7 +3123,8 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
 			mutex_unlock(&hdmi->cec_notifier_mutex);
 		}
 
-		if (phy_stat & HDMI_PHY_HPD)
+		if ((intr_stat & HDMI_IH_PHY_STAT0_HPD) &&
+		    (phy_stat & HDMI_PHY_HPD))
 			status = connector_status_connected;
 
 		if (!(phy_stat & (HDMI_PHY_HPD | HDMI_PHY_RX_SENSE)))
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

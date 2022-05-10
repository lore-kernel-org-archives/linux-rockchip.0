Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A227C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 May 2022 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EuYd2O4RXpJowo8VYcHlVQxUCYVhjkpFJZu4dmEke8=; b=RBw7abf8jvb/wj
	RkfWsJsCHVVNxgoseUuS4N4quiNoy3k3uY0fwdbZPaY6C1EEMhkXFMYTPKv7MicfxrX8AOwJRfr/I
	92W1F8+ZjbkiXF3k4qMT9xgFfo5QTVjgESSSL7H2QJnaDHWsMTtdAT6KKOydHlsM1ffLCOk2JNNMP
	UnczjertsqE38WG02IAXMsdMPlqMjbeCzU5UXY5uhSXMa3mdLWYZXi3MCEo+xLY4P8+Zt1/8xMiVZ
	ZYiTJacGkyG9qwcRmkBQIzw91S5gfYhmGfbLQWmv647yRc/wd74vblTQoxJyO+oLjTSkev2WlcRMd
	DYu5sM0SVq4xtI/UB+eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noK0k-000I0w-6f; Tue, 10 May 2022 07:10:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noJzv-000Hcs-OJ
 for linux-rockchip@lists.infradead.org; Tue, 10 May 2022 07:09:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1noJzk-0007T1-Ks; Tue, 10 May 2022 09:09:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1noJzi-001RkA-3O; Tue, 10 May 2022 09:09:16 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1noJzf-009qKF-R2; Tue, 10 May 2022 09:09:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 2/3] drm: rockchip: Change register space names
Date: Tue, 10 May 2022 09:09:13 +0200
Message-Id: <20220510070914.2346011-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220510070914.2346011-1-s.hauer@pengutronix.de>
References: <20220510070914.2346011-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_000931_837780_D3B51556 
X-CRM114-Status: GOOD (  12.64  )
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

"regs" seems to generic when there are multiple register spaces, so
rename that one to "vop". Also change "gamma_lut" to better looking
"gamma-lut".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 8d1323a47f822..d463ea80b6569 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2620,7 +2620,7 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 
 	dev_set_drvdata(dev, vop2);
 
-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "vop");
 	if (!res) {
 		drm_err(vop2->drm, "failed to get vop2 register byname\n");
 		return -EINVAL;
@@ -2637,7 +2637,7 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "gamma_lut");
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "gamma-lut");
 	if (res) {
 		vop2->lut_regs = devm_ioremap_resource(dev, res);
 		if (IS_ERR(vop2->lut_regs))
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

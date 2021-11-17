Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BE5CC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 14:37:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D7DF26138D
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 14:37:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D7DF26138D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUB3qLj/ERnqghkyRHRtpGTAHayEiW4TbRdrD1lfffI=; b=o6e7z2Ffv1vVb6
	fN6lDwcD0s3L0dbPKZeYw+0Ir9n03IuXvoDekn8yaKa3DYQ4UShfoSNJgO84jF+ztZ9pNOwyXw5Q3
	NQxKRWVdwup39ydaF4QobO7PzRYZ/tYiWSf4+2ObmynlqrRpk3/cBSYw5EuaLS37gG2tPiidvHlC6
	+tkX4VBicWN5w0Zg3ZL4ergl2q3kLQhr7ZE8O+WR0WxxlFoF1w9bXOdosXB0aLHaiWpV2QB0GlD22
	kKUyPavn6esLUF8Lghe3F/1i9gkqJ/EOu7qtX1baMT3HQeHCKOIdRVX/v7s3XbtmPnFEgHwxx4fGI
	qCYstxg1P9rxagiVQODQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnM3w-0059Bm-W4; Wed, 17 Nov 2021 14:37:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnM0y-0057Vu-1A
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 14:34:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnM0e-0005te-FA; Wed, 17 Nov 2021 15:34:00 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mnM0b-001P6K-2l; Wed, 17 Nov 2021 15:33:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 05/12] of: graph: Allow disabled endpoints
Date: Wed, 17 Nov 2021 15:33:40 +0100
Message-Id: <20211117143347.314294-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211117143347.314294-1-s.hauer@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_063420_098057_62F19BB2 
X-CRM114-Status: GOOD (  13.04  )
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

There are cases in which a SoC allows many different routes between
components, but not all of them make sense for a board. With this patch
we allow standard status = "disabled" properties for ports. With this
a SoC level dtsi file can describe all possible ports and only the ones
that make sense for the given hardware are enabled at board level.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/drm_of.c | 6 ++----
 drivers/of/property.c    | 3 +++
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 37c34146eea83..c2fd9fe505767 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -67,10 +67,8 @@ uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
 
 	for_each_endpoint_of_node(port, ep) {
 		remote_port = of_graph_get_remote_port(ep);
-		if (!remote_port) {
-			of_node_put(ep);
-			return 0;
-		}
+		if (!remote_port)
+			continue;
 
 		possible_crtcs |= drm_of_crtc_port_mask(dev, remote_port);
 
diff --git a/drivers/of/property.c b/drivers/of/property.c
index a3483484a5a2a..40f8da7baa0a9 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -730,6 +730,9 @@ EXPORT_SYMBOL(of_graph_get_endpoint_by_regs);
  */
 struct device_node *of_graph_get_remote_endpoint(const struct device_node *node)
 {
+	if (!of_device_is_available(node))
+		return NULL;
+
 	/* Get remote endpoint node. */
 	return of_parse_phandle(node, "remote-endpoint", 0);
 }
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

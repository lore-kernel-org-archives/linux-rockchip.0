Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44705C5519F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 14:16:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A66A4206B5
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 14:16:26 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="H9Ma7R1h"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A66A4206B5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7cR8xYUUnK5fRMRZVYkroYfwUWn5MfSEPnyfa4LBwJ0=; b=H9Ma7R1h/vFLQb8Non6VT+CBgb
	SvT42TLRwCG+JpvzIoXn7OOwCOEVx9YVcSWlTvX6/FFJ54NcJLnzzExOYiKp4h0EAjLz8nEMAQTQo
	EqDKfcIYf83TsEnMrIuaZHpqS67nOJ0BUDnJ01rAXxzRcFA3g+HTimiuGwTqgM7I+XF0Y6hZ4OGQC
	ANogKAxe0ifyHoDwWSofsgCSq+alVYINLj9iWCYST+KaU/N/5lSAkEs5k2hL6FxBRYXbldxEgoDlt
	BXjqV7lkDsCJUg1/XmPVUk0jqUd+i7My9PrBzcUipoFGYA9uhgv/L0D2MvMuGl78HfodOQ26DxudK
	Op6qPjFQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kefIt-0007Pf-W2; Mon, 16 Nov 2020 14:16:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kefIq-0007Ni-8T
 for linux-rockchip@lists.infradead.org; Mon, 16 Nov 2020 14:16:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id A2F101F46EB9
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: hjc@rock-chips.com,
	heiko@sntech.de
Subject: [PATCH] drm/rockchip: for error print, use the correct device pointer
Date: Mon, 16 Nov 2020 15:16:09 +0100
Message-Id: <20201116141609.26719-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201116141609.26719-1-dafna.hirschfeld@collabora.com>
References: <20201116141609.26719-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_091620_416979_BA95A11D 
X-CRM114-Status: GOOD (  10.99  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: enric.balletbo@collabora.com, linux-rockchip@lists.infradead.org,
 dafna3@gmail.com, kernel@collabora.com, dafna.hirschfeld@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

There is a use of DRM_DEV_ERROR(dsi->dev,..)
which should be replaced with DRM_DEV_ERROR(dev, ..)
since dsi->dev is set later

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 542dcf7eddd6..a610335eaa6e 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -1089,7 +1089,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 
 	dsi->grf_regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
 	if (IS_ERR(dsi->grf_regmap)) {
-		DRM_DEV_ERROR(dsi->dev, "Unable to get rockchip,grf\n");
+		DRM_DEV_ERROR(dev, "Unable to get rockchip,grf\n");
 		return PTR_ERR(dsi->grf_regmap);
 	}
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

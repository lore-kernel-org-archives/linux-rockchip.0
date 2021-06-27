Return-Path: <SRS0=BBFb=LV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3ACEC49EAB
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Jun 2021 08:48:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 31CF761C29
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Jun 2021 08:48:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 31CF761C29
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JsaK8FSfUD+kCdzIHaeueL52QRMfptFl7xVf+OBATKQ=; b=o/JbEmLxp7Evjj
	ZxQIwF+4uUvmyTGtCYS7aPSlKFLFLOVTNHgJEsfqMA2CtiKOToUdGWDZKRloZnMdMwBkuvG4KBgqW
	1uGQ3VLEgfTG+i6jvo8x7yv8FvmULMCg0i7nU6CYr+H8mo4UWND0JxDTWT8SDhh29JqVv0rQezUYK
	zpFIu3nUbmAxulVbZ7pwDADlA1FLCnR4oGDzN/X2/fKpN0+U4uu3ZhDUqE5WL5ynmY6VJEjkPu/Q0
	h/ed/D2IWSi7bbGAWCB8NgVcoV9wdkW9O5RSCB+yxK35H3FXsiXsYm3e7At4KN9QXs43GX/pDuGE2
	A+ZIBLeZ7LKPvcfu2BRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxQSU-005NGI-B2; Sun, 27 Jun 2021 08:48:06 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxQSH-005NE9-KY; Sun, 27 Jun 2021 08:47:55 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 0A31ACF056;
 Sun, 27 Jun 2021 16:47:45 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P12363T139708910794496S1624783659924687_; 
 Sun, 27 Jun 2021 16:47:46 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <456593cc75213b8b0db436fb9310d05b>
X-RL-SENDER: andy.yan@rock-chips.com
X-SENDER: yxj@rock-chips.com
X-LOGIN-NAME: andy.yan@rock-chips.com
X-FST-TO: hjc@rock-chips.com
X-RCPT-COUNT: 7
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Andy Yan <andy.yan@rock-chips.com>
To: hjc@rock-chips.com, heiko@sntech.de, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] drm/rockchip: Check iommu itself instead of it's parent for
 device_is_available
Date: Sun, 27 Jun 2021 16:47:37 +0800
Message-Id: <20210627084737.309163-1-andy.yan@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_014753_958222_620011F1 
X-CRM114-Status: GOOD (  11.33  )
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

When iommu itself is disabled in dts, we should
fallback to non-iommu buffer, check iommu parent
is meanless here.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 212bd87c0c4a..0d20c8cc1ffa 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -366,7 +366,7 @@ static int rockchip_drm_platform_of_probe(struct device *dev)
 		}
 
 		iommu = of_parse_phandle(port->parent, "iommus", 0);
-		if (!iommu || !of_device_is_available(iommu->parent)) {
+		if (!iommu || !of_device_is_available(iommu)) {
 			DRM_DEV_DEBUG(dev,
 				      "no iommu attached for %pOF, using non-iommu buffers\n",
 				      port->parent);
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

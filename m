Return-Path: <SRS0=EhM5=J4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C145BC433ED
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 May 2021 15:21:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5658661462
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 May 2021 15:21:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5658661462
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=wanadoo.fr
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SHECZdJvbNhy7vKmNjAC8vTWMydaZLPxIcH2FDvhuqM=; b=nahfDdxqYsoXjImrP2IWNCh8cx
	4923U9cc9OiHKnlmK2NriaVpAauu6uxy9CuKpaibuSISZd9gcnNrDFcYXk83cKQiWzFhLg/gcHg9w
	dyOlvuD5V/ZUxuXF6g5nbE6CEjywKUlwMAmOMTn3wVuPVlzhexI86DIsorakE+Kxy/yGGW5Dh3oQN
	2rbnOk4fhLJrZI/H5QWCxVqXFQG5Eloc4XnGPE5qL6YRuragDKzqxovydK+IIm4eOiQ5npjh8A7N3
	/CZySxxiB3YthtlijcNo7M/o+xt1sA0icYhX8WEC6BZtoj0Iovz22SxK9dVxAtKHm1cH4TH09kSKd
	LNmxGUZw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcrQR-00AGsY-Od; Sat, 01 May 2021 15:20:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcrQQ-00AGrt-8R
 for linux-rockchip@desiato.infradead.org; Sat, 01 May 2021 15:20:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=bONLIDkXw2BpdlVf19Ul++H1ru5xam3FaowW5IXNpMk=; b=Uk42VLtFfymHx8I2FZLd0i5613
 QZXwMiqUbWqNEeqoncCuo0ox/LgixZ8GwY79WO84DkG3Od1/9ewYe08JrgSCQtyxaI1pVlA4pxqfB
 wnFo+K1Ep8CpLrKsYFu07oh02VNzF1zHaB1KMFscyAD4WvKOxQPhXbx2DIqHFzqqIFVVJP9CB3PE7
 hNdEMz2ZVtrRtu6+b0LnG8BZ0CtBhkHaebg9kozeNU8J8N0G6JLpvVSWhalILxRc38wPEYDUrP+cI
 ttMB9FniLjzu9WhtgYWjrDsQ7PipHKGuV0ApYUaeNGG6OQ9pSFoytiO2A7Ua3AGT2EAUrNiGD+Cqd
 sh3Qnz8g==;
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1lcrQN-0022ZB-F6
 for linux-rockchip@lists.infradead.org; Sat, 01 May 2021 15:20:57 +0000
Received: from localhost.localdomain ([86.243.172.93]) by mwinf5d06 with ME
 id zTDH2400S21Fzsu03TDJFe; Sat, 01 May 2021 17:13:20 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 01 May 2021 17:13:20 +0200
X-ME-IP: 86.243.172.93
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: hjc@rock-chips.com, heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch,
 miquel.raynal@bootlin.com
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH] drm/rockchip: Fix an error handling path
Date: Sat,  1 May 2021 17:13:16 +0200
Message-Id: <248220d4815dc8c8088cebfab7d6df5f70518438.1619881852.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210501_082055_667271_C3452361 
X-CRM114-Status: GOOD (  10.85  )
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

'ret' is know to be 0 a this point. Checking the return value of
'phy_init()' and 'phy_set_mode()' was intended instead.

So add the missing assignments.

Fixes: cca1705c3d89 ("drm/rockchip: lvds: Add PX30 support")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index bd5ba10822c2..489d63c05c0d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -499,11 +499,11 @@ static int px30_lvds_probe(struct platform_device *pdev,
 	if (IS_ERR(lvds->dphy))
 		return PTR_ERR(lvds->dphy);
 
-	phy_init(lvds->dphy);
+	ret = phy_init(lvds->dphy);
 	if (ret)
 		return ret;
 
-	phy_set_mode(lvds->dphy, PHY_MODE_LVDS);
+	ret = phy_set_mode(lvds->dphy, PHY_MODE_LVDS);
 	if (ret)
 		return ret;
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

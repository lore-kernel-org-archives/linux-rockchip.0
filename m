Return-Path: <SRS0=wwH4=JM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCA7C43600
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Apr 2021 08:47:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 12BDC61249
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Apr 2021 08:47:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 12BDC61249
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.alibaba.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mPZug2tLD4SBx3mnU+I8sbxsGSU/io3EcX8bH/x3+8U=; b=W5rQ9QcWWXICj2Ibmd8gdwd+U1
	pSQt2l4G+eDj72Vdk1wr+nDDoGJaXrLsMXoVPDezFAG+usADOwnrUJh8ysVXrC5VR/i1Ggdeascew
	sXySt1066wIc+HnqiGzvbnF5okyqw27mdjKKFJb1u9XtatQJzNzf++h5yHXUKemIT+tUraRTQyM7Y
	8tv/O9RBZ//L583ANNjQgTtX7h3Go3wk0dRK56BpOxmq1hKQpBdnuXRqdZEv0V8mfYEo5WalCmV5k
	DYm5kp/I8lf+ph8QPvHWycQ7DzyjY6JP9PFcEpOqxjK4miDNNRaPspKnTTDMkYtelI7GZrinZvjvL
	lHwRQBag==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWxep-00FOz9-ND; Thu, 15 Apr 2021 08:47:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWxed-00FOwR-0I; Thu, 15 Apr 2021 08:47:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=fcGzMMf78qtkfX5azXhy4zFScqEu279+eNJvUzvcMHA=; b=adaBOOQVuR163cxMP1L0QJyknG
 DkL9L3QA4qd0asucIn2dLh+O0zEdERyAQQzK5/ZeLgel8q5vfUIm4WZ/0I90TvoICpTA9vkGfhxUE
 TQTXJ/Rm28KMydwWmpFeTQET08y8lpmpNBcoFKbBejtcRGhcFAnP5O0Da1XhNjOC7R68WP7qCuv1T
 OYUr8BW1rF2QPCmf/MIDK8Se8sib7qhKWmuh7aAbCFDIj258731KwEw8YQuSDJJlm9g+ohTbNJ1gR
 6g+zd0TCwU3Lyfe8VNp0sYzChpxbRJIWS1XNyWqIdw0nnwQaGvPrpYsouXy3Bl+mQnleY0ljrwHLp
 CXZ4EmAg==;
Received: from out30-130.freemail.mail.aliyun.com ([115.124.30.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWxea-008OWg-3a; Thu, 15 Apr 2021 08:47:13 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R151e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04395;
 MF=jiapeng.chong@linux.alibaba.com; NM=1; PH=DS; RN=9; SR=0;
 TI=SMTPD_---0UVdGEaf_1618476423; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:jiapeng.chong@linux.alibaba.com
 fp:SMTPD_---0UVdGEaf_1618476423) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 15 Apr 2021 16:47:09 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: hjc@rock-chips.com
Cc: heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Subject: [PATCH] drm/rockchip: remove unused function
Date: Thu, 15 Apr 2021 16:47:01 +0800
Message-Id: <1618476421-114429-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_014712_332214_81AFD10F 
X-CRM114-Status: UNSURE (   5.83  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fix the following clang warning:

drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c:320:20: warning: unused
function 'dsi_set' [-Wunused-function].

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 24a7109..60d64a1 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -317,11 +317,6 @@ static inline u32 dsi_read(struct dw_mipi_dsi_rockchip *dsi, u32 reg)
 	return readl(dsi->base + reg);
 }
 
-static inline void dsi_set(struct dw_mipi_dsi_rockchip *dsi, u32 reg, u32 mask)
-{
-	dsi_write(dsi, reg, dsi_read(dsi, reg) | mask);
-}
-
 static inline void dsi_update_bits(struct dw_mipi_dsi_rockchip *dsi, u32 reg,
 				   u32 mask, u32 val)
 {
-- 
1.8.3.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

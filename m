Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26BA9C41513
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jul 2024 22:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zxs8jQFRn4EHr53UpbgsH654k38VmfJGE0V9H29xVtg=; b=hLdg6OgRYrv+QY
	GGmDHUxY3VKEKZ3OOT04/0B+YsogM9+Cm5n5VWgwj+hlshGUnWMz7TNzdNu+p++s5atlfxQt2YStf
	NZqMRgR844AqTtg+FoUou6QpJImJoTaTuYbUggdUg+CCZQNEorMbbMh/lhNb61RvUGeUu9Y19dYdx
	R7PdW5QKUJahTpky9i87aKdHbldnxyeoKBA+7NBMR7ouEM2oHPtX/0/Shh9bAHAABowCPyQM5vq67
	QF1kxXEPXTGo/yNzxo+FpypTHFDMOs9i2zvxhzWvl2ww5Inpe0Dmy3Ge8LwcMO5KPEBnDmfS43/Gs
	HFornXIra0DU4YJR7KRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP8QN-0000000BdYW-3Njs;
	Wed, 03 Jul 2024 22:26:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP8QI-0000000BdWB-0jS0
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Jul 2024 22:26:00 +0000
Received: from pendragon.ideasonboard.com (117.145-247-81.adsl-dyn.isp.belgacom.be [81.247.145.117])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A96D1A27;
	Thu,  4 Jul 2024 00:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1720045528;
	bh=TTPnUr61Pgf5v46sRCccdeyyuku5BaST+clpOdnxGcI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Hqy3ORUnNzzaot3R5NxQUuEO9n1EUoqM6d1s+zA5L/wZK7rtBMj6q7sgeL4KzqplJ
	 bLN9Jl7BGQ+PVQPqC1xHN82PU8zaaUpdbSk1Tfkicvqr8YJBHE2VXKLvmkrg6MjV7c
	 dRgT5Ru98QvM3KI4I8KA65A7Sr/S4ODGQTfNqc00=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v1 2/5] media: rkisp1: Add features mask to extensible block handlers
Date: Thu,  4 Jul 2024 01:25:30 +0300
Message-ID: <20240703222533.1662-3-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240703222533.1662-1-laurent.pinchart@ideasonboard.com>
References: <20240703222533.1662-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_152558_371902_E20E774E 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
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

Future ISP parameter blocks for i.MX8MP-specific features will not
support on Rockchip platforms as they lack the corresponding hardware.
Introduce a features mask in the extensible block handlers to indicate
which device features a block require, and ignore blocks that require
unavailable features.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index b10cc2701244..92312b4dabf6 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -1845,6 +1845,7 @@ static const struct rkisp1_ext_params_handler {
 	size_t size;
 	rkisp1_block_handler handler;
 	unsigned int group;
+	unsigned int features;
 } rkisp1_ext_params_handlers[] = {
 	[RKISP1_EXT_PARAMS_BLOCK_TYPE_BLS] = {
 		.size		= sizeof(struct rkisp1_ext_params_bls_config),
@@ -1956,6 +1957,10 @@ static void rkisp1_ext_params_config(struct rkisp1_params *params,
 		if (!(block_handler->group & block_group_mask))
 			continue;
 
+		if ((block_handler->features & params->rkisp1->info->features) !=
+		    params->rkisp1->info->features)
+			continue;
+
 		block_handler->handler(params, block);
 
 		if (block->header.enable == RKISP1_EXT_PARAMS_BLOCK_DISABLE)
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

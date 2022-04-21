Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16559C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 23:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXqhdkUpyiGnGG/6siYCgp+xGVo+Ez2hQQbhWI4cH4A=; b=qh9PVMvOaXx8Lb
	jOBuXa72tJw+wvYmSRE0TmLHd2mwnfnVkseBX7rjHo008sU3O7ifZePNTJUDVH9CML7tj48Yok/n8
	1lgsFDOexpac6TRCiL/NkZHv61Q1Wahr2kDGBTOR3daJyzLWJ4vJ+XR9zhXu0JeYtQotAIa/DeW4T
	iOfollM6IM/T5lVh7OO2UsUV72FP0fLVpvqio9Njc89/bBIMO0lsUTNzsi0FBDdcgg6s+zMKvwB6o
	qlx34QYoDceV0j0YQt6Roxad8z7WZ0FnePYlCcfTeXMu9JQNRakJF0Wu6lQv/T+pwo3+rPVon2Vgg
	0Gkq8dDVM7d+2CaXgksw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhgSX-00FOm2-NW; Thu, 21 Apr 2022 23:43:37 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhgRv-00FNvQ-Cf
 for linux-rockchip@lists.infradead.org; Thu, 21 Apr 2022 23:43:02 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 70DA2156A;
 Fri, 22 Apr 2022 01:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1650584577;
 bh=6G6FkI/pwk64+6kq/iSTcUIrG2myQR7PZmGnGGJAy+Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RsiV9ghVlBtoUdYfIEz/NvqSoiBtTX0fYsnmwqMA5WKSzw3pXM3wlTi4pbWQR5iBs
 RF0QcmQIlq7w5HoIpTAyWnW8az1/oahXZ8IIql84BPSu9NVNKuB9FJWRgYr9Ml5eGs
 D48eKRkj5hpP2okOdBZDkuH/Rpjx8b45QvceogDY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 21/21] media: rkisp1: Drop parentheses and fix indentation
 in rkisp1_probe()
Date: Fri, 22 Apr 2022 02:42:40 +0300
Message-Id: <20220421234240.1694-22-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_164259_635230_284AA68F 
X-CRM114-Status: GOOD (  10.38  )
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

Fix a small indentation issue to increase code readability, and drop
unneeded parentheses.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index c7ad1986e67b..97d569968285 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -486,9 +486,9 @@ static int rkisp1_probe(struct platform_device *pdev)
 		return PTR_ERR(rkisp1->base_addr);
 
 	for (i = 0; i < match_data->isr_size; i++) {
-		irq = (match_data->isrs[i].name) ?
-				platform_get_irq_byname(pdev, match_data->isrs[i].name) :
-				platform_get_irq(pdev, i);
+		irq = match_data->isrs[i].name
+		    ? platform_get_irq_byname(pdev, match_data->isrs[i].name)
+		    : platform_get_irq(pdev, i);
 		if (irq < 0)
 			return irq;
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

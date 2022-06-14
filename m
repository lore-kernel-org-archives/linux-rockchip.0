Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5ADCC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgUGjlWJYGvZ31GTIi7oMAjefGEg3+tUx0On/vpDvrA=; b=Kwp5yJwDfGXLDs
	ejNO2Nbx2MLwBJIMVhLIZiAKMnjKFnYiuNEBrvNaFwBPaxNAhRi1j5jmCg5PK1kbadSMbW9PM7Hd3
	ZUVuY/ewr2xMKEpP9Dg2TtASQfkkcBxD7gNTo5SuYMa6nlx3mGR6H1ew7lIz+OiGqyvK1RXj29s1Y
	K+IOqQF8iCH8fVaR3IpA7msx8tnhWO2LkB18nC6grv5M2r7NcHpGRpOw1Cx1cYDsyF6xCya7erY2C
	S0t6BWgZgCszEfv2h8xR/nQzxFagkpF4D4Kr3ok0tXDe8WdMxFcgVPuhvMmYRbG1LJ/ogG3qSHTJa
	+DgPdgQxuD0g63RfSEbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bza-00AuyR-26; Tue, 14 Jun 2022 19:14:22 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzT-00Auqs-0R
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:14:19 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 54BA3825;
	Tue, 14 Jun 2022 21:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234053;
	bh=Ysq+xCMW5F6/ZUgZYbcVb3DpW87wB9+TyL8iuISrRNI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TKX6lsoN/VZQgJyl9fvW91dGzCBsBZLF4I5y0iNgpaPibvBMpwvoptPH4Ic5stoWY
	 J5cStUPGFbeOGqGN/sUSK7+aUWuFIhmntwisz+ySxUXe7YCZyHB0vZEeGRVYtsrit9
	 b/fV8rCC24G4FRY+0R38FrvSoib4CxELnseGZreE=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 36/55] media: rkisp1: isp: Rename rkisp1_get_remote_source()
Date: Wed, 15 Jun 2022 04:11:08 +0900
Message-Id: <20220614191127.3420492-37-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121415_263490_28ACBDC2 
X-CRM114-Status: UNSURE (   9.97  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Rename the rkisp1_get_remote_source() function to
rkisp1_isp_get_source() to use a consistent rkisp1_isp_* prefix for all
ISP functions, and drop the "remote" as the source can't be local.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 91b37f2dca91..627b1ad3bf26 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -58,7 +58,7 @@
  * Helpers
  */
 
-static struct v4l2_subdev *rkisp1_get_remote_source(struct v4l2_subdev *sd)
+static struct v4l2_subdev *rkisp1_isp_get_source(struct v4l2_subdev *sd)
 {
 	struct media_pad *local, *remote;
 	struct media_entity *sensor_me;
@@ -754,7 +754,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 		return 0;
 	}
 
-	rkisp1->source = rkisp1_get_remote_source(sd);
+	rkisp1->source = rkisp1_isp_get_source(sd);
 	if (!rkisp1->source) {
 		dev_warn(rkisp1->dev, "No link between isp and source\n");
 		return -ENODEV;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

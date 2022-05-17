Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 062C1C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 14:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R38xX4qOk8un+6Y+115UupA/d4cev9/De62CzbuunXM=; b=qJFw7xMBMFeySK
	gsERrzFqQA2h0kLWNNca1wDRS7zqSnRQNd/HkNV0gp23MvdBl2FxgsfKibje/R6jdAtG4TG75gcsM
	1PfbtW95ZLZTbghb1WEJEZodrV2dULyaZJYrwSWHuUGuoCHSgnCiJE5jIBjxCN4NsstDjrsK1ouT2
	axhB1dqkFPIucqOpVBvfqLEXizXP+ClUGrQLFmAYjTIQD1V4fdVhMJpPK1TZZ5w/hO6IiTVLmaAHu
	LoeiE3Bbkcul1TWrKTcni/gz+CzKC1rObdhTsOIkTokG1Y5dvkZAmWMGsgqJngTWkoOGHlVXAYUd+
	KPLbD1HIGsdM5J20ZUQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqyJr-00EUQE-1l; Tue, 17 May 2022 14:37:03 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqyIb-00ETkm-Is
 for linux-rockchip@lists.infradead.org; Tue, 17 May 2022 14:35:46 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 6A5E2DF866;
 Tue, 17 May 2022 07:35:40 -0700 (PDT)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tUInY8X_WcUF; Tue, 17 May 2022 07:35:39 -0700 (PDT)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=puri.sm; s=comms;
 t=1652798139; bh=0IASOl+36nZc05gh2SkCy6PUCwx8Zj2iARw2qdlE2FE=;
 h=From:To:Cc:Subject:Date:From;
 b=hAakK45ngtWlK27gcKaRE/cvpViGaHTm+fawKVtw5nHoIDwRrTZbt2YJdLpfglSYF
 UStLJkk1jYycYuXYf8spNqCS5XDYgzm/dlbkpyrDe3hdfw/ivEuYoFvp5aBkFbLdKK
 z1oxpRHuhVtzdivceGrTtS5oxZL0pCGcy0NudmvRK36EcgNQUT/rHkw83kErPM/4A7
 n+mHF93ukD3UwqWhR4OdFOxCV50V8h4+JXh1mxvXaxFvC+IZuwrVy++LqunI62O/k4
 VaB48WGjXpPEjjd+wIc90vMuJNEQvcm7n74dRzgqIX0v1DcMdddpRGt9L1tLbo04AV
 R6xP4tdJXaDwQ==
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: [PATCH] media: hantro: fix compatible string deprecation warning
Date: Tue, 17 May 2022 16:35:21 +0200
Message-Id: <20220517143521.1670663-1-martin.kepplinger@puri.sm>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_073545_675444_A5056E10 
X-CRM114-Status: GOOD (  10.57  )
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

of_device_is_compatible() in the end uses strlen of the string
for comparison, so in this case, the condition is true even if
the requested string "nxp,imx8mq-vpu-g1" is being used. The first
chars containing "nxp,imx8mq-vpu" are the same.

Fix this by encoding what the comment says.

Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---

This is more of a bugreport as the solution doesn't look very elegant
to me. I'm happy for advice.

thanks,
                           martin


 drivers/staging/media/hantro/hantro_drv.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index ac232b5f7825..014fab637df0 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -923,10 +923,11 @@ static int hantro_probe(struct platform_device *pdev)
 
 	/*
 	 * Support for nxp,imx8mq-vpu is kept for backwards compatibility
-	 * but it's deprecated. Please update your DTS file to use
-	 * nxp,imx8mq-vpu-g1 or nxp,imx8mq-vpu-g2 instead.
+	 * but it's deprecated.
 	 */
-	if (of_device_is_compatible(pdev->dev.of_node, "nxp,imx8mq-vpu"))
+	if ((of_device_is_compatible(pdev->dev.of_node, "nxp,imx8mq-vpu")) &&
+	    (!of_device_is_compatible(pdev->dev.of_node, "nxp,imx8mq-vpu-g1")) &&
+	    (!of_device_is_compatible(pdev->dev.of_node, "nxp,imx8mq-vpu-g2")))
 		dev_warn(&pdev->dev, "%s compatible is deprecated\n",
 			 match->compatible);
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

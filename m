Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DCA3C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Mar 2022 18:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HA9Uo29cCyOnTgSKxQGwvCIZ99amzsZP33xqveGLvQ0=; b=0BDZxzuRFiR327
	fZRk9NLj3VK4PiaaJY7/H1qoz3IPs9ger+96GnlkHFWw6/KzZvcjKKvzuqa5Ww3rX2yhXLVlqPIXB
	BzpPyhGfkcoQ5bccR/9eOrPuZsbaWF8vIrKaiPQgg1v0VA9o9xzKFXq350FDbAs864FUqmD/SA/cW
	OeN+m9al0Qnw+YpDezKGIDayoAWAM8YC7XvQo67oou+mzOpTJpb5yLvDyj/H8iJ9WAIXwHCnP05dj
	f6qZv3riJhkIkvQtQ6JdKHA8APlWp3X4jJwtc5+LaSUfKnLcDp1K9h6EFWmPSNeSOxlxt3UvxkPuE
	QmlMX7k/wAZwE7pcJvHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYBI4-004iUE-1j; Sat, 26 Mar 2022 18:37:32 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYBI0-004iSR-Sh
 for linux-rockchip@lists.infradead.org; Sat, 26 Mar 2022 18:37:30 +0000
Received: from localhost (unknown [IPv6:2a02:3030:b:56bb:4cb:3227:231:99f8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8E8FF1F44FBF;
 Sat, 26 Mar 2022 18:37:27 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648319847;
 bh=WpL5M5afvaRsyjt0vRxenuQV7lPtr9e1e85YRMq7SAA=;
 h=From:To:Cc:Subject:Date:From;
 b=Uk2D1+Imn20vogs40ccSplHiNLeC30QWIOdqXIs7d0op/I5zuUfGGD+wI+bsKdp3F
 FL6bsNC+dWEnbAeAYhrMWl1vdKO1o/9cpsSob+6XtM9gGMv9TS1Ip5KenNU+754A16
 SlZof0zX8yTygNIzAlBcguTUljY8WSlpqGu8QtEQkUQtbSGvRNC+qhT+wf+w0yEF0B
 LFgBN7HMln972t7lRetmVZhaq8zmgARpPCV1CTBwUJZ8s3waugqPfv6el8EqxT5s+V
 TbWRBZdbcwy6QTjr1gZm6Es9guU2/HFBCW46ibBCeNvfXwuGJp+sxrAKVG51jllyBT
 J+C7G+WUCAQIA==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: linux-media@vger.kernel.org
Cc: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org (open list:HANTRO VPU CODEC DRIVER),
 linux-staging@lists.linux.dev (open list:STAGING SUBSYSTEM),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] staging: media: hantro: Update TODO list
Date: Sat, 26 Mar 2022 19:37:15 +0100
Message-Id: <20220326183715.67332-1-sebastian.fricke@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220326_113729_076775_F81818A8 
X-CRM114-Status: GOOD (  11.18  )
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

VP8 has been added to the uABI by 363240ce1c08
VP9 has been added to the uABI by b88dbe38dca8
H264 has been added to the uABI by 46a309d27517

The last remaining codec to be added to the uABI is HEVC.
Highlight these changes in the TODO list.

Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/hantro/TODO | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/hantro/TODO b/drivers/staging/media/hantro/TODO
index 1d7fed936019..8483ff482146 100644
--- a/drivers/staging/media/hantro/TODO
+++ b/drivers/staging/media/hantro/TODO
@@ -1,6 +1,2 @@
-* Support for VP8, VP9 and H264 is planned for this driver.
-
-  Given the V4L controls for those CODECs will be part of
-  the uABI, it will be required to have the driver in staging.
-
-  For this reason, we are keeping this driver in staging for now.
+The V4L controls for the HEVC CODEC are not yet part of the stable uABI,
+we are keeping this driver in staging until the HEVC uABI has been merged.
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

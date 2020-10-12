Return-Path: <SRS0=hzxT=DT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87750C433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2364F2076E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="B++UGEoP";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="JmxCQFo3"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2364F2076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WRybCgTT5dWpcvbNY38kY+rmlqZquxhKmuFwTJ/HHZk=; b=B++UGEoPiyvxYVacrklOWbKIQ
	EtU8O2KWpuLYYq4Fn0e/YnWOBhMP6q1DLKSYMIADEHlt1YUeqLiq4zWoZHDTQkVjPxR084PfSNVNP
	Cg8kvnffqZV3EdW8JAvzltnQ0qVrOZeX27IpUluEbUMbDfV9T+o7joXxiCpgHyeRZFg+J8nmn3IAj
	FqKPyMSK0fsNeH5tPi6XOIahnoP6WBZQYtPJxHHsSaJtDqPGugfR7d833rZsvqHnURdHKYPj3Jvso
	XQW89nvTgFMuUFb8WiIh79Jw0ypL7JOl+dEE6HZDPy4VXPdkpuwjKWcU1x5xp45Ba5b6ke7YHQdZ3
	szRzED9cw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS5FJ-0008DS-WD; Mon, 12 Oct 2020 21:20:42 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS5FD-00083L-Gn
 for linux-rockchip@merlin.infradead.org; Mon, 12 Oct 2020 21:20:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=1NCwKKEdgarozI5VWhHaECuof4emqRQ3fsjE6juJrgI=; b=JmxCQFo3WoXiHI5hW3TRABSixj
 S37GM03D5HDHN40GoKBUhEaIgtCeOgHLXk9MC262lmCH3FpvF2MhJRf11oXNl8Ho2tcseRBg8eWfr
 X9nS5bp6SrikpLCc82UYQet6WFRbnRD6MBkmikN4lQAHkmv1iSyPmWpIaMolcy4HFXRxT22TO2w8z
 t7KJc8LIb4YNdJQQCKuC0i1gMfoIFqyR6turMnxwyrYtRt1vX2mmkIAp9fZhQ9cKeOdvsHBQZk6kS
 +UnuxINNjlUcalw6MUzEZeB0eyQu28gPQOOCYUt+/R6Q9krUKdgAy8RNbHnwcqPZRQdu7n5flXgl3
 9rLFhBbw==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uG-0004hd-Pl
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 3CB661F44C33
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 04/18] media: hantro: add reset controller support
Date: Mon, 12 Oct 2020 23:59:43 +0300
Message-Id: <20201012205957.889185-5-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_215857_020012_E0D848BE 
X-CRM114-Status: GOOD (  13.60  )
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 kuhanh.murugasen.krishnan@intel.com, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Some SoCs might have a reset controller which disables clocks
by default in reset state which then drivers need to unreset
before being able to ungate a specific clock.

In this specific case, the hantro driver needs to ensure the
peripheral clock can be properly ungated otherwise MMIO reg
values can't be accessed.

If the SoC has no reset controller or there is no "resets" DT
property defined, this new code will have no effect.

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/hantro/hantro.h     | 1 +
 drivers/staging/media/hantro/hantro_drv.c | 8 ++++++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 65f9f7ea7dcf..bb442eb1974e 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -183,6 +183,7 @@ struct hantro_dev {
 	struct platform_device *pdev;
 	struct device *dev;
 	struct clk_bulk_data *clocks;
+	struct reset_control *reset;
 	void __iomem **reg_bases;
 	void __iomem *enc_base;
 	void __iomem *dec_base;
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 3cd00cc0a364..c2ea54552ce9 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -17,6 +17,7 @@
 #include <linux/pm.h>
 #include <linux/pm_runtime.h>
 #include <linux/slab.h>
+#include <linux/reset.h>
 #include <linux/videodev2.h>
 #include <linux/workqueue.h>
 #include <media/v4l2-event.h>
@@ -747,6 +748,13 @@ static int hantro_probe(struct platform_device *pdev)
 
 	INIT_DELAYED_WORK(&vpu->watchdog_work, hantro_watchdog);
 
+	vpu->reset = devm_reset_control_get_optional_exclusive(&pdev->dev,
+							       NULL);
+	if (IS_ERR(vpu->reset))
+		vpu->reset = NULL;
+
+	reset_control_reset(vpu->reset);
+
 	vpu->clocks = devm_kcalloc(&pdev->dev, vpu->variant->num_clocks,
 				   sizeof(*vpu->clocks), GFP_KERNEL);
 	if (!vpu->clocks)
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

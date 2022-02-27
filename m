Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EF17C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 16:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XmQ+9R3o5hJijcAIX5XFiUVdsFDeDySuLb+n0kTVD7s=; b=XgrAmSzzdS8def
	UcaWg+VPIj28sBdx0+sbCQB7Kq5vAsk32ZbytvmWffy0wrlm5jcrqHESb4zKqtVA4tR7/NWzPXq1J
	sNf5D+RwxFPTMEEnFcOgrvtXbLhrIh4u0h0dtS9Mub3jQ/nYbvBC1xQj3ofKViUFcB40OcNTOEvXV
	8+PDNCGPYYWErw7sC5BtjedBjVJCZ77CwY8/83CJj4CCctnsC4rb0xAn0LEMXJD5Nb1Torz0T0cUy
	f+2gkVDqd5qKyjcMiahpDtFxPsEGrLHpwK6N4O7dsN4+jtU48pl2BRbIHflaVsNZR2LfffFjsPeJc
	OLj87t3x+sPzyEiiBXOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOLzl-009dYd-Rr; Sun, 27 Feb 2022 16:02:01 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOLzR-009dAa-Bu
 for linux-rockchip@lists.infradead.org; Sun, 27 Feb 2022 16:01:47 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8D7B7143C;
 Sun, 27 Feb 2022 17:01:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1645977696;
 bh=nUj698IpYF7pASyDTpPtRfX96ohmf6vKk5mnUSq5OWQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mmJWCDKU9y/ECrwNhPMofSwvpMpPceq7Gi+UUvgUnMazr3J/wNqCSfT8uxD3YJ+CN
 m8avxB6YxPZGCWXlZL2cdHYkknP8U2YqcrCVzo9dpzXwHpXUNfkeYLvnXHZnqy+IJ8
 64hD7ErwzUcgNQQKA6DCGFdBdb2O/gonW0FNVvb8=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 07/16] media: rkisp1: Simplify rkisp1_entities_register()
 error path
Date: Sun, 27 Feb 2022 18:01:07 +0200
Message-Id: <20220227160116.18556-8-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220227160116.18556-1-laurent.pinchart@ideasonboard.com>
References: <20220227160116.18556-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_080141_639304_CF729230 
X-CRM114-Status: GOOD (  10.44  )
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

Now that all the unregistration functions are safe to call on
non-registered entities, the error path in rkisp1_entities_register()
can be simplified. Factor out the unregistration to a separate function
to share code with rkisp1_remove().

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 40 +++++++++----------
 1 file changed, 19 insertions(+), 21 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 3f5cfa7eb937..f8b2573aa9da 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -346,48 +346,50 @@ static const struct dev_pm_ops rkisp1_pm_ops = {
  * Core
  */
 
+static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
+{
+	rkisp1_params_unregister(rkisp1);
+	rkisp1_stats_unregister(rkisp1);
+	rkisp1_capture_devs_unregister(rkisp1);
+	rkisp1_resizer_devs_unregister(rkisp1);
+	rkisp1_isp_unregister(rkisp1);
+}
+
 static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
 {
 	int ret;
 
 	ret = rkisp1_isp_register(rkisp1);
 	if (ret)
-		return ret;
+		goto error;
 
 	ret = rkisp1_resizer_devs_register(rkisp1);
 	if (ret)
-		goto err_unreg_isp_subdev;
+		goto error;
 
 	ret = rkisp1_capture_devs_register(rkisp1);
 	if (ret)
-		goto err_unreg_resizer_devs;
+		goto error;
 
 	ret = rkisp1_stats_register(rkisp1);
 	if (ret)
-		goto err_unreg_capture_devs;
+		goto error;
 
 	ret = rkisp1_params_register(rkisp1);
 	if (ret)
-		goto err_unreg_stats;
+		goto error;
 
 	ret = rkisp1_subdev_notifier(rkisp1);
 	if (ret) {
 		dev_err(rkisp1->dev,
 			"Failed to register subdev notifier(%d)\n", ret);
-		goto err_unreg_params;
+		goto error;
 	}
 
 	return 0;
-err_unreg_params:
-	rkisp1_params_unregister(rkisp1);
-err_unreg_stats:
-	rkisp1_stats_unregister(rkisp1);
-err_unreg_capture_devs:
-	rkisp1_capture_devs_unregister(rkisp1);
-err_unreg_resizer_devs:
-	rkisp1_resizer_devs_unregister(rkisp1);
-err_unreg_isp_subdev:
-	rkisp1_isp_unregister(rkisp1);
+
+error:
+	rkisp1_entities_unregister(rkisp1);
 	return ret;
 }
 
@@ -583,11 +585,7 @@ static int rkisp1_remove(struct platform_device *pdev)
 	v4l2_async_nf_unregister(&rkisp1->notifier);
 	v4l2_async_nf_cleanup(&rkisp1->notifier);
 
-	rkisp1_params_unregister(rkisp1);
-	rkisp1_stats_unregister(rkisp1);
-	rkisp1_capture_devs_unregister(rkisp1);
-	rkisp1_resizer_devs_unregister(rkisp1);
-	rkisp1_isp_unregister(rkisp1);
+	rkisp1_entities_unregister(rkisp1);
 
 	media_device_unregister(&rkisp1->media_dev);
 	v4l2_device_unregister(&rkisp1->v4l2_dev);
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

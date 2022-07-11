Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86405CCA47B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89YRewSOWcMO1XUsQOHIVY734ObaLhYZT3SPPXwF6Bc=; b=DJ14kdvDgy90Jb
	GTbHrFGD9ay6S5HJBfzReh+cRXzFaZs4Q6GQbky2W7Y9wTF/g5a6roC5QKHAtQnM7MEGYrSAys8g3
	xjMDXuDv7NCGHoloPTJnzSw2PJQbcstWD9BL6fU44n0hUesrLpTxG1ad73fKifDF7J5XOm8o89V5m
	PrK4dUDZ3Q0uongLYwGgQ6T1iTwrtUHH10glxYZqzDkeJIR/pwaTNsjRY9FnOsTCUYfwmUwt/vczB
	RR6TdTTvP08mfwKbk0dxq27QxTuDIFwzhzztJgRO7m+XsuuIykpjscgMH9r05kIRADjn1sg3ypdgy
	SdrF7r6JSpbnlkF8vEjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsxb-001f4P-0z; Mon, 11 Jul 2022 12:56:23 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsl3-001Y4X-Fz
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:27 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5544C1ACA;
	Mon, 11 Jul 2022 14:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543403;
	bh=z01zSlWe4TYeTfrtZOlHRFaTg1ycWILn4EF8TC/x7j4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=InNbYvAGzSonmQc3+ZoHibUp5iiipvsG/FS7Hr5SoC7QOWJm43SNH8C71HCFfUsy4
	 TMip6LClVAPTU7hZ+1v/4UQNWPWTcrjdv9KcaKQ77w4VllxJUkwlA4MpbShaCyxyd9
	 Wz5JtpYpzjmaALB2q/5klbWS0vpNG/knUpO7DiqE=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 07/46] media: rkisp1: Read the ID register at probe time instead of streamon
Date: Mon, 11 Jul 2022 15:42:09 +0300
Message-Id: <20220711124248.2683-8-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054325_739099_6FE7E95C 
X-CRM114-Status: GOOD (  10.87  )
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

There's no need to read the ID register every time streaming is started.
Do it once, at probe time.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 10 ++++++++++
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c |  4 ----
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 248f0172ca62..ba773c0784fb 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -467,6 +467,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 	struct v4l2_device *v4l2_dev;
 	unsigned int i;
 	int ret, irq;
+	u32 cif_id;
 
 	match_data = of_device_get_match_data(&pdev->dev);
 	if (!match_data)
@@ -509,6 +510,15 @@ static int rkisp1_probe(struct platform_device *pdev)
 
 	pm_runtime_enable(&pdev->dev);
 
+	ret = pm_runtime_resume_and_get(&pdev->dev);
+	if (ret)
+		goto err_pm_runtime_disable;
+
+	cif_id = rkisp1_read(rkisp1, RKISP1_CIF_VI_ID);
+	dev_dbg(rkisp1->dev, "CIF_ID 0x%08x\n", cif_id);
+
+	pm_runtime_put(&pdev->dev);
+
 	rkisp1->media_dev.hw_revision = match_data->isp_ver;
 	strscpy(rkisp1->media_dev.model, RKISP1_DRIVER_NAME,
 		sizeof(rkisp1->media_dev.model));
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index a97c145bad98..bc94a51124b0 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -473,12 +473,8 @@ static int rkisp1_config_path(struct rkisp1_device *rkisp1)
 /* Hardware configure Entry */
 static int rkisp1_config_cif(struct rkisp1_device *rkisp1)
 {
-	u32 cif_id;
 	int ret;
 
-	cif_id = rkisp1_read(rkisp1, RKISP1_CIF_VI_ID);
-	dev_dbg(rkisp1->dev, "CIF_ID 0x%08x\n", cif_id);
-
 	ret = rkisp1_config_isp(rkisp1);
 	if (ret)
 		return ret;
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

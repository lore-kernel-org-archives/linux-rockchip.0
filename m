Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A363C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Io+5SFuPmIAKUWHO9EdehI8InR0E2OFUS4D7L29kc8=; b=OZjAofT6QT3XAu
	3A03eYkH5NsZG2DWuQVi4PEw/CWH7zH0iq/BOkLkxZXaS7PORuAF2tzlfXyoHald3Q5w4q3UR3MXh
	VrLfn8g+P5sXJK+b2wd0lPAhX3hk966T8isuSAcZXm3oE33Bz6Vt+ZDmIFEU9W+0VslY/bFwpVH3k
	+bdsW1J8JbHUyzE3teRNBG0qj2xq7GTvqXvoVGyt02v0K172TQg7FC9+h7dpY+IQ8OAlSgoQv9joH
	92Z73+upIWUMmqILnf3vkOTeoyAXDKhfDFTZORRq5j0cySdDbTcvVp9eOt4zPp7qUMHUmuguyibJZ
	xSVrAeAhE60AQABbr5Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BxU-00AtDY-0Y; Tue, 14 Jun 2022 19:12:12 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BxR-00AtBI-82
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:12:10 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 697FF9E5;
	Tue, 14 Jun 2022 21:12:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233927;
	bh=MN+k+386HwfC89iXMHL522rxnVO8f8e0jWiEPtZXKlI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oL09Tb7mRFKMOrMiHIzBgkQnQjP2jQciWy6gmtnoJNDVXOWV5G9c8DiM+p4N6e7nO
	 CpI7HCu92KAEQYQpZfRL1TC4Lgu/LDgtknVIFuiYOf/DA0ShYssLg/30CI1pOUFiwu
	 /YlXessdkT6w9ajLpqGTQNo+hN/sMo8+0TEAQe24=
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
Subject: [PATCH 05/55] media: rkisp1: Read the ID register at probe time instead of streamon
Date: Wed, 15 Jun 2022 04:10:37 +0900
Message-Id: <20220614191127.3420492-6-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121209_515567_AFECFC47 
X-CRM114-Status: GOOD (  10.18  )
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

There's no need to read the ID register every time streaming is started.
Do it once, at probe time.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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
index 187d78075acb..02968656f3c0 100644
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
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

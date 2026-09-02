Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B9DBC61DFD
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 09:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zG3YMAbmxbqA6hJVFND/XiE7S414y10RrozxBiek5Wg=; b=CGxlCOOKsPNNov
	Jrp5WXDBV4w66Vl3CPYowDSohSqaT35sYqgm4AWtkmDO75+1oxBISGiSWOdWSEr9asmX9XiOmWodg
	Q1e1w3stto7PrlU6J0xHnC9jdwzUq8gZAMm3omFXVtQXapVR5VpJLGSrdc8p8p04GZ7m7Rf1IHMFm
	Fq5TpSkiTQMplsCv4oz+s8pUYJcoSCi4UnEkSzQGn1n4xTjgoKLnypwQLxhMpCKdO1bhha73aA3DR
	SV/7nvqIjfhrSjWqA+ufLSV5p1Ddnq55XY06cZWl6TlgRiGgHlswNxMPozCVI7g5X2WB6vb7bByLJ
	oZ5v0RVCguqFgtfg82tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1hXc-0000000EFuW-1erK;
	Wed, 02 Sep 2026 09:46:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1hXa-0000000EFtb-0sMV
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 09:45:59 +0000
Received: from [127.0.1.1] (chfd-03-b2-v4wan-176392-cust229.vm15.cable.virginm.net [82.19.20.230])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2BDA419C;
	Wed,  2 Sep 2026 11:44:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1788342262;
	bh=8oV6y8ZtcTf8WuUM21XZuL0i7ONNvJMzfIYSy8jcdqw=;
	h=From:Date:Subject:To:Cc:From;
	b=CeeNuEvCFKyCjbzp28GgY0bu69qLXHVRLlkvH4IBkf8HvSkI0oNf5gTb/igieFp3r
	 7kCiTE5EqkG6MAw3nZ54JCd0k0ck4huwmLA2Cuwcw1Cg0Hmy22TdnVeOCAhs9ww0Bp
	 eeGblVWgQWiFlEovd7Er+ZEZJtK+ln21BkvmWVRk=
From: Daniel Scally <dan.scally@ideasonboard.com>
Date: Wed, 02 Sep 2026 10:45:43 +0100
Subject: [PATCH] media: platform: Delay registering rkisp1 media device
MIME-Version: 1.0
Message-Id: <20260902-enumeration-v1-1-0cb266dd6d41@ideasonboard.com>
X-B4-Tracking: v=1; b=H4sIAEbwl2oC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDcyMj3dS80tzUosQSoDrdxFQToyRjs9S0FAMTJaCOgqLUtMwKsGnRsbW
 1AP4nxkJdAAAA
X-Change-ID: 20260722-enumeration-ae42b36efd04
To: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Daniel Scally <dan.scally@ideasonboard.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3087;
 i=dan.scally@ideasonboard.com; h=from:subject:message-id;
 bh=8oV6y8ZtcTf8WuUM21XZuL0i7ONNvJMzfIYSy8jcdqw=;
 b=owEBbQKS/ZANAwAKAchJV3psRXUyAcsmYgBql/BQzYvYoO1KUoFkc55MQKr+MOfUdmyqrEeoq
 ojGJyhXxmCJAjMEAAEKAB0WIQQqyuwyDnZdb+mxmm/ISVd6bEV1MgUCapfwUAAKCRDISVd6bEV1
 MpdwD/4nNreE/757sxuquaDlvay2VD5LFYUdzeIC7pAMXYcXmqg3hB/2CAuqrqrAWkvIpx6lRqS
 SmB6ytS+gbU7TqAptnil3nZ1bNQMurvPzxKrFROcFD947NHwrdI1Isq1w+uxmLxI7rb2+7i+xuf
 GJQijOtHiWRmVD4g9k9Ys5J1H3kPopN+Heetf8pu9vDkV4eLLaFsBFOLn/ufTMvatxvkecfEpBo
 1fkatfeQJ80I2twCWKQ2QMfmgD8WRouZ6PeeBjL6M8x6fxKWqtI2K5MDBAtl31FrhpffLpXXY/s
 O7hR1T1ZqvLqCLlA+pLGxnVg+LK39im+BYqLImHmtmU9FLkZ6aSClbz/9mrmxhH0ymUJsv+5VDJ
 VIcuY0rv7vj20s2T0LiRYovQTo+fGLd8SoBsI7dXaBB3RbQSNbMHBSh1xitA6Vk6Jy4XClTOFwM
 ACfwp2wjIbQMYW3HbZEK2u1O6ffArfv61aJoAy/RiiwoLyqlxY1I4UwBgZHoCrED3IAne19PLgy
 OzoBlXN1iB9NAOsy2ekzHGavlZ2tnKLOzmb/0w4fjhCrZaU20KsOfr7mOPvicKo9PQF459kpdUs
 OQRTb89mAccM8DnarM18upl6W2xBvTx/8IX9g5UxTmEfRA8zOKD2VxBvErdcxzTpHQSpPHlntqE
 oGNg/GoiPWR7C0g==
X-Developer-Key: i=dan.scally@ideasonboard.com; a=openpgp;
 fpr=EEC699ACA1B7CB5D31330C0BBD501C2A3546CCF6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_024558_403127_CF94CCB8 
X-CRM114-Status: GOOD (  13.96  )
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

The rkisp1 driver registers its media device before creating entities
or registering the v4l2-async notifier to which the CSI-2 driver (and
by extension the sensor driver) will bind. This means that the media
device node will be visible to userspace before the media graph is
fully prepared.

Delay the registration until the ISP's notifier's .complete()
callback. As this is the parent callback, that will mean that all
v4l2-async subdevices must have bound and the graph must therefore be
fully ready at this point.

Suggested-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-dev.c    | 35 +++++++++++++++-------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 1791c02a40ae18205f5eb2fd6edca6cda6b459bf..8d423441824ca836dacb0aa1e00cdfc774e61e2e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -165,8 +165,31 @@ static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
 {
 	struct rkisp1_device *rkisp1 =
 		container_of(notifier, struct rkisp1_device, notifier);
+	struct v4l2_subdev *sd;
+	int ret;
+
+	ret = v4l2_device_register_subdev_nodes(&rkisp1->v4l2_dev);
+	if (ret)
+		return ret;
+
+	ret = media_device_register(&rkisp1->media_dev);
+	if (ret) {
+		dev_err(rkisp1->dev, "Failed to register media device: %d\n", ret);
+		goto err_unreg_v4l2_subdev_nodes;
+	}
+
+	return 0;
 
-	return v4l2_device_register_subdev_nodes(&rkisp1->v4l2_dev);
+err_unreg_v4l2_subdev_nodes:
+	list_for_each_entry(sd, &rkisp1->v4l2_dev.subdevs, list) {
+		if (!sd->devnode)
+			break;
+
+		media_devnode_remove(sd->devnode->intf_devnode);
+		video_unregister_device(sd->devnode);
+	}
+
+	return ret;
 }
 
 static void rkisp1_subdev_notifier_destroy(struct v4l2_async_connection *asc)
@@ -753,16 +776,10 @@ static int rkisp1_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_media_dev_cleanup;
 
-	ret = media_device_register(&rkisp1->media_dev);
-	if (ret) {
-		dev_err(dev, "Failed to register media device: %d\n", ret);
-		goto err_unreg_v4l2_dev;
-	}
-
 	if (rkisp1->info->features & RKISP1_FEATURE_MIPI_CSI2) {
 		ret = rkisp1_csi_init(rkisp1);
 		if (ret)
-			goto err_unreg_media_dev;
+			goto err_unreg_v4l2_dev;
 	}
 
 	ret = rkisp1_entities_register(rkisp1);
@@ -782,8 +799,6 @@ static int rkisp1_probe(struct platform_device *pdev)
 err_cleanup_csi:
 	if (rkisp1_has_feature(rkisp1, MIPI_CSI2))
 		rkisp1_csi_cleanup(rkisp1);
-err_unreg_media_dev:
-	media_device_unregister(&rkisp1->media_dev);
 err_unreg_v4l2_dev:
 	v4l2_device_unregister(&rkisp1->v4l2_dev);
 err_media_dev_cleanup:

---
base-commit: 34e31390a3b939db2e0cbfef4c40d95052572df0
change-id: 20260722-enumeration-ae42b36efd04

Best regards,
-- 
Daniel Scally <dan.scally@ideasonboard.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

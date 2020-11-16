Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D727C4742C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 13:23:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C74852223D
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 13:23:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rqXi3kpn"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C74852223D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8arnpdI/ZSJoQiFaEM4mSEvwbw14plxn9XD1rboZlU4=; b=rqXi3kpnz6oH2Uc2MSvUStgxGc
	EqyLWmv0pToMXaRD2iD075WobieUh7GpSa/QEToXBnhF+nYUt69mg2HniAARYdDKlrV0ui/n5KwcN
	fwPmNArXzXNNRfiLbg9G14/le47ISmXbwYbg4RjFh98V40JHSDzdYglZNWIug5zi2nUOIbKQOhhhq
	xo0AyTcij/heujNjuioSq6SAJGDcuaZ0xjJBiLuLWmKWjewbCak3etdzh3nVx2+YKcPZzO0Aw98Y1
	3+9CzOuC0v0Buh/NRhJV105+8lhVzrRJoYDlqr1qNpXukbGORAneCGm5374UMImp0T4L4r7hnX0Sh
	B2/41K8A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1keeTQ-0001Me-LZ; Mon, 16 Nov 2020 13:23:12 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keeTN-0001LX-9P
 for linux-rockchip@lists.infradead.org; Mon, 16 Nov 2020 13:23:10 +0000
Received: from guri.fritz.box
 (p200300c7cf41a70008f7652dcb85b409.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf41:a700:8f7:652d:cb85:b409])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 72E861F4716D;
 Mon, 16 Nov 2020 13:23:02 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: i2c: imx219: Declare that the driver can create events
Date: Mon, 16 Nov 2020 14:22:44 +0100
Message-Id: <20201116132244.30081-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_082309_655456_5A9E9117 
X-CRM114-Status: GOOD (  11.60  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com,
 dave.stevenson@raspberrypi.com, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The flag V4L2_SUBDEV_FL_HAS_EVENTS is required if the subdev can
generate events. It can create events from the ctrl handler, therefore
this is required.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
This patch fixes compliance issues found in imx219:

fail: v4l2-test-controls.cpp(830): failed to find event for control 'Exposure'
    test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: FAIL

 drivers/media/i2c/imx219.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx219.c b/drivers/media/i2c/imx219.c
index ef2b1a6a0f4a..ba1c5e59ddf4 100644
--- a/drivers/media/i2c/imx219.c
+++ b/drivers/media/i2c/imx219.c
@@ -1503,7 +1503,8 @@ static int imx219_probe(struct i2c_client *client)
 
 	/* Initialize subdev */
 	imx219->sd.internal_ops = &imx219_internal_ops;
-	imx219->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
+	imx219->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE |
+			    V4L2_SUBDEV_FL_HAS_EVENTS;
 	imx219->sd.entity.function = MEDIA_ENT_F_CAM_SENSOR;
 
 	/* Initialize source pad */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

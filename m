Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3114E95A61
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Oct 2023 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Dy/MPpKZewzsIOY+7cKpeiTFAT2h9ZArYHdo+khSiA=; b=YR7oEltamYq1le
	ZNx9sXpb+6zOyHt2VQ+1b7bVbGlf3avx/JsxLVBFMutANkYL4V4zbz/jG+KbF8AS2mylog4gfwz4t
	n7OR5SVg9Jhi0q62QyjA1LdX4JUec2WMP6bSo0/bPSN3QHM917yHnDRJhLUUPgoEszrdpTZrgwsyx
	PPuDvDTMRvngFAFhm6vzqNTl8BtgscBZphRz7NYwdse2bpJym35UeBzeCJDU9f+8h0KvmlcdRKvhf
	x9KuO1D4Qq3wIFMIfr2+2VYcy6Hki7VM7Np0dWgA7bRKnnEUN/WTGxDvqsrKqYVNlDWmIpa6c7YX6
	5vhZWo0TBQO4cenA5kMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qp6ut-007ZvV-2X;
	Sat, 07 Oct 2023 13:00:23 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qp6uq-007ZuW-0N
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Oct 2023 13:00:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696683613; bh=1Jri4c0dUWUEhbh0nohF7eCG2g72tCMR2ODPWB7oQMk=;
	h=From:To:Cc:Subject:Date:From;
	b=Sa/rhZmZW0rIafmQjpxwClLK5cJmPYNc+zI1PaA7cRbnhzpYyqFl1ztVgOvUTeNyU
	 k+FcqpYJvKtNXP9BR8Jrg+WJeBVCsC7PTMizxCZU5eEPKKnhbSZvzAadmLBsR/4i3U
	 rAXEzs/iKvS6a73pFdLQA1X/NZbp36u2Xn8k8lak=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: linux-rockchip@lists.infradead.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Nicholas Roth <nicholas@rothemail.net>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org (open list:V4L2 CAMERA SENSOR DRIVERS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] media: i2c: ov8858: Don't set fwnode in the driver
Date: Sat,  7 Oct 2023 15:00:00 +0200
Message-ID: <20231007130004.942369-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231007_060020_918087_6A86BE9B 
X-CRM114-Status: UNSURE (   8.90  )
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

From: Ondrej Jirman <megi@xff.cz>

This makes the driver work with the new check in
v4l2_async_register_subdev() that was introduced recently in 6.6-rc1.
Without this change, probe fails with:

ov8858 1-0036: Detected OV8858 sensor, revision 0xb2
ov8858 1-0036: sub-device fwnode is an endpoint!
ov8858 1-0036: v4l2 async register subdev failed
ov8858: probe of 1-0036 failed with error -22

This also simplifies the driver a bit.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 drivers/media/i2c/ov8858.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/media/i2c/ov8858.c b/drivers/media/i2c/ov8858.c
index 3af6125a2eee..b862dc9604cc 100644
--- a/drivers/media/i2c/ov8858.c
+++ b/drivers/media/i2c/ov8858.c
@@ -1868,7 +1868,7 @@ static int ov8858_parse_of(struct ov8858 *ov8858)
 		return -EINVAL;
 	}
 
-	ov8858->subdev.fwnode = endpoint;
+	fwnode_handle_put(endpoint);
 
 	return 0;
 }
@@ -1913,7 +1913,7 @@ static int ov8858_probe(struct i2c_client *client)
 
 	ret = ov8858_init_ctrls(ov8858);
 	if (ret)
-		goto err_put_fwnode;
+		return ret;
 
 	sd = &ov8858->subdev;
 	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_HAS_EVENTS;
@@ -1964,8 +1964,6 @@ static int ov8858_probe(struct i2c_client *client)
 	media_entity_cleanup(&sd->entity);
 err_free_handler:
 	v4l2_ctrl_handler_free(&ov8858->ctrl_handler);
-err_put_fwnode:
-	fwnode_handle_put(ov8858->subdev.fwnode);
 
 	return ret;
 }
@@ -1978,7 +1976,6 @@ static void ov8858_remove(struct i2c_client *client)
 	v4l2_async_unregister_subdev(sd);
 	media_entity_cleanup(&sd->entity);
 	v4l2_ctrl_handler_free(&ov8858->ctrl_handler);
-	fwnode_handle_put(ov8858->subdev.fwnode);
 
 	pm_runtime_disable(&client->dev);
 	if (!pm_runtime_status_suspended(&client->dev))
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

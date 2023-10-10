Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB5BDCD68ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 07:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=49pOPw2OjoIBgeAdmjXv/pAF5ZrNyUyDWmIDG1BAYuY=; b=XkS+akH72hFdQ7
	j/uQsdHOIn5kzaF22fTkQgci+8oZfZ/mA5f6Xtj4cmo7hql/wqfA/VbX5kVKJmF4m0VRZZSRKTgOa
	caVRxxKsNoxnaf5Ni5unNfgspmErnYe6pYk05OFFpEGcNM4hJhcBGNyCXjVqUdQzZNs6xrj6iPjJC
	O18r0h5mIpBjM9yTpOMMAs1bXaFGG00vUU60n1BF5pqmkL4De1GA6VE00vlPPpQcPE7ii/6haNAaW
	nRaP/fQ+lmEabcMuOs8oWlK5ML4QbIrLvGeB1hW7nTuToP6SQ4vfHAaUje+9KaCJ7LoLBBGaD4yyY
	LMfou/0me6yKkbFq/Mhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qq6qh-00CfjV-21;
	Tue, 10 Oct 2023 07:08:12 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qq6qa-00CfiB-29
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Oct 2023 07:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696921675; bh=4lNplERnI6yZsihONwZhR1SOQRzefzq61EbgYbT+Bl4=;
	h=From:To:Cc:Subject:Date:From;
	b=u9HA17p7oMjX7AEpQ9GGFvYeQ7rA7lsBRNbzq6/RpIbGCbQ2KQlco8lZ1vw3O/EGP
	 b2BGQhYZEx5gRHcbg2QDf/VgPjNTUaB2+jby10JNMtqUDC5886z2UoC2MA22NHh0B8
	 UwURBQ4Cf8MkSqwyXU9boo2KWNtYDH/pHBm3FU9A=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: linux-rockchip@lists.infradead.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Nicholas Roth <nicholas@rothemail.net>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org (open list:OMNIVISION OV8858 SENSOR DRIVER),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2] media: i2c: ov8858: Don't set fwnode in the driver
Date: Tue, 10 Oct 2023 09:07:44 +0200
Message-ID: <20231010070747.1781612-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_000804_875332_1AF6BAE6 
X-CRM114-Status: GOOD (  10.27  )
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
v2:
- call fwnode_handle_put earlier to avoid multiple calls to it in
  error code paths (suggested by Jacopo Mondi)

 drivers/media/i2c/ov8858.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/media/i2c/ov8858.c b/drivers/media/i2c/ov8858.c
index 3af6125a2eee..4d9fd76e2f60 100644
--- a/drivers/media/i2c/ov8858.c
+++ b/drivers/media/i2c/ov8858.c
@@ -1850,9 +1850,9 @@ static int ov8858_parse_of(struct ov8858 *ov8858)
 	}
 
 	ret = v4l2_fwnode_endpoint_parse(endpoint, &vep);
+	fwnode_handle_put(endpoint);
 	if (ret) {
 		dev_err(dev, "Failed to parse endpoint: %d\n", ret);
-		fwnode_handle_put(endpoint);
 		return ret;
 	}
 
@@ -1864,12 +1864,9 @@ static int ov8858_parse_of(struct ov8858 *ov8858)
 	default:
 		dev_err(dev, "Unsupported number of data lanes %u\n",
 			ov8858->num_lanes);
-		fwnode_handle_put(endpoint);
 		return -EINVAL;
 	}
 
-	ov8858->subdev.fwnode = endpoint;
-
 	return 0;
 }
 
@@ -1913,7 +1910,7 @@ static int ov8858_probe(struct i2c_client *client)
 
 	ret = ov8858_init_ctrls(ov8858);
 	if (ret)
-		goto err_put_fwnode;
+		return ret;
 
 	sd = &ov8858->subdev;
 	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_HAS_EVENTS;
@@ -1964,8 +1961,6 @@ static int ov8858_probe(struct i2c_client *client)
 	media_entity_cleanup(&sd->entity);
 err_free_handler:
 	v4l2_ctrl_handler_free(&ov8858->ctrl_handler);
-err_put_fwnode:
-	fwnode_handle_put(ov8858->subdev.fwnode);
 
 	return ret;
 }
@@ -1978,7 +1973,6 @@ static void ov8858_remove(struct i2c_client *client)
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

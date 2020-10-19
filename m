Return-Path: <SRS0=ZzQ+=D2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F76DC433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2020 21:00:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7785121741
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2020 21:00:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="s8TG+Qjr"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7785121741
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5MF9kchVbDsvClfXkbFI8+rEaK7d4Ime4l/K8An7oRE=; b=s8TG+QjrXu1TPjrrg5AM0DnYNF
	ZW3HsB9xFO7Dvuyn4xwQtg7sEopFoFCLNCFJfhL5eTPomQd8VZJqOSk9YfMQ4/3rUew2+j/7cLoN9
	zItxJGIzCnUD5a68Ey77mnb8NZbut5tenpwB2zBthca6tTgWDKeN3m/YMwfvfDUKGW2ARHhBh9iN9
	HWnqn8TDg8XxyqxfDbBvSR/fIK8nr4CUfXvbOPYZfM3dczlkrzY+7QUX7BPiIhfd0S4cvOcm2hfSj
	yXaT6o2mB1X6ngXcq4JlNXNSLMq9FcoTvwIjfMr/BcVxsoopAgx3js/D/Qdcgny88cGDrZ88Kze8L
	30ciBbBw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUcGH-00071Y-P0; Mon, 19 Oct 2020 21:00:09 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUcGE-0006zQ-QK
 for linux-rockchip@lists.infradead.org; Mon, 19 Oct 2020 21:00:08 +0000
Received: from guri.fritz.box
 (p200300c7cf435b00546912335c7d1654.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf43:5b00:5469:1233:5c7d:1654])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1E41A1F44FBF;
 Mon, 19 Oct 2020 22:00:04 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 1/4] media: staging: rkisp1: fix coding style issues
Date: Mon, 19 Oct 2020 22:59:53 +0200
Message-Id: <20201019205956.6980-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201019205956.6980-1-dafna.hirschfeld@collabora.com>
References: <20201019205956.6980-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201019_170006_995627_FD192338 
X-CRM114-Status: GOOD (  12.95  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fix checkpatch issues:
Blank lines aren't necessary before a close brace '}'
Alignment should match open parenthesis

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-dev.c     | 4 ++--
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 1 -
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 4 ++--
 3 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index 91584695804b..4f6ae1a01253 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -254,8 +254,8 @@ static int rkisp1_subdev_notifier(struct rkisp1_device *rkisp1)
 		struct rkisp1_sensor_async *rk_asd = NULL;
 		struct fwnode_handle *ep;
 
-		ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(rkisp1->dev),
-			0, next_id, FWNODE_GRAPH_ENDPOINT_NEXT);
+		ep = fwnode_graph_get_endpoint_by_id(dev_fwnode(rkisp1->dev), 0, next_id,
+						     FWNODE_GRAPH_ENDPOINT_NEXT);
 		if (!ep)
 			break;
 
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index a9715b0b7264..fb23461d865c 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -1157,5 +1157,4 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
 		 */
 		rkisp1_params_isr(rkisp1);
 	}
-
 }
diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 1687d82e6c68..a9d537c11ecb 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -610,8 +610,8 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
 				  RKISP1_ISP_MIN_WIDTH,
 				  RKISP1_ISP_MAX_WIDTH);
 	sink_fmt->height = clamp_t(u32, format->height,
-				  RKISP1_ISP_MIN_HEIGHT,
-				  RKISP1_ISP_MAX_HEIGHT);
+				   RKISP1_ISP_MIN_HEIGHT,
+				   RKISP1_ISP_MAX_HEIGHT);
 
 	*format = *sink_fmt;
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

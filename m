Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45775C4363D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 16:58:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D3E4023119
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 16:58:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="DbsB8XPq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D3E4023119
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EbEs4tpjnRcsTRV7kSKOjB9Zf8K/BQWE8+KJv78ROKA=; b=DbsB8XPqTOG0g9Ed7S/vhTP8GW
	wS2TxT9QCRHJhF1ekXZK0UmZJ/NrNPArE8zcFTYOj7ls6uhIctRKCSbQ4o1jy91zM7pUUiZH86Dd9
	z8POXU91dDxgAqL5G/e+F1wAGn92ACRhVBxmJvhi8LB7dUfsytsy+JhP5pWd3WM/fPDNj8KnmO9Se
	iGqrNbRxShP71FdqoA593+iVhrl+IE1QuSl0etqftvtMrnk3l+w3xVLhooLv5r8+cfmbhgzHZXeER
	dL13acGnSMG6v16yjdf0EJzd+zM9sEnzRlepEnX0xMeibO9qpjOlqJ9cRoMzXgR00lJ98ciCIFKG6
	qtFSW6zA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKlcY-0007NZ-F8; Tue, 22 Sep 2020 16:58:26 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKlcV-0007Kr-3Y
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 16:58:24 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec005877be1094b7a29d.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:5877:be10:94b7:a29d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6CB8728D171;
 Tue, 22 Sep 2020 17:58:21 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 2/2] media: staging: rkisp1: isp: set metadata pads to
 MEDIA_BUS_FMT_METADATA_FIXED
Date: Tue, 22 Sep 2020 18:58:13 +0200
Message-Id: <20200922165813.19378-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922165813.19378-1-dafna.hirschfeld@collabora.com>
References: <20200922165813.19378-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_125823_307474_3C596E16 
X-CRM114-Status: GOOD (  12.63  )
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

Set the code of the metadata pads of the isp entity to
MEDIA_BUS_FMT_METADATA_FIXED and set the width and
height of their formats to 0. This solves the TODO
item:
"Fix pad format size for statistics and parameters entities."

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/TODO         | 1 -
 drivers/staging/media/rkisp1/rkisp1-isp.c | 8 ++++----
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
index f0c90d1c86a8..f4a94eca6d31 100644
--- a/drivers/staging/media/rkisp1/TODO
+++ b/drivers/staging/media/rkisp1/TODO
@@ -1,4 +1,3 @@
-* Fix pad format size for statistics and parameters entities.
 * Fix checkpatch errors.
 * Review and comment every lock
 * Handle quantization
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 02eafea92863..a6c0f1eb0c5a 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -574,7 +574,7 @@ static int rkisp1_isp_enum_mbus_code(struct v4l2_subdev *sd,
 	} else {
 		if (code->index > 0)
 			return -EINVAL;
-		code->code = MEDIA_BUS_FMT_FIXED;
+		code->code = MEDIA_BUS_FMT_METADATA_FIXED;
 		return 0;
 	}
 
@@ -630,10 +630,10 @@ static int rkisp1_isp_init_config(struct v4l2_subdev *sd,
 					      RKISP1_ISP_PAD_SINK_PARAMS);
 	src_fmt = v4l2_subdev_get_try_format(sd, cfg,
 					     RKISP1_ISP_PAD_SOURCE_STATS);
-	sink_fmt->width = RKISP1_DEFAULT_WIDTH;
-	sink_fmt->height = RKISP1_DEFAULT_HEIGHT;
+	sink_fmt->width = 0;
+	sink_fmt->height = 0;
 	sink_fmt->field = V4L2_FIELD_NONE;
-	sink_fmt->code = MEDIA_BUS_FMT_FIXED;
+	sink_fmt->code = MEDIA_BUS_FMT_METADATA_FIXED;
 	*src_fmt = *sink_fmt;
 
 	return 0;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

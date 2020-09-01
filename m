Return-Path: <SRS0=U2ba=CK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B491C433E6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 11:46:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3AD5820707
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 11:46:13 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qK+lcTV+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3AD5820707
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TPCsuf0VLh16ZClkN5CGD/RT060f9ZV9D5ABCQuZeww=; b=qK+lcTV+f1VDu3AAczAO8lmZRA
	KDqCJsMj6CSPjr4GB25CFwXH7ZkqcG/kDyCcDw7z0MIdzLsTcOly8rGjhf01i10CAznXJWD3Op6Es
	Rk6FIM0X2pWNd63jlplGUFAlIfqlHmpjjCw91K5yfprTFRpxZUfn/IKIkI6grEQHVYaqJrEsJCo/K
	eFpMAIjCUMV5XHFh9dOYQuVBP8qFETMPKpLW9/FLpWAMsKlw1++0mt/bPQIlhUknIyiDsHvszN4GX
	RA6s4s+wUXHeqoJPRsf5Qfw/vSs8EkHQ0J0OTyuR7mSwRQHrcv9MpXly6ilgpSRyhv+jq5yb9VbAf
	OlRzsjrA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kD4HG-0004kt-Kf; Tue, 01 Sep 2020 11:16:38 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kD4H5-0004cp-8E
 for linux-rockchip@lists.infradead.org; Tue, 01 Sep 2020 11:16:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id E4560297B92
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 09/10] media: staging: rkisp1: cap: simplify the link
 validation by compering the media bus code
Date: Tue,  1 Sep 2020 13:16:11 +0200
Message-Id: <20200901111612.10552-10-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200901_071627_452493_B65C14D9 
X-CRM114-Status: GOOD (  10.38  )
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

The capture has a mapping of the mbus code needed for each pixelformat.
This can be used to simplify the link validation by comparing the mbus
code in the capture with the code in the resizer.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 531381e1801a..79ee6795a58f 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -1265,22 +1265,11 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 	struct v4l2_subdev *sd =
 		media_entity_to_v4l2_subdev(link->source->entity);
 	struct rkisp1_capture *cap = video_get_drvdata(vdev);
-	struct rkisp1_isp *isp = &cap->rkisp1->isp;
-	u8 isp_pix_enc = isp->src_fmt->pixel_enc;
-	u8 cap_pix_enc = cap->pix.info->pixel_enc;
+	const struct rkisp1_capture_fmt_cfg *fmt =
+		rkisp1_find_fmt_cfg(cap, cap->pix.fmt.pixelformat);
 	struct v4l2_subdev_format sd_fmt;
 	int ret;
 
-	if (cap_pix_enc != isp_pix_enc &&
-	    !(isp_pix_enc == V4L2_PIXEL_ENC_YUV &&
-	      cap_pix_enc == V4L2_PIXEL_ENC_RGB)) {
-		dev_err(cap->rkisp1->dev,
-			"format type mismatch in link '%s:%d->%s:%d'\n",
-			link->source->entity->name, link->source->index,
-			link->sink->entity->name, link->sink->index);
-		return -EPIPE;
-	}
-
 	sd_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
 	sd_fmt.pad = link->source->index;
 	ret = v4l2_subdev_call(sd, pad, get_fmt, NULL, &sd_fmt);
@@ -1288,7 +1277,8 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 		return ret;
 
 	if (sd_fmt.format.height != cap->pix.fmt.height ||
-	    sd_fmt.format.width != cap->pix.fmt.width)
+	    sd_fmt.format.width != cap->pix.fmt.width ||
+	    sd_fmt.format.code != fmt->mbus)
 		return -EPIPE;
 
 	return 0;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

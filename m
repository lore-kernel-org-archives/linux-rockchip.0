Return-Path: <SRS0=U2ba=CK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49378C433E6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 12:23:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1856A20767
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 12:23:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UdfNJUXq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1856A20767
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ySkBJz8oqzqg7M7mqC62VMWXezs5jpgPpYNsxtMbYRU=; b=UdfNJUXqL+Xt3Kg1xSu6Kn5YC7
	mlUvKbgd47PvKDTZE7gsdQpJoZQ0+dEAWeQ8qH6mLpC/RbbPwne2ShSzQOooGxdWOF96IKPaDPj/K
	1vmH6bGLOH6MrDBkYzEh5haOtymwUZBQ2gRRIrXlPxdUJTI/XPPcqMh3L9tqTEfXJ/mpv/D4J5j0U
	GPITnMCxqJQetEZq8jSYV17sGLU/20HJU1FahGTwDc49lUyEfyBrk7B24XeiQfgSRFPaTIZdZMgEG
	vY+ZEOdrDhqGA/so154Z9gWmj1e04xr+q/QBA4pqO+htvLJfYZIk/EnyJmQl00p4Gq/qrcwVDuzjX
	5foH6azA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kD4HE-0004jt-VO; Tue, 01 Sep 2020 11:16:37 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kD4H5-0004cc-2t
 for linux-rockchip@lists.infradead.org; Tue, 01 Sep 2020 11:16:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id DE07E296CCD
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 07/10] media: staging: rkisp1: rsz: enumerate the formats
 on the src pad according to the capture
Date: Tue,  1 Sep 2020 13:16:09 +0200
Message-Id: <20200901111612.10552-8-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200901_071627_240781_DBA7144F 
X-CRM114-Status: GOOD (  14.31  )
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

Currently the resizer outputs the same media bus format
as the input. This is wrong since the resizer is also used
to downscale YUV formats. This patch changes the enumeration
of the supported formats. The supported formats on the sink pad
should be taken from the isp entity and the supported formats on
the source pad should be taken from the capture entity.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 066d22096a7d..0e4a2c931ab0 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -437,6 +437,17 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
 	u32 pad = code->pad;
 	int ret;
 
+	if (code->pad == RKISP1_RSZ_PAD_SRC) {
+		/* supported mbus codes on the src are the same as in the capture */
+		struct rkisp1_capture *cap = &rsz->rkisp1->capture_devs[rsz->id];
+
+		return rkisp1_cap_enum_mbus_codes(cap, code);
+	}
+
+	/*
+	 * The selfpath capture doesn't support bayer formats. Therefore the selfpath resizer
+	 * should support only YUV422 on the sink pad
+	 */
 	if (rsz->id == RKISP1_SELFPATH) {
 		if (code->index > 0)
 			return -EINVAL;
@@ -444,7 +455,7 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
 		return 0;
 	}
 
-	/* supported mbus codes are the same in isp video src pad */
+	/* supported mbus codes on the sink pad are the same as isp src pad */
 	code->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
 	ret = v4l2_subdev_call(&rsz->rkisp1->isp.sd, pad, enum_mbus_code,
 			       &dummy_cfg, code);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

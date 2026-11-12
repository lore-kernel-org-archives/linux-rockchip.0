Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1748606A89C
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 18:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GuNpgUEU;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=V1TBVy4H
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2odeOdo5Oasp0o/n5iOZWv+YhTQVZvHzXuCN3IKFZcs=; b=GuNpgUEU4DYvSkkFDBdTx6ppPw
	bWVI9lIxNt8TVxXH+Bblc8UdgiqmKLqK42faUM3pKga43U96WRd3vbt28XzrKog/DUh5Ft5/XAX3C
	uu7dCTvkAn0RHqKrpzGvW/Bt/R/W4BYlQvY+vwILEYcelFOEpdmCloCop9/F5pRW7CxMuI/f6oCf9
	S5VcuVURVX3L9a1tlIxI3CF6ljkCdXddgjFeop/cVqOGbd+nmrcPe/Wf0mtfuCSaaALejdC8yVmBF
	eIdAOoNpdLz7vafEXWLbQ/gmsUS56lwnZCXOqJeepCfMKlZ/luzBCUOFBPwxw66l4Kvcclc09qL+x
	BR25M3VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZaz-0000000AsAr-33Rg;
	Thu, 12 Nov 2026 18:32:25 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZav-0000000As90-2Eov
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 18:32:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794508342; x=1826044342;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=IGBhMtrRjJl0n4esDMpqx2bbeKyzIv4/AzvkzeFD/eE=;
  b=V1TBVy4HRu6CEG1Zo/tDoS/wcIO+ev7M4uC89+zJTWwtuUO4J5CcB9hL
   c80uRbxWJIGvdC/VfJ3Q6A2LdNaNrr5N3jEIt4BbclQDQYngPW0eea5Zo
   s9kOLgF90JAxxUoXZVV+OPgBFMNVf35oe5zF6zvkbdsqOMj+LhKYnc/0X
   VAm/Gv3v+1+mf3w60dzXfJ4U3FyK2fjSFP8wC9iJ4XbEwuDZASvUqqZGn
   yetzbMUulODOAV27jA/aSE+wP+UHq6M6ic2cSsS1RKgW0/P3++bi5ZtEy
   U7zfEYZluuSvhwh6/QVG4OawiiXOG1enkLNlWS9XJIu8k9oh0t5nRU/jJ
   A==;
X-CSE-ConnectionGUID: wcg15rLMSYqB/t749E+djw==
X-CSE-MsgGUID: yL1CcPt7SCCyxmQrBu/93w==
X-IronPort-AV: E=McAfee;i="6800,10657,11964"; a="3347791"
X-IronPort-AV: E=Sophos;i="6.27,210,1787036400"; 
   d="scan'208";a="3347791"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2026 10:32:22 -0800
X-CSE-ConnectionGUID: mrtK/zTLT2+59ewYre5AsA==
X-CSE-MsgGUID: isn7RK4RRPW5xFvUSVRnEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,210,1787036400"; 
   d="scan'208";a="8618135"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO mdjait-mobl.intel.com) ([10.245.244.103])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2026 10:32:20 -0800
From: Mehdi Djait <mehdi.djait@linux.intel.com>
To: michael.riesch@collabora.com
Cc: linux-media@vger.kernel.org,
	paul.elder@ideasonboard.com,
	daniel@makrotopia.org,
	linux-rockchip@lists.infradead.org,
	Mehdi Djait <mehdi.djait@linux.intel.com>
Subject: [PATCH v1 2/2] media: rockchip: rkcif: Validate the pixel format against the media bus code
Date: Thu, 12 Nov 2026 19:32:08 +0100
Message-ID: <20261112183208.2688580-3-mehdi.djait@linux.intel.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261112183208.2688580-1-mehdi.djait@linux.intel.com>
References: <20261112183208.2688580-1-mehdi.djait@linux.intel.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_103221_716316_370AD847 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.2 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The link validation only checks the frame size, so a pixel format that
does not match the media bus code on the source pad is accepted.

Reject such pipelines with -EPIPE.

Signed-off-by: Mehdi Djait <mehdi.djait@linux.intel.com>
---
 drivers/media/platform/rockchip/rkcif/rkcif-stream.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
index 3130d420ad55..66726f654674 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
@@ -460,6 +460,7 @@ static int rkcif_stream_link_validate(struct media_link *link)
 {
 	struct video_device *vdev =
 		media_entity_to_video_device(link->sink->entity);
+	const struct rkcif_output_fmt *fmt;
 	struct v4l2_mbus_framefmt *source_fmt;
 	struct v4l2_subdev *sd;
 	struct v4l2_subdev_state *state;
@@ -489,6 +490,17 @@ static int rkcif_stream_link_validate(struct media_link *link)
 		goto out;
 	}
 
+	fmt = rkcif_stream_find_output_fmt(stream, false,
+					   stream->pix.pixelformat);
+	if (!fmt || (fmt->mbus_code && fmt->mbus_code != source_fmt->code)) {
+		dev_dbg(stream->rkcif->dev,
+			"link '%s':%u -> '%s':%u not valid: Format mismatch\n",
+			link->source->entity->name, link->source->index,
+			link->sink->entity->name, link->sink->index);
+		ret = -EPIPE;
+		goto out;
+	}
+
 	ret = 0;
 
 out:
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=pTeD=EM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18E04C55178
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2020 12:19:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7207220728
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2020 12:19:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="bAAhkhTS"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7207220728
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e0YliznyvlAWzsf5pZTM0F/rQN8/U0xgCzFgyb9wZho=; b=bAAhkhTS9BWNT8IXS0tft/tuS
	FMfj4Hy6ojWbtGCuJMBgRuGKY0Y3TCdPWwNmfjuxNvtJtqL3enS2DCEDj3pJoHRap2LRhXD/s1NRU
	zAYkigX8U9ukSYfDx/8ryRvPqhWDdOF5opU0eH40WGtmfsmL9ysRgqLREREkIbDr44PDtFyBlwAJW
	NJzGNbWNgoGYjCM59PRPfHA0doSzSErzWKgGfMbCUfZdARp5942UhlMgZ6SNb4i68duBkWPjnYJSt
	KGVwtl00rXzxxZWL6X9YRGTpHe9rDl3+gs9fdZE3hKPW5IJTfYtDXFhopLgZS2flRH3PhVneKNsDM
	+PG1d+V8g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kb0ig-0001iP-On; Fri, 06 Nov 2020 12:19:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kb0if-0001hk-CY
 for linux-rockchip@lists.infradead.org; Fri, 06 Nov 2020 12:19:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 7FD9F1F468B4
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 1/2] media: videodev2.h,
 v4l2-ioctl: add rkisp1 meta buffer format
Date: Fri,  6 Nov 2020 09:19:36 -0300
Message-Id: <20201106121937.1459948-2-helen.koike@collabora.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201106121937.1459948-1-helen.koike@collabora.com>
References: <20201106121937.1459948-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201106_071953_562732_895939C6 
X-CRM114-Status: GOOD (  11.82  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 niklas.soderlund@ragnatech.se, linux-kernel@vger.kernel.org,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, hverkuil-cisco@xs4all.nl,
 kernel@collabora.com, zhengsq@rock-chips.com, ribalda@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Shunqian Zheng <zhengsq@rock-chips.com>

Add the Rockchip ISP1 specific processing parameter format
V4L2_META_FMT_RK_ISP1_PARAMS and metadata format
V4L2_META_FMT_RK_ISP1_STAT_3A for 3A.

Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
Signed-off-by: Helen Koike <helen.koike@collabora.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

---
Hello,

This patch is a continuation of:

https://patchwork.kernel.org/project/linux-arm-kernel/patch/20191106120132.6876-2-helen.koike@collabora.com/

These formats are already documented under
Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst

Changes in V3:
- Rename description and comment to Parameters and Statistics.

Regards,
Helen
---
 drivers/media/v4l2-core/v4l2-ioctl.c              | 2 ++
 drivers/staging/media/rkisp1/uapi/rkisp1-config.h | 4 ----
 include/uapi/linux/videodev2.h                    | 4 ++++
 3 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index f0f6906a879de..3198abdd538ce 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1403,6 +1403,8 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
 	case V4L2_META_FMT_UVC:		descr = "UVC Payload Header Metadata"; break;
 	case V4L2_META_FMT_D4XX:	descr = "Intel D4xx UVC Metadata"; break;
 	case V4L2_META_FMT_VIVID:       descr = "Vivid Metadata"; break;
+	case V4L2_META_FMT_RK_ISP1_PARAMS:	descr = "Rockchip ISP1 3A Parameters"; break;
+	case V4L2_META_FMT_RK_ISP1_STAT_3A:	descr = "Rockchip ISP1 3A Statistics"; break;
 
 	default:
 		/* Compressed formats */
diff --git a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
index 8d906cc7da8fc..6e449e7842605 100644
--- a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
+++ b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
@@ -9,10 +9,6 @@
 
 #include <linux/types.h>
 
-/* Vendor specific - used for RK_ISP1 camera sub-system */
-#define V4L2_META_FMT_RK_ISP1_PARAMS   v4l2_fourcc('R', 'K', '1', 'P') /* Rockchip ISP1 params */
-#define V4L2_META_FMT_RK_ISP1_STAT_3A  v4l2_fourcc('R', 'K', '1', 'S') /* Rockchip ISP1 3A statistics */
-
 /* Defect Pixel Cluster Detection */
 #define RKISP1_CIF_ISP_MODULE_DPCC		(1U << 0)
 /* Black Level Subtraction */
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 927075fa9099e..761ac9da3ffda 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -768,6 +768,10 @@ struct v4l2_pix_format {
 #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
 #define V4L2_META_FMT_VIVID	  v4l2_fourcc('V', 'I', 'V', 'D') /* Vivid Metadata */
 
+/* Vendor specific - used for RK_ISP1 camera sub-system */
+#define V4L2_META_FMT_RK_ISP1_PARAMS	v4l2_fourcc('R', 'K', '1', 'P') /* Rockchip ISP1 3A Parameters */
+#define V4L2_META_FMT_RK_ISP1_STAT_3A	v4l2_fourcc('R', 'K', '1', 'S') /* Rockchip ISP1 3A Statistics */
+
 /* priv field value to indicates that subsequent fields are valid. */
 #define V4L2_PIX_FMT_PRIV_MAGIC		0xfeedcafe
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

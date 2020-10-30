Return-Path: <SRS0=455t=EF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00382C4363A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 13:46:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43E2C206CB
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2020 13:46:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="AZjWfbkl"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 43E2C206CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=k8H6KOlM80OKqhReZCnkjiZALMCl8WdREra9PDX5hX0=; b=AZjWfbklDMnsa62ju4Mw14LXwn
	4WWpWovwtn3XrzN8IEMoMhq7KCSy5e2vqFRa1axrQKiWzVKQlWnw5joxg2cM8+FwjohTLyoLuzdKi
	ZUQ/OQQpr4wP9GJ2DdsVaNCQmhVhHr8JjBvPRqqA7aQJcTIpgzgrGKORgo0w8sYBqCsY2abo4wrSD
	Oqpt/0+V0KJERZbRnyGVw7ugPEiTkPdziZekwhWcMbphH3/4PNancJayVeVUjrudlDzZlfae0R773
	MGOpe+pEM84YqC6SCtE0YRrfvZwGVMTUaY/svZTVz9QoJEHwRjlw+Ycbbs6viefyTZSYeLeQxhIvr
	iF69+ZBg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYUjY-0001zB-LR; Fri, 30 Oct 2020 13:46:24 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYUjV-0001xj-5M
 for linux-rockchip@lists.infradead.org; Fri, 30 Oct 2020 13:46:22 +0000
Received: from guri.fritz.box
 (p200300c7cf1c4d0058b3668391aeb6a8.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf1c:4d00:58b3:6683:91ae:b6a8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9C32D1F4492D;
 Fri, 30 Oct 2020 13:46:18 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 1/2] media: uapi: add MEDIA_BUS_FMT_METADATA_FIXED media
 bus format.
Date: Fri, 30 Oct 2020 14:46:08 +0100
Message-Id: <20201030134609.30020-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_094621_312840_D884C6E1 
X-CRM114-Status: GOOD (  13.26  )
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

MEDIA_BUS_FMT_METADATA_FIXED should be used when
the same driver handles both sides of the link and
the bus format is a fixed metadata format that is
not configurable from userspace.
The width and height will be set to 0 for this format.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
changes since v2:
added documentation in subdev-formats.rst
changes since v1:
1. replace "This format may have 0 height and width."
with "Width and height will be set to 0 for this format."
and add it also to the commit log
2. s/meida:/media:/ in the patch subject line

 .../media/v4l/subdev-formats.rst              | 27 +++++++++++++++++++
 include/uapi/linux/media-bus-format.h         |  8 ++++++
 2 files changed, 35 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/subdev-formats.rst b/Documentation/userspace-api/media/v4l/subdev-formats.rst
index c9b7bb3ca089..7f16cbe46e5c 100644
--- a/Documentation/userspace-api/media/v4l/subdev-formats.rst
+++ b/Documentation/userspace-api/media/v4l/subdev-formats.rst
@@ -7899,3 +7899,30 @@ formats.
       - 0x5001
       - Interleaved raw UYVY and JPEG image format with embedded meta-data
 	used by Samsung S3C73MX camera sensors.
+
+.. _v4l2-mbus-metadata-fmts:
+
+Metadata Formats
+^^^^^^^^^^^^^^^^
+
+This section lists all metadata formats.
+
+The following table lists the existing metadata formats.
+
+.. tabularcolumns:: |p{8.0cm}|p{1.4cm}|p{7.7cm}|
+
+.. flat-table:: Metadata formats
+    :header-rows:  1
+    :stub-columns: 0
+
+    * - Identifier
+      - Code
+      - Comments
+    * .. _MEDIA-BUS-FMT-METADATA-FIXED:
+
+      - MEDIA_BUS_FMT_METADATA_FIXED
+      - 0x7001
+      - This format should be used when the same driver handles
+	both sides of the link and the bus format is a fixed
+	metadata format that is not configurable from userspace.
+	Width and height will be set to 0 for this format.
diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
index 84fa53ffb13f..2ce3d891d344 100644
--- a/include/uapi/linux/media-bus-format.h
+++ b/include/uapi/linux/media-bus-format.h
@@ -156,4 +156,12 @@
 /* HSV - next is	0x6002 */
 #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
 
+/*
+ * This format should be used when the same driver handles
+ * both sides of the link and the bus format is a fixed
+ * metadata format that is not configurable from userspace.
+ * Width and height will be set to 0 for this format.
+ */
+#define MEDIA_BUS_FMT_METADATA_FIXED		0x7001
+
 #endif /* __LINUX_MEDIA_BUS_FORMAT_H */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

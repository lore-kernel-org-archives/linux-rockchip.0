Return-Path: <SRS0=vRnG=HY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB06AC433E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 12:24:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 851CA64EEC
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 12:24:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 851CA64EEC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mk2Pm3u1NMgidP5v8nf+pGzn9hg/LkLoai2c6O18H6Y=; b=kuK12NYXALyHGF6EKXexwS8yk
	ctUjWAISl8jllBQwoMmnwQRu2tBnV2zWQ7kDPZ1q9k9LBW3ufrvjv0wpBLPh3KYWB+p2Ir5nA3K9i
	yHKRnMnQtp9Y84phJRoELeLpkuwVwbQJ3o+baj6VgNmgX6XgNdKSpwc96ZiRdpK59UCG0xyesLdpv
	aIqdMmgvvesquKoEEWvsfqVofYo0qHD+qo/9d2g82thMxFSIbdsLYHHmrtYIvxuAQDJI3jDlad6Ui
	GH4SVb5NeomIlSjXeD9xOx4s3yIazWq56Tz8KtOw7ylMR0sGarDQh47OM+x0vJJU4HBOgGkfDgotc
	dCLEsT7dw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEAGZ-00032c-0a; Mon, 22 Feb 2021 12:24:43 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEAGH-0002uY-VE; Mon, 22 Feb 2021 12:24:28 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:5956:412c:4850:9073])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A7FE71F44FF7;
 Mon, 22 Feb 2021 12:24:21 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 peng.fan@nxp.com, hverkuil-cisco@xs4all.nl, dan.carpenter@oracle.com
Subject: [PATCH v3 4/9] media: uapi: Add a control for HANTRO driver
Date: Mon, 22 Feb 2021 13:24:01 +0100
Message-Id: <20210222122406.41782-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210222122406.41782-1-benjamin.gaignard@collabora.com>
References: <20210222122406.41782-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_072426_137469_B06FB940 
X-CRM114-Status: GOOD (  16.13  )
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
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The HEVC HANTRO driver needs to know the number of bits to skip at
the beginning of the slice header.
That is a hardware specific requirement so create a dedicated control
that this purpose.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
version 3:
- Fix typo in field name

 include/uapi/linux/hantro-v4l2-controls.h | 20 ++++++++++++++++++++
 include/uapi/linux/v4l2-controls.h        |  5 +++++
 2 files changed, 25 insertions(+)
 create mode 100644 include/uapi/linux/hantro-v4l2-controls.h

diff --git a/include/uapi/linux/hantro-v4l2-controls.h b/include/uapi/linux/hantro-v4l2-controls.h
new file mode 100644
index 000000000000..a8dfd6b1a2a9
--- /dev/null
+++ b/include/uapi/linux/hantro-v4l2-controls.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+
+#ifndef __UAPI_HANTRO_V4L2_CONYTROLS_H__
+#define __UAPI_HANTRO_V4L2_CONYTROLS_H__
+
+#include <linux/v4l2-controls.h>
+#include <media/hevc-ctrls.h>
+
+#define V4L2_CID_HANTRO_HEVC_EXTRA_DECODE_PARAMS	(V4L2_CID_USER_HANTRO_BASE + 0)
+
+/**
+ * struct hantro_hevc_extra_decode_params - extra decode parameters for hantro driver
+ * @hevc_hdr_skip_length:	header first bits offset
+ */
+struct hantro_hevc_extra_decode_params {
+	__u32	hevc_hdr_skip_length;
+	__u8	padding[4];
+};
+
+#endif
diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index 039c0d7add1b..ced7486c7f46 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -209,6 +209,11 @@ enum v4l2_colorfx {
  * We reserve 128 controls for this driver.
  */
 #define V4L2_CID_USER_CCS_BASE			(V4L2_CID_USER_BASE + 0x10f0)
+/*
+ * The base for HANTRO driver controls.
+ * We reserve 32 controls for this driver.
+ */
+#define V4L2_CID_USER_HANTRO_BASE		(V4L2_CID_USER_BASE + 0x1170)
 
 /* MPEG-class control IDs */
 /* The MPEG controls are applicable to all codec controls
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

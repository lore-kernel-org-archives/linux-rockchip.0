Return-Path: <SRS0=3svJ=HU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72B9BC433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 19:19:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F08D564E4B
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 19:19:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F08D564E4B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XF+CQxusXoPi4Jq8Hana+ODXyKWEd+ESn3tLXd5SYNw=; b=x638l0XFm9k6qurLX+28zBqp+
	ekQJ0YvjRJysEU2v1t9xkOxY0lHG872mfxh/+VdL7FmnpbIolXrEfk4oYq25WMHELjvUIqwpo/hpy
	h+bW5lEFvN3uhxvhXiTrxR6J8oOQjHGPK9unF5DlMMmRvGsjNZAdfdhP6HxeFf12xsLEfvgptqVtK
	yHG5D9xARWega0d9nBhhjxItgD4bVcisvAPENcwZjTxDN3Nd4yPYAs4k8ZYg2aUn0boHlMZrDyfAM
	e5SLSy3BD5osca4UCgsme7sF+yuYT96mbqx02J2PAY5MVxU9lb3QEp1CKLs+5fkV00GwOHGsMk7nd
	rvgwtkkAg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCoq2-0004AF-Pz; Thu, 18 Feb 2021 19:19:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCopN-0003ul-IJ; Thu, 18 Feb 2021 19:19:08 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:851a:1dfb:a143:80e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9D3941F454B8;
 Thu, 18 Feb 2021 19:19:03 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 peng.fan@nxp.com, hverkuil-cisco@xs4all.nl, dan.carpenter@oracle.com
Subject: [PATCH v2 4/9] media: uapi: Add a control for HANTRO driver
Date: Thu, 18 Feb 2021 20:18:39 +0100
Message-Id: <20210218191844.297869-5-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210218191844.297869-1-benjamin.gaignard@collabora.com>
References: <20210218191844.297869-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210218_141905_762586_E14783DB 
X-CRM114-Status: GOOD (  15.74  )
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
 include/uapi/linux/hantro-v4l2-controls.h | 20 ++++++++++++++++++++
 include/uapi/linux/v4l2-controls.h        |  5 +++++
 2 files changed, 25 insertions(+)
 create mode 100644 include/uapi/linux/hantro-v4l2-controls.h

diff --git a/include/uapi/linux/hantro-v4l2-controls.h b/include/uapi/linux/hantro-v4l2-controls.h
new file mode 100644
index 000000000000..30b1999b7af3
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
+ * @hevc_hdr_skip_lenght:	header first bits offset
+ */
+struct hantro_hevc_extra_decode_params {
+	__u32	hevc_hdr_skip_lenght;
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

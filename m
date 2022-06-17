Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D67B2C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 08:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dgm63FEjFTKJ0ml7xByoIQdPdmTrEW66Ka1+d+aHLzU=; b=zyHZoEkoa5ptDV
	2wjOM352jM7f1s/CtHKoJIn7WA/RkGU6cciVzCK9gkLatQU5Lr/51iMbLqeu+yNFBGcdvPtJHUeNw
	AkM6xUcLIauLCeAzYyc2ARlacIYDFfneEeedegFFris1geNQ90RfWpxKQXd+vxtgI0NSDfXVnlLML
	g/2LWMUtV5wPovGu+PJFyiyAI4BahqiiN/iij2HmegzXPlnVxbwptB6bMFlwvPvt69GwzStsS8eRl
	5BEBzQI846xw20WPgZbQmd46cwVMfmUr0rWU+eRYPwKTPIa41aB+jZjKrTGFAB2yKg9fgtnhRKRlp
	mo7/E9CBFp7ZU1OQLv9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27WM-006OAT-Np; Fri, 17 Jun 2022 08:40:02 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27Sg-006MTK-1U; Fri, 17 Jun 2022 08:36:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gNUFFZCavWuEqn9EJsGDTx+DMfDyCTJi6aAj+gp0a1Q=; b=CAPLAryo29+h9JAlcEIRZJQAzM
	BAi0eH2ynhJ8XJPNUJlrvDeLd3XDzTH9xhMG9UotdweuPFklzPSfdxB/HshhbVuNA98cmFMJlaDfq
	eoEUNbtj+8GkK4ubOb/300Hif3elzzz0vtdMqdHYy066eCXWhbm0khfgKZk+D1yaB38hSKj6PIXSD
	mVqS4DXcTIYXbda+C3HP7CHogsfU3FmAwON6c/gW3Lf0INcKf0Za4wzPGMnQFE/M1nb5R39zMRylp
	uJPOc90ut2Amt09ikBu9M2q+JeM3acHNc/S70eOA1YHM9YSWfqdqtsPyOsG/vyXwQybhc/oqCQ9XB
	plKqatfA==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27Sa-008dWm-Ne; Fri, 17 Jun 2022 08:36:10 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:faf2:1a12:f903:cc5e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 28F336601853;
	Fri, 17 Jun 2022 09:35:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655454958;
	bh=kSL26V8tK3ktfhskitAUWvwYkmkoBoukqQAYQe2xDU0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Cy0oV+ZUEKJ3quBzdaRQOkwT6Fk+7gla/coKppVH5eBMExnFS1oQBwyMdmfGb3Mfv
	 IqfYaVVxIko7Kpp2NAIpjBxl7jS0GYqU9I71OG4ZBx+yyy3yyQZQcsDFPkAE129Jjl
	 w4Wyh9aRkmTp7KMJD6IXwLv5ihMZD5i6oPr8/MydkzkSRXXdk8ADiFibTvXTwNCItm
	 XuEvXgj4YXufD2o9TwaqFjkLeLg8Of4cBc6SVS+gfEB3w7HVOBCP1KmD8YnEtIGSuC
	 nO3qqTQOj7C/XS2/C7MKSDflT6s2b6FV2wpIQ/HPlWySmUKtxBTpXtucrnKAbaGuPF
	 Uepx1taiPzVRg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	mripard@kernel.org,
	paul.kocialkowski@bootlin.com,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	nicolas.dufresne@collabora.com,
	andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v9 07/17] media: uapi: HEVC: Add SEI pic struct flags
Date: Fri, 17 Jun 2022 10:35:35 +0200
Message-Id: <20220617083545.133920-8-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220617083545.133920-1-benjamin.gaignard@collabora.com>
References: <20220617083545.133920-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_093609_189130_8AEC2B94 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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

The possible values for the field_pic field in the v4l2_hevc_dpb_entry
structure are defined in the table D.2 in HEVC specification section D.3.3.
Add flags and documentation for each of them.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../media/v4l/ext-ctrls-codec.rst             | 54 +++++++++++++++++++
 include/media/hevc-ctrls.h                    | 14 +++++
 2 files changed, 68 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
index 3dfb81a93935..8ba16e8742f3 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec.rst
@@ -3218,6 +3218,7 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
     * - __u8
       - ``field_pic``
       - Whether the reference is a field picture or a frame.
+        See :ref:`HEVC dpb field pic Flags <hevc_dpb_field_pic_flags>`
     * - __u16
       - ``pic_order_cnt[2]``
       - The picture order count of the reference. Only the first element of the
@@ -3231,6 +3232,59 @@ enum v4l2_mpeg_video_hevc_size_of_length_field -
 
     \normalsize
 
+.. _hevc_dpb_field_pic_flags:
+
+``HEVC dpb field pic Flags``
+
+.. raw:: latex
+
+    \scriptsize
+
+.. flat-table::
+    :header-rows:  0
+    :stub-columns: 0
+    :widths:       1 1 2
+
+    * - ``V4L2_HEVC_SEI_PIC_STRUCT_FRAME``
+      - 0
+      - (progressive) Frame
+    * - ``V4L2_HEVC_SEI_PIC_STRUCT_TOP_FIELD``
+      - 1
+      - Top field
+    * - ``V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_FIELD``
+      - 2
+      - Bottom field
+    * - ``V4L2_HEVC_SEI_PIC_STRUCT_TOP_BOTTOM``
+      - 3
+      - Top field, bottom field, in that order
+    * - ``V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_TOP``
+      - 4
+      - Bottom field, top field, in that order
+    * - ``V4L2_HEVC_SEI_PIC_STRUCT_TOP_BOTTOM_TOP``
+      - 5
+      - Top field, bottom field, top field repeated, in that order
+    * - ``V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_TOP_BOTTOM``
+      - 6
+      - Bottom field, top field, bottom field repeated, in that order
+    * - ``V4L2_HEVC_SEI_PIC_STRUCT_FRAME_DOUBLING``
+      - 7
+      - Frame doubling
+    * - ``V4L2_HEVC_SEI_PIC_STRUCT_FRAME_TRIPLING``
+      - 8
+      - Frame tripling
+    * - ``V4L2_HEVC_SEI_PIC_STRUCT_TOP_PAIRED_PREVIOUS_BOTTOM``
+      - 9
+      - Top field paired with previous bottom field in output order
+    * - ``V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_PAIRED_PREVIOUS_TOP``
+      - 10
+      - Bottom field paired with previous top field in output order
+    * - ``V4L2_HEVC_SEI_PIC_STRUCT_TOP_PAIRED_NEXT_BOTTOM``
+      - 11
+      - Top field paired with next bottom field in output order
+    * - ``V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_PAIRED_NEXT_TOP``
+      - 12
+      - Bottom field paired with next top field in output order
+
 .. c:type:: v4l2_hevc_pred_weight_table
 
 .. raw:: latex
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 01c1795c57a9..f3695ab44389 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -132,6 +132,20 @@ struct v4l2_ctrl_hevc_pps {
 
 #define V4L2_HEVC_DPB_ENTRY_LONG_TERM_REFERENCE	0x01
 
+#define V4L2_HEVC_SEI_PIC_STRUCT_FRAME				0
+#define V4L2_HEVC_SEI_PIC_STRUCT_TOP_FIELD			1
+#define V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_FIELD			2
+#define V4L2_HEVC_SEI_PIC_STRUCT_TOP_BOTTOM			3
+#define V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_TOP			4
+#define V4L2_HEVC_SEI_PIC_STRUCT_TOP_BOTTOM_TOP			5
+#define V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_TOP_BOTTOM		6
+#define V4L2_HEVC_SEI_PIC_STRUCT_FRAME_DOUBLING			7
+#define V4L2_HEVC_SEI_PIC_STRUCT_FRAME_TRIPLING			8
+#define V4L2_HEVC_SEI_PIC_STRUCT_TOP_PAIRED_PREVIOUS_BOTTOM	9
+#define V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_PAIRED_PREVIOUS_TOP	10
+#define V4L2_HEVC_SEI_PIC_STRUCT_TOP_PAIRED_NEXT_BOTTOM		11
+#define V4L2_HEVC_SEI_PIC_STRUCT_BOTTOM_PAIRED_NEXT_TOP		12
+
 #define V4L2_HEVC_DPB_ENTRIES_NUM_MAX		16
 
 struct v4l2_hevc_dpb_entry {
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

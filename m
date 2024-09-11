Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A54FEE49B8
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 14:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KW2YOREhW8T/5qAUpOUyfOXzmDkYb4NyWQcB/RmuIv0=; b=g31hv7iXERVB6A
	kVL/dy2rRNl258LybyepaSzyr38fXv9eegB5Eg5YaiA20FuG8ByNUGTGxRPria+O4jNS1GPuM3Qcf
	WomWaCL2JcZN6LOanz/DAbozQtkMTAlvS3W6shzyMYmSnVsrmSRke3lqxWh6iju5UAc+0T9tIxL3o
	2wC683VCtBxII8a+nLx9YdPqJspofAPBgE4N1cUrKAfuX1I/XWN5hNiK/VBWcactvjLAlTQUBPYQY
	/KdjUxcTRmqpGCvXkKPrRm24ZGU8OsYcbtbu4Dex7VfbzO9kNbjLw/KcblsCX3vA2oAVGg0HKtwJJ
	NKuZPpdzNAvELQGgSj2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soOE9-00000009sY6-0mDE;
	Wed, 11 Sep 2024 14:21:49 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soNlQ-00000009mKC-0vnY
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 13:52:13 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48B8oOqa007343;
	Wed, 11 Sep 2024 15:51:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	14gR+MCsBOivysdEUAEkA0MzfErSkPe5fIcIjROePWs=; b=xkObBTgKLxefMuuu
	yeOsvcerwQVyrZ15rJiZAUvLc0A8KLaJ9DeCsnvtc8BLjZlXzz90XLH0sadv1EZ5
	nQgSufU8nnKONbBqGZ9xtGFiRdPAx5DmuHrzyeW1/E3NDdE8JiV36WDZXXb/hbuT
	KUk+4JCrQCa5+a5aC9xmn/cBYah+4E2af64hQ5cEGRElcWP8KlqDOiU/7Qwo5Yjw
	eNq7ycx+Z/sddWQlTpq8Uj/JHwBEjAztESdTtaZ0a/QHIOBYxh6aDmmsTB1MG8+/
	1vMnI33aDJy2sEX2udOaMf44+4GBOayvJB5TLC1qF7Bw0tO0FYsGsDKEpdtfQpRL
	jVOE4w==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41gyeh7d6w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Sep 2024 15:51:37 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 0F1924004C;
	Wed, 11 Sep 2024 15:50:14 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 81FC5231534;
	Wed, 11 Sep 2024 15:50:14 +0200 (CEST)
Received: from localhost (10.48.86.208) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Wed, 11 Sep
 2024 15:50:14 +0200
From: Hugues Fruchet <hugues.fruchet@foss.st.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
        Ezequiel Garcia
	<ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Hans
 Verkuil <hverkuil-cisco@xs4all.nl>,
        Fritz Koenig <frkoenig@chromium.org>,
        Sebastian Fricke <sebastian.fricke@collabora.com>,
        Daniel Almeida
	<daniel.almeida@collabora.com>,
        Andrzej Pietrasiewicz
	<andrzej.p@collabora.com>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
CC: Hugues Fruchet <hugues.fruchet@foss.st.com>
Subject: [PATCH 1/2] media: uapi: add WebP VP8 frame flag
Date: Wed, 11 Sep 2024 15:50:10 +0200
Message-ID: <20240911135011.161217-2-hugues.fruchet@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240911135011.161217-1-hugues.fruchet@foss.st.com>
References: <20240911135011.161217-1-hugues.fruchet@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.86.208]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_065208_596741_A541FF6C 
X-CRM114-Status: GOOD (  10.67  )
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

Add a flag indicating that VP8 bitstream is a WebP picture.

Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
---
 .../userspace-api/media/v4l/ext-ctrls-codec-stateless.rst      | 3 +++
 include/uapi/linux/v4l2-controls.h                             | 1 +
 2 files changed, 4 insertions(+)

diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
index 0da635691fdc..bb08aacddc9c 100644
--- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
+++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
@@ -1062,6 +1062,9 @@ FWHT Flags
     * - ``V4L2_VP8_FRAME_FLAG_SIGN_BIAS_ALT``
       - 0x20
       - Sign of motion vectors when the alt frame is referenced.
+    * - ``V4L2_VP8_FRAME_FLAG_WEBP``
+      - 0x40
+      - Indicates that this frame is a WebP picture.
 
 .. c:type:: v4l2_vp8_entropy_coder_state
 
diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
index 974fd254e573..e41b62f2cb2b 100644
--- a/include/uapi/linux/v4l2-controls.h
+++ b/include/uapi/linux/v4l2-controls.h
@@ -1897,6 +1897,7 @@ struct v4l2_vp8_entropy_coder_state {
 #define V4L2_VP8_FRAME_FLAG_MB_NO_SKIP_COEFF	0x08
 #define V4L2_VP8_FRAME_FLAG_SIGN_BIAS_GOLDEN	0x10
 #define V4L2_VP8_FRAME_FLAG_SIGN_BIAS_ALT	0x20
+#define V4L2_VP8_FRAME_FLAG_WEBP		0x40
 
 #define V4L2_VP8_FRAME_IS_KEY_FRAME(hdr) \
 	(!!((hdr)->flags & V4L2_VP8_FRAME_FLAG_KEY_FRAME))
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

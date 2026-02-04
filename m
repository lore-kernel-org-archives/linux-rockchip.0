Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83B30E9538A
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 11:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5QlsEr+cdyjZEtmvwTuwOD3xlDju9E6lkdOLnEKh8w=; b=J9Dvxi3gpW7Bn+
	lrLUOeoKAS+hiOhXIfu4EkGXmYroH12niJ+VqgP2J1tE96RjdgrvFF78Cmcj1uV7TV7f6AXfIlXhi
	f5q2sNQ93BrjGAiT3shbW6m7xhZQRb4m3A4ZWQzw2nApatIH4PTbmm29DpZaJmuX7ZBaouJsHCpsf
	sxs0Ju+84K9Chc0cs+IOZu+/9jjGH1oF6uNqNlb1j/NTnEn9CRVQNYBbaMghpP3z2sAt8pPXVJjoF
	0cLcOaKcG1ku7D/qOgXwqFcwpSrH+qQJ+2MqskhQhAHHpHtEnBqW7D7QQYKnr1ZPhHbqqSNez8HPH
	ozFiP370EbxYDhtPb30w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnb0Z-00000008M0X-1Gl2;
	Wed, 04 Feb 2026 11:25:19 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnb0V-00000008Lyp-4Ane;
	Wed, 04 Feb 2026 11:25:17 +0000
Received: from t16.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5E1B210C4;
	Wed,  4 Feb 2026 12:24:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1770204271;
	bh=iclPN213YkwPa7GEz0O6Lo/r6Ez5c+6GrJlnrVg1GZ0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=I9Ba2pMZwtZSybtnMEdOBP0t/mo3fP4PY8d9Lo3MRnP9uOIzMtjSE+VRC8lzugVDT
	 LMH6Feh3sZoewAhb1udhgHhos9uggsP6Kc75OKE9y6yCADp8Vcuej5tOCt5bru85Q2
	 6kCFBVxhvfnSovc2XGyIZc5ggDjyX8MZgB1fNt6o=
From: Isaac Scott <isaac.scott@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: dafna@fastmail.com,
	laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Isaac Scott <isaac.scott@ideasonboard.com>
Subject: [PATCH v1 1/6] media: rkisp1-resizer: Add YUV source formats to resizer
Date: Wed,  4 Feb 2026 11:25:01 +0000
Message-ID: <20260204112506.3706049-2-isaac.scott@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204112506.3706049-1-isaac.scott@ideasonboard.com>
References: <20260204112506.3706049-1-isaac.scott@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_032516_229223_33868363 
X-CRM114-Status: GOOD (  10.78  )
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

To be able to use YUV bypass, YUV formats need to be available on the
source pad of the rkisp1 resizer. Add them.

Signed-off-by: Isaac Scott <isaac.scott@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-resizer.c     | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index 8e6b753d3081..e72b76ab078c 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -23,11 +23,26 @@ struct rkisp1_rsz_yuv_mbus_info {
 };
 
 static const struct rkisp1_rsz_yuv_mbus_info rkisp1_rsz_yuv_src_formats[] = {
+	{
+		.mbus_code	= MEDIA_BUS_FMT_UYVY8_2X8, /* YUV422 */
+		.hdiv		= 1,
+		.vdiv		= 1,
+	},
+	{
+		.mbus_code	= MEDIA_BUS_FMT_VYUY8_2X8, /* YUV422 */
+		.hdiv		= 1,
+		.vdiv		= 1,
+	},
 	{
 		.mbus_code	= MEDIA_BUS_FMT_YUYV8_2X8, /* YUV422 */
 		.hdiv		= 2,
 		.vdiv		= 1,
 	},
+	{
+		.mbus_code	= MEDIA_BUS_FMT_YVYU8_2X8, /* YUV422 */
+		.hdiv		= 1,
+		.vdiv		= 1,
+	},
 	{
 		.mbus_code	= MEDIA_BUS_FMT_YUYV8_1_5X8, /* YUV420 */
 		.hdiv		= 2,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

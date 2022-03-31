Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C42F2C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 19:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JqGPZFUtPTIgrt3qpOCihFL5P1KRK+O0dbzkpDNSbsw=; b=obebs95co0CBDI
	gCdkJRW7dvNdZ8swihB6dn5T2DfTMHCSpXNcdAAcBPIUrlSvk10hOc/V1mMQ2ZXT6egUgeThD7i9e
	q6vLzOYFWG7uB7q3LmZ0lRu4u3zQx+w3ZP8BtUydHqfXt3LrzOAlpu0CtF8oULSZeWRwkz21WVZnH
	hU0TRwXcoOQy2EufCc7RHy4QEMNgfMz6k9SSn1Em2e6zu7Ux6Zmprwo7p94bfl3/MqENLylkGNUGL
	v1BtNA+5XUr8E1XUQYvr/0MNfMuV73S7sWJ9OwVkEpcbX5WD0xvM8TWenMtJKsZ3gxJrp1BMAjJ7t
	6AyLxABRJkqWUYv4AvEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1na0ch-003Rlw-5J; Thu, 31 Mar 2022 19:38:23 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na0cU-003RU3-FZ
 for linux-rockchip@lists.infradead.org; Thu, 31 Mar 2022 19:38:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 092A01F47266
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648755489;
 bh=rqMU1/6TJ46L9lH5r2+bP74ysDX3ywT+LO6k1I+k3Bg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A9lbdHIAvXLk56s++dH+TARP3iPn8nxqBL43DHyHw063RYlN3TCEBrYyFCaE0LiP9
 rGMCV/SOgX8KwJWC0Ihv8exLfF4D8ER9ORtY2rTYGBsSItbcvqnQ5llHSkSUZVXoMS
 qHB12chJCWDhbw6Zk4uEgSXS/d5TG3qw8AcPV1Xms2x0QfbvlRddxzfwndEv4IRobN
 HbrG8GRarM6+xbaMW2Y11TsETJMU5FD6WJXUYvJZgavz2rdNrCpgElXJ5loFoJHXFM
 14rhrTNPNloz9KXCVzwnj+l+7fT+t3D/KrlFV4mjrMDvLo1udPFCKEpk41R+gSXuLA
 qfu1iCs6k1FhQ==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH v2 21/23] media: hantro: Stop using H.264 parameter pic_num
Date: Thu, 31 Mar 2022 15:37:23 -0400
Message-Id: <20220331193726.289559-22-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
References: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_123810_697362_15CBC480 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The hardware expects FrameNumWrap or long_term_frame_idx. Picture
numbers are per field, and are mostly used during the memory
management process, which is done in userland. This fixes two
ITU conformance tests:

  - MR6_BT_B
  - MR8_BT_B

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/hantro/hantro_h264.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
index 0b4d2491be3b..228629fb3cdf 100644
--- a/drivers/staging/media/hantro/hantro_h264.c
+++ b/drivers/staging/media/hantro/hantro_h264.c
@@ -354,8 +354,6 @@ u16 hantro_h264_get_ref_nbr(struct hantro_ctx *ctx, unsigned int dpb_idx)
 
 	if (!(dpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
 		return 0;
-	if (dpb->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
-		return dpb->pic_num;
 	return dpb->frame_num;
 }
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

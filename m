Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C888C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 May 2022 14:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fc3QpG3qLKWTiPMs7mqq2nr+P9X1Z8Io6zOD7Ly2oUA=; b=dv9koMeGeVBJVO
	8CbYVES3Kp6Lz/4IGT+58OYHlxugIvk3Zg+GQzWILzJ3mT06hVh/ikfUDJB4929eklF5IKX3aTKkf
	I01RR0UlV1RaaqdtDO9DJ+WNh6V8DETTm0qLTmLwWytCkTmbAuSrkcHTMKTtSBrrCoXqh4kJ2ZE+w
	XtW22/6EQkrlJjn2JKjev7JrqkpAFnZlHfk/Q4Hbe8TKhmDWb2MeSwyO7Rldx9r6NjZWYxW0zDx5a
	NykOWLu+HH7PMOCUnAx+IKqtWP1+CTBCNexDu9n/tb8qTl+sKVbdwydArgspADl8CcbAu+0zackiy
	VWIRAgiYEbz+U+weLP5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvg0G-007256-4p; Mon, 30 May 2022 14:04:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvfg1-006q3t-3d
	for linux-rockchip@lists.infradead.org; Mon, 30 May 2022 13:43:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A5F3560FC8;
	Mon, 30 May 2022 13:43:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F08FEC385B8;
	Mon, 30 May 2022 13:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653918200;
	bh=lyG/J14veE4PPv7P93S7wmHZ8PtfDwL4ePf9On8nxYM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qpxDLNSZad9C5mn4P1PtLw/PYrQHhq8s3bhU93V8DK8A4nnUCa8BNRjcMbSZq1P2T
	 hnkdDjwlsMRcZwXHxBkgTTc/YRt/63Iri9MaJhI5PgvWhtXeOLKNVv7u/pZ9MFT45d
	 a5/qFahL4Cx2hL0G9U03L49lkrWToOqTJ5IbOGiK6ff2z78D858Giqo5JTUMtlowS/
	 8N8z9plMbHIzL9uxdl2K26FMIQexxo5whrueklP4Gg0Th+GEuY/R72ZIakMrifqcL9
	 vymjhd6jPqqes0sLJnCjy1/EFDMVRRAHTsvn7d6U3oHXi6WsEyi+0MsAQoZPa2uQch
	 7DR/9ad1y2FsQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev
Subject: [PATCH AUTOSEL 5.15 092/109] media: hantro: Stop using H.264 parameter pic_num
Date: Mon, 30 May 2022 09:38:08 -0400
Message-Id: <20220530133825.1933431-92-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530133825.1933431-1-sashal@kernel.org>
References: <20220530133825.1933431-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_064321_344656_EB68BC48 
X-CRM114-Status: GOOD (  10.98  )
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

From: Nicolas Dufresne <nicolas.dufresne@collabora.com>

[ Upstream commit 831410700909f4e29d5af1ef26b8c59fc2d1988e ]

The hardware expects FrameNumWrap or long_term_frame_idx. Picture
numbers are per field, and are mostly used during the memory
management process, which is done in userland. This fixes two
ITU conformance tests:

  - MR6_BT_B
  - MR8_BT_B

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
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
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

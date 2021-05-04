Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD536C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 11:37:35 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 834CC611AE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 11:37:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 834CC611AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=maFgmNBfEJUv7cC7MBkHC1F9ys5vNokxCOQB0ghSQjQ=; b=TPHf4zcneG40oRLtNZ5znw0qmq
	pkFS2YOyXQVzX+fROon6H+dY6vp1gF+PT39fRkC8+gHv8V3C0igQfgJiF+hMoLgu5mv87wYHw7w9O
	NMaLVb3a3wSoMcFXQ/iuzjkPuKFcY6Qoz1gieWFCCPEjRSFM0EkKUwCnAONPrbtoP84GQZ7CozJOe
	Y7ccZNdSdKVxmBcM3+LGRiv/S+2vqkvysIb7hJJ3TDnnl/x7+Px68mNYtiWP1m3pgeKgmoJjBuzE3
	+2SX7lAMBaPajBdyHzynag4KB1VsNKNSecs2xh1IlT2SZaKsIbNceoL4IsQxb1FK0YQiH9SpnC4HG
	ADTNmsqw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldtMo-00G6Tw-2x; Tue, 04 May 2021 11:37:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldtMm-00G6Td-T6
 for linux-rockchip@desiato.infradead.org; Tue, 04 May 2021 11:37:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=1QS4YSKos79YOZGnOHOCHWbkEZm1bXnCFksv1+h0Nm4=; b=L4wsf3JW3z3w5WPm8SimB+S0dx
 CAVqBDtfhf1qE6ptEOFr5Qyqf/TyI/hHSeZhaZ1vexAtedJgVOvcOPt5x6ag3cuuBL7lsKanX2bWg
 LMnmf89Fxrrkdzio0uplVYrq9HLE8CwWbZBqcDTrLgXK85Fo3Kbdu0Oc6kOEQUWu1aV0TDDPUVkIj
 r/9IawSDMaT+3vXE9UM6zdBVzmlT7ij+U0wPSXOrbC9HBmmYG5sQupBFj8SYO2Tnw4XKIgVv4GeSv
 N5hQPyttN83RdYBPsY1R9kLDgkRG+epklxosT169dzMWWk9cukoCPiwYfOKoga1Nl8RsSDa8+UU+Y
 j/5ouQvQ==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldtMk-003wIN-6A
 for linux-rockchip@lists.infradead.org; Tue, 04 May 2021 11:37:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 3152B1F41DFC
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, kernel@collabora.com,
 Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: [PATCH] media: rkvdec: Fix .buf_prepare
Date: Tue,  4 May 2021 13:37:14 +0200
Message-Id: <20210504113714.30612-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_043726_367383_F15DFBAB 
X-CRM114-Status: GOOD (  12.34  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ezequiel Garcia <ezequiel@collabora.com>

The driver should only set the payload on .buf_prepare if the
buffer is CAPTURE type. If an OUTPUT buffer has a zero bytesused
set by userspace then v4l2-core will set it to buffer length.

Fixes: cd33c830448ba ("media: rkvdec: Add the rkvdec driver")
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

---
@Hans: I haven't had anyone complain about the issue. The fix is needed for
the rkvdec vp9 work, so I think 5.14 is fine.

 drivers/staging/media/rkvdec/rkvdec.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index d821661d30f3..ef2166043127 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -481,7 +481,15 @@ static int rkvdec_buf_prepare(struct vb2_buffer *vb)
 		if (vb2_plane_size(vb, i) < sizeimage)
 			return -EINVAL;
 	}
-	vb2_set_plane_payload(vb, 0, f->fmt.pix_mp.plane_fmt[0].sizeimage);
+
+	/*
+	 * Buffer bytesused is written by driver for CAPTURE buffers.
+	 * (if userspace passes 0 bytesused for OUTPUT buffers, v4l2-core sets
+	 * it to buffer length).
+	 */
+	if (!V4L2_TYPE_IS_OUTPUT(vq->type))
+		vb2_set_plane_payload(vb, 0, f->fmt.pix_mp.plane_fmt[0].sizeimage);
+
 	return 0;
 }
 

base-commit: 0b276e470a4d43e1365d3eb53c608a3d208cabd4
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

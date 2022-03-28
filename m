Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC79EC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 20:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbZzsAsxICt9rQ3OzDinR1GbCPCEfKkmvXHlr1CWwU8=; b=aWEO35h2CR+CoS
	KYjjaRrPKlfGSVMWhiN48k7325AD/tdpiGOovnSQbuM5584n1XT+BYddv0Lg4/ptG1u9ivVgJkdMD
	A7UUOLdtjmbTkFWrN/sa6a46CpkHPAswJzr8TvZB0fz65BSSNMoU9MNs40ZGvq+xGeqkQK2cF4lPq
	V1O3MG6sIZipPEzg5XLfELchFPJUSuRCZrJ3y/fdUXjEkOrTwnjlE6kitiN1LF4d+bCS4ri8mQK/B
	ya5Gmb6+5fmD33vNZbTI9CcIcWOtchISH0dqpcvY/ShkICwv5Ki6mdmvTPqp6O7FTvovY+jtvHRoE
	r6352n2pTO1380v6Y4jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYvXS-009zei-K3; Mon, 28 Mar 2022 20:00:30 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYvXK-009zTf-Q8
 for linux-rockchip@lists.infradead.org; Mon, 28 Mar 2022 20:00:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 6107D1F438B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648497621;
 bh=qASp9j35h86HZHqACbW4hS8pRQcR68hjlS1LdUain6U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bSYBFsly9GrPfSwBI9lPzlksp9cEBsdRIyvQw2RwExw4t9cHPSfmpMTol+4t9Z2RU
 j3QxeXh0CDyalwcffVXx4lzqWFskW6LvhdiGU6/f/U6aoMhbw10J6KNiJlBMIt34Vf
 6TdZjf7ouduq5K7Pt9Ycmpw/MAjAuQFQtlsOFIzIXiTU1unRooRT5vrlpMau3Wb9Q8
 7gHQ9mYwOpa140DlGQVjpz00gfy8tTVhUXBHeGu0DK3mqncCtAmwzApZdFTOqn4dYC
 pfSbmR0rwINKx3pzQUCTmyLuYdhp2fXJrNk7QfryzTqKFzBp2uidnWwtBJTj42CSjg
 UM9DR4nZgn8GA==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 21/24] media: hantro: Stop using H.264 parameter pic_num
Date: Mon, 28 Mar 2022 15:59:33 -0400
Message-Id: <20220328195936.82552-22-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_130023_043654_CD1BDE85 
X-CRM114-Status: UNSURE (   8.86  )
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

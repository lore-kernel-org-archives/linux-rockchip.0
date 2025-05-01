Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F808C369DC
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 May 2025 21:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7At98YP5ihHjCAe4cq6wfy0+/9lVEv1oohcuJyTFT5k=; b=H8Gn+Q0SVtv72s
	QH68LZapmkaUAhxhfMFTYNMRBXAD0xyh0kaWQxGgJZ8+U/doD9TbO6w0+i8oIxRqMUigYegsM3Zat
	R5RdXyXe5NewXNL4ZMHWaHG6sxrECrmXuUb4nQ3oIR+dy0JwTJY31NJLdyT0cSaV7BpP7TryfHW4j
	f28RhHIpDjo294dcxFvkODZ0Yye5cBtv4yEU+wbTqXfkStVkAH34c8VMMHIHUQMTgnBFryeUygvfJ
	ycLuGoPS52RiGw4zWuyIPAQ8bZhB8yv+I4T0OGkzvI3NSfuhwN4AJFEc8+2NfPO18hFHZDlC9hfHw
	TRzsXDSstxoEOOB58YtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAb2F-0000000GpYy-2xCW;
	Thu, 01 May 2025 21:01:35 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAa0z-0000000GX4C-0SkN
	for linux-rockchip@lists.infradead.org;
	Thu, 01 May 2025 19:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1746129370;
	bh=mznnJHuLbKpYgm+SG5uyUsVWXj7gHH37CxevZHUxBVI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ga8zr9RBEQIyf6R40Aq8GvMyPwBilJndqvio72z2GNMPjLu1QNeJV17UjpTM9Bk2E
	 O4Sfb3MwllDCATa7SFRDWW7crfQSdR8YcehO7Rkh1xzn4y8OIdqPT22uR5wn3IB1zJ
	 SRBA7kVJlLupZHuM5QGHBaphA/orETX+v5X07i7/dtNV4PvfHh5SdJ+Rp1NDkVedRs
	 xvJY8Na55kGb3b3PO3OzP4nUEp/Gr/FtWtqFU4/wJSq6yc0XALLMfMBEgu08fYB2uQ
	 asskki3NcA/aQ2q0SSPW++po2VDBEcqnhGJV4EmTFInnPzNedZRlfSSUgPIGV8Fodl
	 bvApNx+eSnFzg==
Received: from [192.168.13.3] (unknown [IPv6:2606:6d00:17:8242::c73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 000D617E03BF;
	Thu,  1 May 2025 21:56:08 +0200 (CEST)
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Date: Thu, 01 May 2025 15:55:47 -0400
Subject: [PATCH v10 1/4] media: rkvdec: h264: Limit minimum profile to
 constrained baseline
MIME-Version: 1.0
Message-Id: <20250501-b4-rkvdec_h264_high10_and_422_support-v10-1-c380ba452108@collabora.com>
References: <20250501-b4-rkvdec_h264_high10_and_422_support-v10-0-c380ba452108@collabora.com>
In-Reply-To: <20250501-b4-rkvdec_h264_high10_and_422_support-v10-0-c380ba452108@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com, 
 Sebastian Fricke <sebastian.fricke@collabora.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_125613_328559_F67E420D 
X-CRM114-Status: GOOD (  10.49  )
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

From: Sebastian Fricke <sebastian.fricke@collabora.com>

Neither the hardware nor the kernel API support FMO/ASO features
required by the full baseline profile. Therefore limit the minimum
profile to the constrained baseline profile explicitly.

Suggested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index dd7e57a902640d363d26be887cb535c2668d5b15..65c6f1d07a493e017ae941780b823d41314a49b8 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -150,7 +150,7 @@ static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
 	},
 	{
 		.cfg.id = V4L2_CID_MPEG_VIDEO_H264_PROFILE,
-		.cfg.min = V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE,
+		.cfg.min = V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE,
 		.cfg.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
 		.cfg.menu_skip_mask =
 			BIT(V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED),

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

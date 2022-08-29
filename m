Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE85BECAAD5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 16:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dsN7srlHtAoe+zrXGsLQbfsHL2ENOBGAWWVkL5HM/s=; b=wVdDqHrDpiDb+a
	U8qtbCtpG6YuuEvqWJJ4xl8xNAOdeEOcctpApZ+R19OI90gdWmjBtquxaN8Z/IgrIMs8nM2VWfcp7
	/cNtwbFVb0Jndxd/Iw3+D1ViQHRWYU/iWbby/7nbMfWmjsQAxTJuVejgh1eT4wC/l6365dia40mxp
	iS98Qopd+rBWn5Bhmx7sKKdi0d9ErXO0xkZfdPVAkM/BNcga5UdbHUGCeOYTNCXjrxV0eLiPn6M/D
	KpZKKlvEnqgrMjmBLRHpzo6lSbzikShNcZaqOY69vPBr1zMJfAnNJfxPcoU9MoazzoGb9Q7VqVHDi
	vdI+JDqe3ZCOBDzX78OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShnY-00Bp0e-N8; Mon, 29 Aug 2022 16:39:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShWq-00Bi49-CE; Mon, 29 Aug 2022 16:22:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=yC3llDuc34cjX2uKhA9MvqVX9kxfqXb4XbYmoh7zsiM=; b=iW9rmXkQlw5lA712b8yVUqTtU9
	iYURp6MzseC4Qapuelu7QsGB1KD+F7NEroSfBVVN3YltI7tozGcsWtK4cYLgfsGcPNB/Bdu9/p1wx
	vumHXrOJGo5PryNcWVxCBUZjav1t0OmQBRLlilVjbeYhcgB3/6wJ7CKG0nECyif3RCZnmwIrmIHym
	4nOHsgSboWjMo/KUjd4HNBnSB/tFRWT6WPcOI1Qr2jayx7IBuySJTo9ck2eikmpktnvRv5gwNbTMW
	kP+8C3+YmXlptF1ZU9furCFYsQdkzCLBquiVXleoXNkM4T9OdKX2UZA0d8H4NOFo4qW153dPTBXxP
	VxhOWAVA==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShWl-007Xlh-Mv; Mon, 29 Aug 2022 16:22:21 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:3d67:aec0:f788:1143])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 53D476601EFF;
	Mon, 29 Aug 2022 17:22:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661790131;
	bh=M5ZcAnXCHIW8WBJJFvQ8ua1pus1t1OQ7+0Ziri9QNjY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dST9jvLeCc8LRg7MMSnOVWiXfXBWHfpDa4gdqUrYPB1+JXkeA5yOCywXzPhx6N1Xb
	 R5te2yazV4yQiRFYw2SB/w41Swt2/J32NacOaqoV/w/b5j3cFyZMSkvThHYWRcouBM
	 HuRnMz8fmLUzUbFjtUTEVaOFt48M+KEzdzaYCAM08DiCu4HJOBswh8Uam9FZTE26Xy
	 hk4NN5RorYlPOo5+JM60XxH3VvMw6lXX7wfqwr10gKdkDIxoq8ToJjOS6AeQlfWZ/s
	 gpTosgT3eJ6gttM3a71yKaR5x8Z6a/gxuUQq2b0DChAHBfGMvnoeBQQO2aFZZp1GDm
	 R3WK5IgC5WJ2g==
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
Subject: [PATCH v3 5/7] media: Hantro: HEVC: Allows 10-bit bitstream
Date: Mon, 29 Aug 2022 18:21:57 +0200
Message-Id: <20220829162159.881588-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220829162159.881588-1-benjamin.gaignard@collabora.com>
References: <20220829162159.881588-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_172219_938218_CBE81691 
X-CRM114-Status: GOOD (  10.74  )
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

Stop limiting HEVC support to 8-bits bitstreams also
accept 10-bits bitstreams.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 1dd8312d824c..7c75922e2e98 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -274,8 +274,8 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 		if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
 			/* Luma and chroma bit depth mismatch */
 			return -EINVAL;
-		if (sps->bit_depth_luma_minus8 != 0)
-			/* Only 8-bit is supported */
+		if (sps->bit_depth_luma_minus8 != 0 && sps->bit_depth_luma_minus8 != 2)
+			/* Only 8-bit and 10-bit are supported */
 			return -EINVAL;
 
 		ctx->bit_depth = sps->bit_depth_luma_minus8 + 8;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

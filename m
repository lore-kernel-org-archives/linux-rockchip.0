Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB1B7C2BA18
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 06:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=doPYTIsIH5mk76CUAnYeoJgb6GmLUc8PeReZuaQyCn4=; b=ceYc/LQ/HBd9Ay
	1x9U5n1H5odAZ3dH18Pp9JgV7assYMQVjPMqwZtdaTMMbMGYHzCmW/KZeuaUZu0211KUTF9xeXQ/r
	XxMZtAT/s7XEAL8HRsXQbDDAei/M0Y4qPXHbof9K8SZA4HGDhNGW2LFiAw06k2M+fTLVzFv+QNYHl
	MjnSji5wnLOBgQ6LxyS/1Pa+z+2pS2xOOGqFfRBXoQ+x4caKDBXe9RV06GTXry/4mHL+QycP7sua5
	Kcvvc9Z9KsWwPLUfI0H/g2p8KYVgIcYXmL1O6JQfaJLwXma4SRXtyvGOKpvkzwRJ+7vK17Q9D2wmz
	A/iI8Y8FNXWKJsCiTa9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKBMQ-00000003oX0-1SDm;
	Thu, 20 Jun 2024 06:33:30 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKBMN-00000003oUw-0w37
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Jun 2024 06:33:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1718865207; x=1750401207;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=l6H8FP2mpqCvryZ//MA7LA1mh1+A8ayGdScvIrjtFiM=;
  b=fqO3Djv11Bxlsi/wQr2EWjeqN3NLJsruU7AJmrpNmnTLCoHVLSq28mK4
   3StlZKqepmhFvx+RnzwiVy9ODXSwacBTwQqY9Zx/2JCJez8Nd2OKWaHoZ
   VECqKFplisPb2pIPsr8Ely6W1wGCx+QaIQFbY7p+IpA07i1hvgPqyoNvM
   ICPOUtxr5OagJdhrwNjx+sFBoNmwzzre5f5C/al16Srq0WsLPUyiojlGW
   OWfni7flNUj8RjYeka9EeupUQv7ldbMVV6caxPzcJlNANdBDBXlDr+ja7
   DBlVf2b0tcj0yVyPvOGs6xKQNQKA1Ks1I+8MS3fRgP/HU1SkKt3PXvrH0
   w==;
X-CSE-ConnectionGUID: dAG106jpTombTYn7mPadyw==
X-CSE-MsgGUID: dcILZs0LSwamU1xqybPwPw==
X-IronPort-AV: E=Sophos;i="6.08,251,1712613600"; 
   d="scan'208";a="37488758"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 20 Jun 2024 08:33:23 +0200
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CF8CE1668EE;
	Thu, 20 Jun 2024 08:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1718865199; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=l6H8FP2mpqCvryZ//MA7LA1mh1+A8ayGdScvIrjtFiM=;
	b=YCnYn+NbBgTowwUkiNqIgjt9GDRqWovZyuWTNKRVPlJCienrXqB2B6eD2WGZ9Yma2j4OXz
	ajT7UfgCst7aFoZ7xMo/U4c8vPGf2NO3PTobZs5We2nebFeVbIOHBaGyiUBRYNQ49XhI0N
	3geVpD+Z8qsY2OdFCo76JaQUIon8fC1UK5WD9ODfddKQXDYYKnH587RcZpH9ifLH0mOCBS
	/5gk2anX8cdOwWB58AIxFJIpf2Jw7brFu9SKMCerShCvOLF1SyY7qPCJVQLWVf1MuxX7Dz
	j4jG5TsA9qqQdPJUN9h0gRORhILf074CyBYPpglQPRD941TLkCACKp36f2xaqA==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] media: verisilicon: Move rockchip hardware drivers to the corresponding option
Date: Thu, 20 Jun 2024 08:33:13 +0200
Message-Id: <20240620063313.2309767-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_233327_735388_259DFDA0 
X-CRM114-Status: UNSURE (   8.02  )
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

There is no need to compile the rockchip specific drivers if
CONFIG_VIDEO_HANTRO_ROCKCHIP is not set.
All driver functions are only referenced by rockchip_vpu_hw.c which is
already under this option.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 drivers/media/platform/verisilicon/Makefile | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/verisilicon/Makefile b/drivers/media/platform/verisilicon/Makefile
index eb38a1833b02..f6f019d04ff0 100644
--- a/drivers/media/platform/verisilicon/Makefile
+++ b/drivers/media/platform/verisilicon/Makefile
@@ -14,13 +14,6 @@ hantro-vpu-y += \
 		hantro_g2.o \
 		hantro_g2_hevc_dec.o \
 		hantro_g2_vp9_dec.o \
-		rockchip_vpu2_hw_jpeg_enc.o \
-		rockchip_vpu2_hw_h264_dec.o \
-		rockchip_vpu2_hw_mpeg2_dec.o \
-		rockchip_vpu2_hw_vp8_dec.o \
-		rockchip_vpu981_hw_av1_dec.o \
-		rockchip_av1_filmgrain.o \
-		rockchip_av1_entropymode.o \
 		hantro_jpeg.o \
 		hantro_h264.o \
 		hantro_hevc.o \
@@ -35,6 +28,13 @@ hantro-vpu-$(CONFIG_VIDEO_HANTRO_SAMA5D4) += \
 		sama5d4_vdec_hw.o
 
 hantro-vpu-$(CONFIG_VIDEO_HANTRO_ROCKCHIP) += \
+		rockchip_vpu2_hw_jpeg_enc.o \
+		rockchip_vpu2_hw_h264_dec.o \
+		rockchip_vpu2_hw_mpeg2_dec.o \
+		rockchip_vpu2_hw_vp8_dec.o \
+		rockchip_vpu981_hw_av1_dec.o \
+		rockchip_av1_filmgrain.o \
+		rockchip_av1_entropymode.o \
 		rockchip_vpu_hw.o
 
 hantro-vpu-$(CONFIG_VIDEO_HANTRO_SUNXI) += \
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

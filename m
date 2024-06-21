Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1569C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 10:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YazeZc82PrrW5XbO70mtiBolc36KkLl80LnRpuA1Bk8=; b=kFYGkYdEXXHg5C
	2KDMDNkUiYfXN6QP2+0nNbUlNXhtJRkn9c09aQ6Jeozt8g5wLGwBwhMyXLWgFYnRP7HCDgHjYuLFY
	LwzO0Ev0k/2+i2f9AclZyXcotR8kBeTHAKu8ggpy08IPSh9rRpQt4WD3n/1Ed5yUanqB00R+/DwZD
	4LAJwUEd7vgzEdME1bgY2DMyo+weT09+sVBdat9Yvv8O+iyEdDjwDrX+XnOnlB9P0eNuz9KJorNs1
	DKV3o5UE3nfgKMWww7o0U/VdeChL8d65OcFEV0AWurZtkzkdPhglDMgyRI5i9yX8N+sO14A64mONq
	N49pkji75FgqU248HHrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKbqk-00000008q2Y-2pJE;
	Fri, 21 Jun 2024 10:50:34 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKbqg-00000008q1q-3ENK
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jun 2024 10:50:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1718967030; x=1750503030;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=SujQfNUHiwMLd2TT4Jk4V4QhaA+tmqeAHh0v8brNSO8=;
  b=EAPrYkU+o31v1PJOyD6y3g7+mntMLw4w9ghLWUdCwiJZHvAPEpg9HEIi
   jBXZuMZsD6xlbRluaHdoVL1NnkFRf8SB0AV4i9/Ne4Fmf1Yvr8hC2NHaR
   VQkNp+rixtTMTQlP4yWDrmBxwWee0Qljh8z/b/w/XT9dkZ/IGrMUm+V2s
   7wFeIR2OHMjVU/oiUFZeAVWjSG0a0GF7Qw4w4zzJyP7Tzd3oDgBhElAU9
   gcelwayMFD7RAZltka4jS4vORnl2JKo7bFhwOz58ykpP1hIicF/aEN/tu
   7x65MKu9Gzq1osnL9U6ounIA1WdGcETOVttTJIY+5q79ci5aU+i5Z92Ij
   w==;
X-CSE-ConnectionGUID: C1o0W+CFRAu5svSr91tgCw==
X-CSE-MsgGUID: Pr9t5FSTSeq7fLY6T52dig==
X-IronPort-AV: E=Sophos;i="6.08,254,1712613600"; 
   d="scan'208";a="37520407"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 21 Jun 2024 12:50:28 +0200
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 67099160A30;
	Fri, 21 Jun 2024 12:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1718967024; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=SujQfNUHiwMLd2TT4Jk4V4QhaA+tmqeAHh0v8brNSO8=;
	b=so2t6f3GnI3475zAEnwbtMFPMIUFQSVs1JhyNws4s9L/GtbhjRy1sBCX0Ltb4WATXIMG2U
	PARHYa1e1EquHGhCXc1FGe53mh0HZpGF/f7os4JoBHWN7p7X9OxqnZ0fxqbEVj6XUt1OGW
	dohamr1gh4nLzwZHap5yrlig3p/BBP6euFZ0pe2aC8CRJjRBVI2QtFeD21QazROBGZjUL3
	KJe7At0u7OVtY5b2Ha1Eg8zRO1Yt9Fo5T4v3mfn3eviEGhauDi1O/gtbK48SQ5zyWFQSyg
	PDcvi7C/Gq4RimLUzls0nOGj97+Y0lgLkTAuZTnKEdks5vfZnksg8AXj32rvsQ==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Alex Bee <knaerzche@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] media: verisilicon: Move rockchip hardware drivers to the corresponding option
Date: Fri, 21 Jun 2024 12:50:22 +0200
Message-Id: <20240621105024.4073007-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_035031_288628_C05033D2 
X-CRM114-Status: UNSURE (   9.78  )
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

Fixes: c9caebd57b3a ("media: hantro: merge Rockchip platform drivers")
Fixes: c07665f99386 ("media: hantro: Add H.264 support for Rockchip VDPU2")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
Changes in v2:
* Split and just touch non-AV1 drivers

As suggested by Nicolas split v1 patch into two separate ones
with their corresponding Fixes tags.

 drivers/media/platform/verisilicon/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/verisilicon/Makefile b/drivers/media/platform/verisilicon/Makefile
index eb38a1833b02f..d483530b2feff 100644
--- a/drivers/media/platform/verisilicon/Makefile
+++ b/drivers/media/platform/verisilicon/Makefile
@@ -14,10 +14,6 @@ hantro-vpu-y += \
 		hantro_g2.o \
 		hantro_g2_hevc_dec.o \
 		hantro_g2_vp9_dec.o \
-		rockchip_vpu2_hw_jpeg_enc.o \
-		rockchip_vpu2_hw_h264_dec.o \
-		rockchip_vpu2_hw_mpeg2_dec.o \
-		rockchip_vpu2_hw_vp8_dec.o \
 		rockchip_vpu981_hw_av1_dec.o \
 		rockchip_av1_filmgrain.o \
 		rockchip_av1_entropymode.o \
@@ -35,6 +31,10 @@ hantro-vpu-$(CONFIG_VIDEO_HANTRO_SAMA5D4) += \
 		sama5d4_vdec_hw.o
 
 hantro-vpu-$(CONFIG_VIDEO_HANTRO_ROCKCHIP) += \
+		rockchip_vpu2_hw_jpeg_enc.o \
+		rockchip_vpu2_hw_h264_dec.o \
+		rockchip_vpu2_hw_mpeg2_dec.o \
+		rockchip_vpu2_hw_vp8_dec.o \
 		rockchip_vpu_hw.o
 
 hantro-vpu-$(CONFIG_VIDEO_HANTRO_SUNXI) += \
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

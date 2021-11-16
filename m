Return-Path: <SRS0=A1uQ=QD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBF5C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 14:43:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 74C996152B
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Nov 2021 14:43:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 74C996152B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huI7bbMZ8FdsftHzcXghI7XI+SLhqS/LEbxeFPeuWQI=; b=WQjvh3TQVK7ncT
	cAWWml0UZQQ0IW8RW7n/meJeNLatjeFXx2FSpb80B233zNw2dkn78JMKqp9Nhl+6bK9SuQo6eZBq8
	jy4jwxK8Um8PiiBInuhxV/NU098VXYiBRPOLD5Sx/MFuc9rSGGUDJOupL8YvD3vQdvQZctleRYcOi
	yxx7y1CL9fz/APY74gdAPWixkrb56KggoAfFV3avQpb/WfhjSBCkvUgC9SIRyLtG3c+M5i5dXx2Ho
	ELiFurV7N3gxtlpJitz6Zpnwq2BfGfpD9bQxjAtRdWQf4AIi/CnTmsFVlXx8ofnrpYPVllKAfYfMc
	RKx1ZIc9koeBomZEJ2Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmzgf-001xm7-BC; Tue, 16 Nov 2021 14:43:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmzbv-001v5e-Oy; Tue, 16 Nov 2021 14:39:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 55D391F45838
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1637073538; bh=TANLJm9xsmsL2ZeuB9DdC+nljIRim54r5T26d7g1jdw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VNrpmKUxhP9TlcL1CXHAl+ulau05W0x6oOsQyGFZfm/iRxIU4s0KeKBcBZDA6we22
 yCZg9P3qWXT9hpGB5+LVkSeyqOobsGvyaxZQfgpL8D93dnLtn0WtEf/m3TMqY/Gh6i
 C1kJwBUIoDvnUFVI4eeUar2DcM8M1d2agsDRdmIKlxHhEBW2DRTXJgm8e+c/IzcJZT
 0PbU9lNBGkwaHBIFthNI9hk8TT+2ksdPAQBdumbHDN91itJDxdW8ySk88Nywt3qZ9o
 Dk6+tJ4KTUXX20oOjiUVyWgeCni5/AD/9Guza716tWy6/WdffVVxKg9FmL5NsRDsjb
 pxgRhh9sW5i6A==
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Cc: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com
Subject: [PATCH v8 11/12] media: hantro: Staticize a struct in postprocessor
 code
Date: Tue, 16 Nov 2021 15:38:41 +0100
Message-Id: <20211116143842.75896-12-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211116143842.75896-1-andrzej.p@collabora.com>
References: <20211116143842.75896-1-andrzej.p@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_063900_013939_A3B7ED83 
X-CRM114-Status: GOOD (  12.51  )
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

The struct is not used outside this file, so it can be static.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/staging/media/hantro/hantro_postproc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 4549aec08feb..89de43021779 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -33,7 +33,7 @@
 #define VPU_PP_OUT_RGB			0x0
 #define VPU_PP_OUT_YUYV			0x3
 
-const struct hantro_postproc_regs hantro_g1_postproc_regs = {
+static const struct hantro_postproc_regs hantro_g1_postproc_regs = {
 	.pipeline_en = {G1_REG_PP_INTERRUPT, 1, 0x1},
 	.max_burst = {G1_REG_PP_DEV_CONFIG, 0, 0x1f},
 	.clk_gate = {G1_REG_PP_DEV_CONFIG, 1, 0x1},
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF537C2BBCA
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 10:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoHmathOVFpXA0XiDdsOcTlv9lna8/5iaPzmbsdtz8g=; b=V/uDY9zXMaZCT6
	qxelRi/pdl800RbC6zXJdzYpY2LGaw85LeQwtL6D2WZV8sUJ4wGOs1uGWDCrGeZoaDuuNmk7jVEAt
	dnTClFOWtLXnbrViPYLUw2m+EyxzjgcG39cW5YSLHRT6INjyLyVVXZvUdRD+m3Xx5BuAoe3sUcvDy
	MOKgeMmIPe8LGHISWNaCjCcKTjptjs3ShD6p801Pp7yUaL4G30XZv8XWZR29NERnXTcaC8dNxoxsS
	TIlSw5PpohM4d9jcq9nYk8/Ix88ZWi/pwVzyYP0QnL8LaaGjFEKiil0egrwmhMn5coKkdZ2RtZx2W
	hP2MxCFa/ek6flqtZAvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKbqn-00000008q3C-14ly;
	Fri, 21 Jun 2024 10:50:37 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKbqj-00000008q1q-3uPP
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jun 2024 10:50:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1718967034; x=1750503034;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=8dR59ljDyBjltzEYMcuGSSdeG1Qos47ZkJsUxIPmT7c=;
  b=W/dVHATVv6dQThggp/1lty1e96x/sAtAB7FUgYg23bTIPOB+FYzLWGnq
   B58fwO3L1lGBRiQzPGTxqTUP531cchqrJR+U1DMAJKdn/2NAS+TLUGmEz
   zsM3q0SIqSz3JMISIvMgchcRdQ1BRhegThKxoqhpmfFbRlHIDxHzbNkvf
   s3c8tgsLgzAa79enWglsAHNbYBpAIZwQMuXjxv7i/eCCPMHLcFetoX/eq
   Gq3+r2QWrit+jy5NCgw0k4ZVryFnMuFtqJJCry7i4tYMqBHWU0R/h5qxQ
   /JKsFoDiSto6clXizhAzTyf/xRkNU3aadKv+ezN+cgGDs7xX1bOblP8Nm
   w==;
X-CSE-ConnectionGUID: kjvoQ4aoSOWaN0hP2P+BXA==
X-CSE-MsgGUID: psMX0Up/T021BRhyfXlUVw==
X-IronPort-AV: E=Sophos;i="6.08,254,1712613600"; 
   d="scan'208";a="37520408"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 21 Jun 2024 12:50:33 +0200
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0CC56160A30;
	Fri, 21 Jun 2024 12:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1718967029; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=8dR59ljDyBjltzEYMcuGSSdeG1Qos47ZkJsUxIPmT7c=;
	b=ouBe46y8XVukpUwYEHafVhqcIm0Y8nZjiHQhv8vTINVxbxy+rAYZi2eo4BdIG7Xk+a6M/V
	eqiiOxDO4Gxpgc2dOTUlMNtt2xtvXP0tTYRhbOndVESyQs3jiA98Vedm/CRZnnayG5Qf78
	hZQ4RxJjxvfrYibQpt2Cph+rRWU5uLwsjrEdFBO3LPg5vQIfIE7eKHF1cARQKcy3IFvP2g
	1M2J2NqF23oxexpVxIPsvMtI+eBXhKKl4//qD86FtSXvbUtSzEPy1AldN++H/3G9OMVZfS
	jvkF4jHQEEmQm5+qSendMMTKAFJVE6vgXAUhTGnv+WfVPvghM0FmNEkCgMdbWw==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] media: verisilicon: Move rockchip AV1 hardware drivers to the corresponding option
Date: Fri, 21 Jun 2024 12:50:23 +0200
Message-Id: <20240621105024.4073007-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240621105024.4073007-1-alexander.stein@ew.tq-group.com>
References: <20240621105024.4073007-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_035034_300469_25F98291 
X-CRM114-Status: UNSURE (   9.81  )
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

There is no need to compile the rockchip specific AV1 drivers if
CONFIG_VIDEO_HANTRO_ROCKCHIP is not set.
All driver functions are only referenced by rockchip_vpu_hw.c which is
already under this option.

Fixes: 727a400686a2 ("media: verisilicon: Add Rockchip AV1 decoder")
Fixes: d8ebe59e7b36 ("media: verisilicon: Add film grain feature to AV1 driver")
Fixes: c0d0e579db4e ("media: verisilicon: Add AV1 entropy helpers")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
Changes in v2:
* Split and just touch AV1 drivers

As suggested by Nicolas split v1 patch into two separate ones
with their corresponding Fixes tags.

 drivers/media/platform/verisilicon/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/Makefile b/drivers/media/platform/verisilicon/Makefile
index d483530b2feff..f6f019d04ff00 100644
--- a/drivers/media/platform/verisilicon/Makefile
+++ b/drivers/media/platform/verisilicon/Makefile
@@ -14,9 +14,6 @@ hantro-vpu-y += \
 		hantro_g2.o \
 		hantro_g2_hevc_dec.o \
 		hantro_g2_vp9_dec.o \
-		rockchip_vpu981_hw_av1_dec.o \
-		rockchip_av1_filmgrain.o \
-		rockchip_av1_entropymode.o \
 		hantro_jpeg.o \
 		hantro_h264.o \
 		hantro_hevc.o \
@@ -35,6 +32,9 @@ hantro-vpu-$(CONFIG_VIDEO_HANTRO_ROCKCHIP) += \
 		rockchip_vpu2_hw_h264_dec.o \
 		rockchip_vpu2_hw_mpeg2_dec.o \
 		rockchip_vpu2_hw_vp8_dec.o \
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

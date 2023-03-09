Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CFF1C64EC4
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Mar 2023 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1z876ed6xE2VOo97kbbF4YVDMjtnLUWQkemfxVCgc0I=; b=CGhC55Hhxs0OzN
	CljbfkWhIdOT41g/6kd2S8E8S29o5IWUGIAkNGFAzlMtG0PFIyNW5FMdJzqTap1omnvPCKy6m4uH4
	24UKo4eAOsY4JOa/yqDiq13JFEcbm/yx/ccL+Q8WJOJADI9eMsgDB8xZyTCT33y5lmfvVTBEGO9qZ
	uewag5dH3L4lgXnTnlv5IUSARmn890OoVmpVE9K9UiYjDo97e7p187f5cLh2MOdJqrnZsg2V6sQQL
	tjOWpJj71Or4HVNVLwokos7fMcEqJfMWx5b/C8ZZdfVx0qsJrsV6PgsW4MLwBRLYi/7Jt4m9MfXLI
	NsXkHeeWDGyDhhe7RnDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paFpi-009xJc-4X; Thu, 09 Mar 2023 12:57:22 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paFpV-009xEI-AH; Thu, 09 Mar 2023 12:57:11 +0000
Received: from localhost.localdomain (unknown [194.146.248.75])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C2E476602FE7;
	Thu,  9 Mar 2023 12:57:03 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678366624;
	bh=Fa+K5mx43H80PRxNz8HGFdjywzLARrxyM7AGivxbkmM=;
	h=From:To:Cc:Subject:Date:From;
	b=eop0JHHVRbR2cemyFzYWv12A3q9MNdjNt3rzrRbPizk5Mlcqx+EHcTm6kGLNdXhoz
	 ESfuq8UAz5PUQgibHuCIg96U3xKfeLOPFcHup7aTan1gnc8kVLJhz0C1OT2F8XiQBW
	 hkbC11Qh+pBRM1L7FW5s7SujC5oookzK/xmxtkc/6jnYRZyGowS1Nn2ixd3n5CaPLo
	 rh+4I5woJSfNa+bVPo9knDITeJElECBJpIgPz8u80S44ZrSPAKvzcFKS+toNl0iFpW
	 ExL3klAwlWSv/i1JvvPncxeSzh+NRJqbG9s3HYmTyFKnlxRsA3RYphQ30HHbR0kuLT
	 V2/DwWLTxh75Q==
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	kernel@collabora.com
Subject: [RFC 0/2] VP8 stateless V4L2 encoding uAPI + driver
Date: Thu,  9 Mar 2023 13:56:49 +0100
Message-Id: <20230309125651.23911-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_045709_526557_14353218 
X-CRM114-Status: GOOD (  12.59  )
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

Dear All,

This two-patch series adds uAPI for stateless VP8 encoding
and an accompanying driver using it.

It has been tested on an rk3399 board and there exists
a gstreamer user:

https://gitlab.freedesktop.org/gstreamer/gstreamer/-/merge_requests/3736

example pipeline:

gst-launch-1.0 videotestsrc num-buffers=500 ! video/x-raw,width=640,height=480 \
! v4l2slvp8enc ! queue ! matroskamux ! filesink location=test_vp8.mkv

I kindly ask for comments.

Notably, the documentation for the added uAPI is missing,
that is to be addressed when sending a patch series proper (not RFC).

For the RFC I also did not care to replace a BUG_ON() in the boolean encoder.

Rebased onto v6.2.

Regards,

Andrzej

Andrzej Pietrasiewicz (2):
  media: uapi: Add VP8 stateless encoder controls
  media: rkvdec: Add VP8 encoder

 drivers/media/platform/verisilicon/Makefile   |    2 +
 drivers/media/platform/verisilicon/hantro.h   |   10 +
 .../platform/verisilicon/hantro_boolenc.c     |   69 +
 .../platform/verisilicon/hantro_boolenc.h     |   21 +
 .../media/platform/verisilicon/hantro_drv.c   |   18 +-
 .../media/platform/verisilicon/hantro_hw.h    |   90 +
 .../media/platform/verisilicon/hantro_v4l2.c  |    5 +-
 .../media/platform/verisilicon/hantro_vp8.c   |  118 ++
 .../verisilicon/rockchip_vpu2_hw_vp8_enc.c    | 1574 +++++++++++++++++
 .../platform/verisilicon/rockchip_vpu2_regs.h |    1 +
 .../platform/verisilicon/rockchip_vpu_hw.c    |   23 +-
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |   16 +
 drivers/media/v4l2-core/v4l2-ctrls-defs.c     |    5 +
 include/media/v4l2-ctrls.h                    |    1 +
 include/uapi/linux/v4l2-controls.h            |   91 +
 include/uapi/linux/videodev2.h                |    3 +
 16 files changed, 2041 insertions(+), 6 deletions(-)
 create mode 100644 drivers/media/platform/verisilicon/hantro_boolenc.c
 create mode 100644 drivers/media/platform/verisilicon/hantro_boolenc.h
 create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu2_hw_vp8_enc.c


base-commit: c9c3395d5e3dcc6daee66c6908354d47bf98cb0c
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

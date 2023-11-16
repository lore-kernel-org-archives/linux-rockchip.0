Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63C66C5AD4C
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 15:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tmScREcS+b0nuMNEQevganeNiwtALtA8kpgQuFWP6NQ=; b=jf1vc/zQAzM16l
	ZKAs89WTw86IxTLAlfq3i0/LzuZKv6GVPcLgF4TSyqR3MCsw6IXOyXBSD4URbEWFyVCahHgmCBR+t
	qhUjCh+35Kd1pJ09ymkw74UXHhBqFMnkZ1wR7kfZoyTBPgNCQf9BZinCERtr2yPbSwYnSqQLMHEfv
	7I4z3x8uc4mvXIeqAlsTeWcRj6ecKA5/bVc6ILzeYkXAY83rz8mZQ+JIYzRpvcl6lZEOQPCUApRJI
	eec7pS+vXDqZ/kPmNgNLPjNgZeBrbUEG8oIDWindpuedVaFVlaX7qEfQBuQOTPCbGk0+XI7RPsbcM
	OGS2LStLPA0LgwRI6N/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3eba-003rD5-31;
	Thu, 16 Nov 2023 15:48:34 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3ebW-003r8g-17;
	Thu, 16 Nov 2023 15:48:32 +0000
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DF506660734C;
	Thu, 16 Nov 2023 15:48:25 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700149706;
	bh=qOGURixP10SKLR9eMJf0x73f6ugT8/gbvL3YowPyUCo=;
	h=From:To:Cc:Subject:Date:From;
	b=ev+qQXOisOTKnWgq1P8D8oEK9yX30W34JGRLzV4HX5MsrGgm5YSfT1TzKlVvs57sN
	 jBk6KH6DXlhwFAnLWXHB/J/NH2MvGglS/ROafXqXx8zTDgGQ8+WZsx19p3SrsoMg5F
	 /PwJvvgMErv+GUu7KnFg1TZMdE9xO2GWaJPnoNG99XheUvcgUFrpHjxZhTgTgqxFR9
	 ymC+EI1dQI66IedwlkqLLasg7uL6hGRYGeKzn0qkMvTzPvWDhrDR5Sg4RAZkfg8GBs
	 J93wjM93c473Jgzoq4nMovXzxh68aVPVQYttT5nW3me3sAFvu6FDEAOcJh4z0RnULv
	 KW8GoQcONBLTQ==
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Cc: Hugues Fruchet <hugues.fruchet@foss.st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	kernel@collabora.com
Subject: [RFC 0/6] H.264 stateless encoder RFC 0/6
Date: Thu, 16 Nov 2023 16:48:10 +0100
Message-Id: <20231116154816.70959-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_074830_540098_48003BEA 
X-CRM114-Status: GOOD (  12.12  )
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

This series adds uAPI for stateless H.264 encoding and an
accompanying driver using it.

It has been tested on an stm32mp25 and there exists
a gstreamer user:

https://gitlab.freedesktop.org/gstreamer/gstreamer/-/merge_requests/5676

example pipeline:

gst-launch-1.0 videotestsrc num-buffers=30 ! video/x-raw, format=YUY2 !
v4l2slh264enc ! filesink location=test.h264

Rebased onto v6.6 with:

- some patches from ST to actually run the hardware
- my previous VP8 statless encoding series
- VP8 support for H1 from Hugues Fruchet

In particular, this series depends on the latter, which can be
found here:

https://patchwork.linuxtv.org/project/linux-media/list/?series=11358

Here's a branch which contains everything needed to actually run:

https://gitlab.collabora.com/linux/for-upstream/-/tree/h264-enc-rfc-6.6

I kindly ask for comments.

Regards,

Andrzej Pietrasiewicz (6):
  media: verisilicon Correct a typo in
    H1_REG_ENC_CTRL2_DEBLOCKING_FILTER_MODE
  media: verisilicon: Correct a typo in H1_REG_MAD_CTRL_MAD_THRESHOLD
  media: verisilicon: Improve constant's name
  media: verisilicon: Update H1 register definitions
  media: uapi: Add H.264 stateless encoding uAPI
  media: verisilicon: Add H.264 stateless encoder

 drivers/media/platform/verisilicon/Makefile   |   1 +
 drivers/media/platform/verisilicon/hantro.h   |   3 +
 .../media/platform/verisilicon/hantro_drv.c   |  10 +
 .../platform/verisilicon/hantro_h1_h264_enc.c | 493 +++++++++++
 .../platform/verisilicon/hantro_h1_regs.h     |  20 +-
 .../platform/verisilicon/hantro_h1_vp8_enc.c  |   2 +-
 .../media/platform/verisilicon/hantro_h264.c  | 777 ++++++++++++++++++
 .../media/platform/verisilicon/hantro_hw.h    |  23 +
 .../platform/verisilicon/stm32mp25_venc_hw.c  |  22 +-
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |  54 ++
 drivers/media/v4l2-core/v4l2-ctrls-defs.c     |   9 +
 include/uapi/linux/v4l2-controls.h            |  85 ++
 include/uapi/linux/videodev2.h                |   2 +
 13 files changed, 1496 insertions(+), 5 deletions(-)
 create mode 100644 drivers/media/platform/verisilicon/hantro_h1_h264_enc.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

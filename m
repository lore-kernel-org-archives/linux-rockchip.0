Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CD25EDE9BC
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 12:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JJFEHJzLSJPAFl7dckO5cHVOqNVjSXOOoemvsr7qtBQ=; b=j3diqtAdpHyRsu
	jDOmPiElIP7TUI92DjHXm1M3a/PgyhZ5B8gcd9zrG162UXP8q+D9t7HcVvRXgiZ/r5TvGASqhiNSP
	s2QeYSTW5qQv9gvg6RtMYeP/NOw5I4FmKAnUs9b1e0fzQC/IOurhG8ELXekDIg1+vlxO5TncVlSUc
	LqyNyUo7hcgzGKY+OzTzEi4hO7OBpKHJ7KrdQmG5lKhlCDoD+ckN6YvEcil3JZm1rF04ww3GtctCB
	WvQTmmbQvKgzdFp4MpGnrHe+SN1WcImE7SsrFJmqL343eXwSsH4Vk3STmi6vQXPDvOjLBHv2OiiHv
	i+Y0WzxhCk7aE1Web/tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qglfF-008LpH-2w;
	Thu, 14 Sep 2023 12:41:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglf5-008LeM-0t
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Sep 2023 12:41:37 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qgles-0008Mc-Nz; Thu, 14 Sep 2023 14:41:22 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH 00/13] media: rockchip: rga: add support for multi-planar
 formats
Date: Thu, 14 Sep 2023 14:40:32 +0200
Message-Id: <20230914-rockchip-rga-multiplanar-v1-0-abfd77260ae3@pengutronix.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAED/AmUC/x2NQQqDMBBFryKz7kCigqRXKV1M4tQMTWOYaCmId
 zd0+T68/w6orMIV7t0Byl+psuYG9tZBiJQXRpkbQ2/6wTg7oq7hHaIU1IXws6dNSqJMimaewuS
 89eQGaLqnyuiVcojtIO8ptbEov+T37z2e53kBfUnSB38AAAA=
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Shengyu Qu <wiagn233@outlook.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_054135_330283_ECA2437C 
X-CRM114-Status: GOOD (  17.42  )
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

This series adds support for the V4L2 multi-planar API to the Rockchip
RGA driver. Once the RGA driver supports the multi-planar API, it is
easier to share buffers with other V4L2 drivers that also support the
multi-planar API and may not expose planar formats with contiguous
planes.

With non-contiguous planes, the U and V planes may not start at the same
offset as with the continuous planes. Therefore, the RGA driver cannot
rely on its calculation of the plane offsets based on the format and
frame size anymore, but must remember the offsets when it created the
mapping. Therefore, I also reworked how the DMA mapping is handled.

As a bonus, the RGA driver should now work correctly on devices with
more than 4 GB of memory. Video buffers should now be allocated within
the 4 GB boundary and an import of buffers that have higher addresses
into the driver should fail.

Patch 1 fixes the swizzling of RGA formats. While testing all formats of
the driver on rk3568, I discovered that the color channels of the RGB
formats are wrong when converting to NV12. I didn't test this on other
SoCs with an RGA and I am not sure, if they behave differently regarding
the color channels. Please report, if this breaks the color conversion
on other SoCs, and I will make this SoC-specific.

Patches 2 to 6 are the rework the DMA descriptor handling for the RGA
MMU. The patches clean up, how the driver uses the DMA API, and make the
creation of the descriptor list more explicit. Furthermore, the driver
is changed to keep the mapping per video buffer instead of using a
single mapping that is updated with every buffer.

Patches 7 to 11 prepare the driver for the multi-planar API including a
cleanup of the format handling in the buffer, and finally switch to the
multi-planar API.

Patch 12 updates the code that creates the DMA-descriptor mapping to
correctly handle buffers with multiple planes. The driver has to iterate
all planes and make them the continuous for the RGA.

Patch 13 enables the NV12M format, which is the multi-planar variant of
the NV12 format.

Michael

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (13):
      media: rockchip: rga: fix swizzling for RGB formats
      media: rockchip: rga: extract helper to fill descriptors
      media: rockchip: rga: allocate DMA descriptors per buffer
      media: rockchip: rga: split src and dst buffer setup
      media: rockchip: rga: pre-calculate plane offsets
      media: rockchip: rga: set dma mask to 32 bits
      media: rockchip: rga: use clamp() to clamp size to limits
      media: rockchip: rga: use pixelformat to find format
      media: rockchip: rga: add local variable for pix_format
      media: rockchip: rga: use macros for testing buffer type
      media: rockchip: rga: switch to multi-planar API
      media: rockchip: rga: rework buffer handling for multi-planar formats
      media: rockchip: rga: add NV12M support

 drivers/media/platform/rockchip/rga/rga-buf.c | 166 ++++++++++++++++-------
 drivers/media/platform/rockchip/rga/rga-hw.c  | 143 +++++++++++++-------
 drivers/media/platform/rockchip/rga/rga.c     | 187 ++++++++++++--------------
 drivers/media/platform/rockchip/rga/rga.h     |  35 ++++-
 4 files changed, 329 insertions(+), 202 deletions(-)
---
base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
change-id: 20230914-rockchip-rga-multiplanar-0d7c79b1ba93

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

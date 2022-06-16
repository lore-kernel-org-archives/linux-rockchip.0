Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC187C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 00:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gie/FB8UZAW0suhIsetCvgFo3WdEuYTf+pEgqjFeh+Y=; b=FONlajNqDy+7ZR
	f7TFN0A4l2PuNqbmMloalsTxcmcZJCxOlIVMHacBNL2pbzAAM9h69G5usWSISJlFjKX/EEQmJtxTY
	92JKxgdP7qZU+pjzRlsZ2WonKpoJ3XUUAt2YwGw3fwV5k1WH56OFobaHkLEt3yCa5WETlrEiMH5uM
	nZRD7+GIh6ZRrCgQmoRA7AFVh3NkNYmC8mTFodIEfnQE0POE4y9MeKk1JUgViyhIDU+K1wJjKzfZP
	i8s+kLPQ6rCL9CWVcKLPjN5iTo3cotHe0F31+tM7zOSWtSjbTM5LmCyah4FwET12X1GZvBBHrS15d
	YadW+SQqh1fYYwXB/OYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1dFN-00H7H6-SZ; Thu, 16 Jun 2022 00:20:29 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1dEh-00H6sK-DT
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 00:19:50 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 30F2FA49;
	Thu, 16 Jun 2022 02:19:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655338781;
	bh=6/11e/kinWSnexRPCbPLWlO4Z/z5QmiHMdaa8gS0sLg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JpRsWG/oOnOQdQeLJoaSgB1cxLbV2xJoRf2WHmNOYdTtB8lWMmipMrOQJcWp/i9Rl
	 xk2qNAo1bnw/eeJflL7W46zMWcJWDpakXXPHos3mtfCVb9BlooNHskD2BL78a9MXSu
	 9uofCqdy7u38xC8QJm6tLozMAYLZ6Oamu4OJpg1U=
Date: Thu, 16 Jun 2022 03:19:30 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 00/55] media: rkisp1: Cleanups and add support for i.MX8MP
Message-ID: <Yqp3ElqySn9zbw4G@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_171947_654668_3E70B23A 
X-CRM114-Status: GOOD (  23.85  )
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

Hi Paul,

Thank you for the patches.

On Wed, Jun 15, 2022 at 04:10:32AM +0900, Paul Elder wrote:
> Hello,
> 
> This series depends on v4 of "media: rkisp1: Misc bug fixes and cleanups" [1].
> 
> The ISP integrated in the i.MX8MP is nearly the same as the rkisp1, and
> so we can reuse the rkisp1 driver for it.
> 
> This series does some cleanup and refactoring of the rkisp1 driver,
> (patches 1/55 to 46/55), and then adds support for the i.MX8MP (patches
> 47/55 to 55/55).

I have a few questions about the i.MX8MP support (the main one being
about the version numbering scheme), which I'll ask in replies to the
corresponding patches. Patches 01/55 to 46/55 could be merged already,
once reviewed of course. As the series is large, let's see if we can
motivate any reviewer :-)

> [1] https://lore.kernel.org/linux-media/Ymbxs2p9Tuf331qM@pendragon.ideasonboard.com/T/
> 
> Laurent Pinchart (38):
>   media: rkisp1: Enable compilation on ARCH_MXC
>   media: rkisp1: Disable runtime PM in probe error path
>   media: rkisp1: Read the ID register at probe time instead of streamon
>   media: rkisp1: Rename rkisp1_match_data to rkisp1_info
>   media: rkisp1: Access ISP version from info pointer
>   media: rkisp1: cap: Print debug message on failed link validation
>   media: rkisp1: Move sensor .s_stream() call to ISP
>   media: rkisp1: Reject sensors without pixel rate control at bound time
>   media: rkisp1: Create link from sensor to ISP at notifier bound time
>   media: rkisp1: Create internal links at probe time
>   media: rkisp1: Rename rkisp1_subdev_notifier() to
>     rkisp1_subdev_notifier_register()
>   media: v4l2-async: Add notifier operation to destroy asd instances
>   media: rkisp1: Fix sensor source pad retrieval at bound time
>   media: rkisp1: isp: Start CSI-2 receiver before ISP
>   media: rkisp1: csi: Handle CSI-2 RX configuration fully in
>     rkisp1-csi.c
>   media: rkisp1: csi: Rename CSI functions with a common rkisp1_csi
>     prefix
>   media: rkisp1: csi: Move start delay to rkisp1_csi_start()
>   media: rkisp1: csi: Pass sensor pointer to rkisp1_csi_config()
>   media: rkisp1: csi: Constify argument to rkisp1_csi_start()
>   media: rkisp1: isp: Don't initialize ret to 0 in rkisp1_isp_s_stream()
>   media: rkisp1: isp: Pass mbus type and flags to rkisp1_config_cif()
>   media: rkisp1: isp: Rename rkisp1_device.active_sensor to source
>   media: rkisp1: isp: Add container_of wrapper to cast subdev to
>     rkisp1_isp
>   media: rkisp1: isp: Add rkisp1_device backpointer to rkisp1_isp
>   media: rkisp1: isp: Pass rkisp1_isp pointer to internal ISP functions
>   media: rkisp1: isp: Move input configuration to rkisp1_config_isp()
>   media: rkisp1: isp: Merge ISP_ACQ_PROP configuration in single
>     variable
>   media: rkisp1: isp: Initialize some variables at declaration time
>   media: rkisp1: isp: Fix whitespace issues
>   media: rkisp1: isp: Constify various local variables
>   media: rkisp1: isp: Rename rkisp1_get_remote_source()
>   media: mc-entity: Add a new helper function to get a remote pad
>   media: mc-entity: Add a new helper function to get a remote pad for a
>     pad
>   media: rkisp1: isp: Disallow multiple active sources
>   media: rkisp1: csi: Plumb the CSI RX subdev
>   media: rkisp1: Add infrastructure to support ISP features
>   media: rkisp1: Make the internal CSI-2 receiver optional
>   media: rkisp1: Configure gasket on i.MX8MP
> 
> Paul Elder (17):
>   media: rkisp1: debug: Add dump file in debugfs for MI buffer registers
>   media: rkisp1: debug: Add debugfs files to monitor MI and ISP
>     interrupts
>   media: rkisp1: Save info pointer in rkisp1_device
>   media: rkisp1: Make rkisp1_isp_mbus_info common
>   media: rkisp1: Split CSI handling to separate file
>   media: rkisp1: csi: Implement a V4L2 subdev for the CSI receiver
>   media: rkisp1: Use fwnode_graph_for_each_endpoint
>   dt-bindings: media: rkisp1: Add port for parallel interface
>   media: rkisp1: Support the ISP parallel input
>   dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
>   media: rkisp1: Add match data for i.MX8MP ISP
>   media: rkisp1: Add and set registers for crop for i.MX8MP
>   media: rkisp1: Add and set registers for output size config on i.MX8MP
>   media: rkisp1: Add i.MX8MP-specific registers for MI and resizer
>   media: rkisp1: Shift DMA buffer addresses on i.MX8MP
>   media: rkisp1: Add register definitions for the test pattern generator
>   media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
> 
>  .../bindings/media/rockchip-isp1.yaml         |  30 +-
>  Documentation/driver-api/media/mc-core.rst    |   4 +-
>  .../driver-api/media/v4l2-subdev.rst          |   6 +
>  drivers/media/mc/mc-entity.c                  |  69 ++
>  .../media/platform/rockchip/rkisp1/Kconfig    |   2 +-
>  .../media/platform/rockchip/rkisp1/Makefile   |   1 +
>  .../platform/rockchip/rkisp1/rkisp1-capture.c |  49 +-
>  .../platform/rockchip/rkisp1/rkisp1-common.c  | 148 ++++
>  .../platform/rockchip/rkisp1/rkisp1-common.h  | 130 +++-
>  .../platform/rockchip/rkisp1/rkisp1-csi.c     | 525 ++++++++++++++
>  .../platform/rockchip/rkisp1/rkisp1-csi.h     |  28 +
>  .../platform/rockchip/rkisp1/rkisp1-debug.c   |  55 +-
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 440 +++++++-----
>  .../platform/rockchip/rkisp1/rkisp1-isp.c     | 679 +++++++-----------
>  .../platform/rockchip/rkisp1/rkisp1-params.c  |   2 +-
>  .../platform/rockchip/rkisp1/rkisp1-regs.h    |  87 +++
>  .../platform/rockchip/rkisp1/rkisp1-resizer.c |  43 +-
>  .../platform/rockchip/rkisp1/rkisp1-stats.c   |   4 +-
>  drivers/media/v4l2-core/v4l2-async.c          |  10 +
>  include/media/media-entity.h                  |  63 ++
>  include/media/v4l2-async.h                    |   2 +
>  include/uapi/linux/rkisp1-config.h            |   3 +
>  22 files changed, 1735 insertions(+), 645 deletions(-)
>  create mode 100644 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
>  create mode 100644 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

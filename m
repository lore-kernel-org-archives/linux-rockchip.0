Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61112C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G4jDmggUyvv8RxHpRyFyK4eRLmWYeztDMHZvMLBVy1E=; b=4R7/k9CMjDGvTC
	cC8CZL4BDHvg98NupTpA8PxqQns/MXd868DjpPYlp3uQk1uxBquZ57O0JHU4zoleh9vfNpmQgmTR4
	+GV9P6bugrIYEMdCDtM/qGCiFYmJubf1LDBsCS3zV8cJ5pW8v2AagV68azOs5CtmVa69igskm1FqW
	ahY++0Q5VYwrFu6maDmj2Qik9vZNxRn3fi9RWu8wejLlVnVmZ43dUQKRnpPzh5wLUgtVuGp1L5R2q
	h+ECJSRG3yvcQmdraIBpLbmQ9QPTGtrAduKVGyMy0gmqvgFA1nUaRpsQUVDZGbS74hrDSbLAMKOG2
	aiPv3H93zO+olmQwhynA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsxP-001euE-Ly; Mon, 11 Jul 2022 12:56:11 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAskz-001Y14-Bc
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:23 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 06F97440;
	Mon, 11 Jul 2022 14:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543399;
	bh=UF5OR9sUx6aAgl5nCUcunq3OND0Y0Omg472/thjqoSU=;
	h=From:To:Cc:Subject:Date:From;
	b=PUHVDVGgbJuB+wuxaUlgmybKf31NrhZC+R8sTz0borX9kpxZ9iOD+VFpabPOESp86
	 pCJXNVPTq5mR5bLdqBcvEmsv9U6eBgRaGWG7+KzBndjcd//1NrF1wJHcfP9vWzhkzr
	 F87eK3xcOANogc7IApGrtUH3P48yc8QdJIcHe/ME=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 00/46] media: rkisp1: Cleanups to prepare for i.MX8MP support
Date: Mon, 11 Jul 2022 15:42:02 +0300
Message-Id: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054321_591034_21718ADB 
X-CRM114-Status: GOOD (  14.43  )
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

Hello,

This series cleans up, reworks and extends the rkisp1 driver to prepare
for support of the ISP found in the NXP i.MX8MP SoC.

The ISP IP cores in the Rockchip RK3399 (known as the "Rockchip ISP1")
and in the NXP i.MX8MP have the same origin, and have slightly diverged
over time as they are now independently developed (as far as I
understand) by Rockchip and VeriSilicon. The latter is marketed under
the name "ISP8000Nano", and is close enough to the RK3399 ISP that it
can easily be supported by the same driver.

This series starts with a few changes to the V4L2 async framework
(01/46) and MC core helpers (02/46 to 04/46) to support the rest of the
changes. It continues with various cleanups and reworks in order to
support CSI-2 receivers external to the ISP as found in the i.MX8MP
(05/46 to 45/46). Patch 46/46 is a small additional debugging improvement.

Compared to v2, i.MX8MP support has been left out as a few issues still
need to be solved. This preparatory series targets v5.20, while i.MX8MP
support will be for v5.21. Review comments have been taken into account.

Dafna, only patches 38/46, 39/46 and 46/46 are missing your reviews.
Would you be able to have a look ?

Laurent Pinchart (38):
  media: v4l2-async: Add notifier operation to destroy asd instances
  media: mc-entity: Rename media_entity_remote_pad() to
    media_pad_remote_pad_first()
  media: mc-entity: Add a new helper function to get a remote pad
  media: mc-entity: Add a new helper function to get a remote pad for a
    pad
  media: rkisp1: Enable compilation on ARCH_MXC
  media: rkisp1: Disable runtime PM in probe error path
  media: rkisp1: Read the ID register at probe time instead of streamon
  media: rkisp1: Rename rkisp1_match_data to rkisp1_info
  media: rkisp1: Access ISP version from info pointer
  media: rkisp1: cap: Print debug message on failed link validation
  media: rkisp1: Move sensor .s_stream() call to ISP
  media: rkisp1: Reject sensors without pixel rate control at bound time
  media: rkisp1: Create link from sensor to ISP at notifier bound time
  media: rkisp1: Create internal links at probe time
  media: rkisp1: Rename rkisp1_subdev_notifier() to
    rkisp1_subdev_notifier_register()
  media: rkisp1: Fix sensor source pad retrieval at bound time
  media: rkisp1: isp: Start CSI-2 receiver before ISP
  media: rkisp1: csi: Handle CSI-2 RX configuration fully in
    rkisp1-csi.c
  media: rkisp1: csi: Rename CSI functions with a common rkisp1_csi
    prefix
  media: rkisp1: csi: Move start delay to rkisp1_csi_start()
  media: rkisp1: csi: Pass sensor pointer to rkisp1_csi_config()
  media: rkisp1: csi: Constify argument to rkisp1_csi_start()
  media: rkisp1: isp: Don't initialize ret to 0 in rkisp1_isp_s_stream()
  media: rkisp1: isp: Pass mbus type and flags to rkisp1_config_cif()
  media: rkisp1: isp: Rename rkisp1_device.active_sensor to source
  media: rkisp1: isp: Add container_of wrapper to cast subdev to
    rkisp1_isp
  media: rkisp1: isp: Add rkisp1_device backpointer to rkisp1_isp
  media: rkisp1: isp: Pass rkisp1_isp pointer to internal ISP functions
  media: rkisp1: isp: Move input configuration to rkisp1_config_isp()
  media: rkisp1: isp: Merge ISP_ACQ_PROP configuration in single
    variable
  media: rkisp1: isp: Initialize some variables at declaration time
  media: rkisp1: isp: Fix whitespace issues
  media: rkisp1: isp: Constify various local variables
  media: rkisp1: isp: Rename rkisp1_get_remote_source()
  media: rkisp1: isp: Disallow multiple active sources
  media: rkisp1: csi: Plumb the CSI RX subdev
  media: rkisp1: Add infrastructure to support ISP features
  media: rkisp1: Make the internal CSI-2 receiver optional

Paul Elder (8):
  media: rkisp1: Save info pointer in rkisp1_device
  media: rkisp1: Make rkisp1_isp_mbus_info common
  media: rkisp1: Split CSI handling to separate file
  media: rkisp1: csi: Implement a V4L2 subdev for the CSI receiver
  media: rkisp1: Use fwnode_graph_for_each_endpoint
  dt-bindings: media: rkisp1: Add port for parallel interface
  media: rkisp1: Support the ISP parallel input
  media: rkisp1: debug: Add dump file in debugfs for MI main path
    registers

 .../bindings/media/rockchip-isp1.yaml         |  23 +-
 Documentation/driver-api/media/mc-core.rst    |   5 +-
 .../driver-api/media/v4l2-subdev.rst          |   6 +
 drivers/media/i2c/adv748x/adv748x.h           |   2 +-
 drivers/media/i2c/tvp5150.c                   |   2 +-
 drivers/media/mc/mc-entity.c                  |  75 ++-
 drivers/media/pci/intel/ipu3/ipu3-cio2-main.c |   2 +-
 .../media/platform/qcom/camss/camss-csid.c    |   6 +-
 .../media/platform/qcom/camss/camss-csiphy.c  |   2 +-
 .../media/platform/qcom/camss/camss-ispif.c   |   4 +-
 drivers/media/platform/qcom/camss/camss-vfe.c |   2 +-
 .../media/platform/qcom/camss/camss-video.c   |   6 +-
 drivers/media/platform/qcom/camss/camss.c     |   2 +-
 .../platform/renesas/rcar-vin/rcar-core.c     |   2 +-
 .../platform/renesas/rcar-vin/rcar-csi2.c     |   2 +-
 .../platform/renesas/rcar-vin/rcar-dma.c      |   2 +-
 .../platform/renesas/rcar-vin/rcar-v4l2.c     |   2 +-
 .../media/platform/renesas/vsp1/vsp1_entity.c |   4 +-
 .../media/platform/renesas/vsp1/vsp1_video.c  |   2 +-
 .../media/platform/rockchip/rkisp1/Kconfig    |   2 +-
 .../media/platform/rockchip/rkisp1/Makefile   |   1 +
 .../platform/rockchip/rkisp1/rkisp1-capture.c |  22 +-
 .../platform/rockchip/rkisp1/rkisp1-common.c  | 143 +++++
 .../platform/rockchip/rkisp1/rkisp1-common.h  | 109 +++-
 .../platform/rockchip/rkisp1/rkisp1-csi.c     | 536 ++++++++++++++++
 .../platform/rockchip/rkisp1/rkisp1-csi.h     |  28 +
 .../platform/rockchip/rkisp1/rkisp1-debug.c   |  21 +
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 431 +++++++------
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 571 +++++-------------
 .../platform/rockchip/rkisp1/rkisp1-params.c  |   2 +-
 .../platform/rockchip/rkisp1/rkisp1-resizer.c |  14 +-
 .../platform/rockchip/rkisp1/rkisp1-stats.c   |   4 +-
 .../platform/samsung/exynos4-is/common.c      |   2 +-
 .../samsung/exynos4-is/fimc-capture.c         |   6 +-
 .../samsung/exynos4-is/fimc-isp-video.c       |   2 +-
 .../platform/samsung/exynos4-is/fimc-lite.c   |   2 +-
 .../platform/samsung/exynos4-is/media-dev.c   |   2 +-
 .../samsung/s3c-camif/camif-capture.c         |   2 +-
 drivers/media/platform/st/stm32/stm32-dcmi.c  |   6 +-
 .../platform/sunxi/sun6i-csi/sun6i_video.c    |   4 +-
 drivers/media/platform/ti/cal/cal-camerarx.c  |   2 +-
 drivers/media/platform/ti/cal/cal-video.c     |   2 +-
 drivers/media/platform/ti/omap3isp/isp.c      |   6 +-
 drivers/media/platform/ti/omap3isp/ispccdc.c  |   2 +-
 drivers/media/platform/ti/omap3isp/ispccp2.c  |   2 +-
 drivers/media/platform/ti/omap3isp/ispcsi2.c  |   2 +-
 drivers/media/platform/ti/omap3isp/ispvideo.c |   4 +-
 drivers/media/platform/video-mux.c            |   2 +-
 .../media/platform/xilinx/xilinx-csi2rxss.c   |   2 +-
 drivers/media/platform/xilinx/xilinx-dma.c    |   4 +-
 .../media/test-drivers/vimc/vimc-streamer.c   |   2 +-
 drivers/media/v4l2-core/v4l2-async.c          |  10 +
 .../staging/media/imx/imx-media-dev-common.c  |   2 +-
 drivers/staging/media/imx/imx-media-utils.c   |   2 +-
 drivers/staging/media/omap4iss/iss.c          |   6 +-
 drivers/staging/media/omap4iss/iss_csi2.c     |   2 +-
 drivers/staging/media/omap4iss/iss_video.c    |   2 +-
 drivers/staging/media/tegra-video/vi.c        |   4 +-
 include/media/media-entity.h                  |  68 ++-
 include/media/v4l2-async.h                    |   2 +
 60 files changed, 1479 insertions(+), 710 deletions(-)
 create mode 100644 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
 create mode 100644 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.h


base-commit: d8e8aa866ed8636fd6c1017c3d9453eab2922496
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

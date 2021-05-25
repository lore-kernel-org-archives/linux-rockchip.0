Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB958C2B9F8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 16:39:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 934F26140F
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 16:39:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 934F26140F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=thoYVfX9WjB86uSiRVpZJW6KYoYW01V9KVwpKRTR2yk=; b=cr0BLAtW02Eke9
	JzX37VWdDpvJCoZVkWiHmje2A0ZyXsasNwXoYezexziY7bHYm/9LIGoLhcwuajocj+ElFcNzLFePc
	WET898/xmBKrx0i4/3W99R3WHwRBsM/vlNfzgdf7r72qD9bxXdbRPxyBsVcn6h3s00TBcQ2gAl0xx
	YHaJgmcV4Y2AJsW2mcq20KsYfEwzQRjlSiHzDc77xlFCZRwaYmKms8n4ntXCren+dm109KwCocF4n
	iQ0VIJDqn6VW1y13N4uL7s0T6QJYk7g13Iz42kraz1y9wQF9xS+/VaMH0DcOoauOUjTejToSmCdJs
	Sh5JUAy/PYVZXs3p2gjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lla5W-006V7L-TE; Tue, 25 May 2021 16:39:26 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llZfm-006JJ1-3h; Tue, 25 May 2021 16:12:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 3586A1F42827
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v11 0/9] Add HANTRO G2/HEVC decoder support for IMX8MQ
Date: Tue, 25 May 2021 18:12:29 +0200
Message-Id: <20210525161238.1191168-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_091250_458264_EB2ABC8E 
X-CRM114-Status: GOOD (  22.77  )
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

The IMX8MQ got two VPUs but until now only G1 has been enabled.
This series aim to add the second VPU (aka G2) and provide basic 
HEVC decoding support.

To be able to decode HEVC it is needed to add/update some of the
structures in the uapi. In addition of them one HANTRO dedicated
control is required to inform the driver of the number of bits to skip
at the beginning of the slice header.
The hardware require to allocate few auxiliary buffers to store the
references frame or tile size data.

The driver has been tested with fluster test suite stream.
For example with this command: ./fluster.py run -ts JCT-VC-HEVC_V1 -d GStreamer-H.265-V4L2SL-Gst1.0

version 11:
 - Rebased on media_stage.
 - Fix minor typo/remarks.

version 10:
 - Shorter version of the previous series without ctrl block patches
   and no DT modifications.
   The scope of this series is limited to HEVC support.

version 9:
 - Corrections in commits messages.
 - Define the dedicated control in hevc-controls.h
 - Add note in documentation.
 - Change max value of the dedicated control.
 - Rebased on media_tree/master branch.

version 8:
 - Add reviewed-by and ack-by tags 
 - Fix the warnings reported by kernel test robot
 - Only patch 9 (adding dedicated control), patch 11 (HEVC support) and
   patch 13 (DT changes) are still missing of review/ack tag.

version 7:
 - Remove 'q' from syscon phandle name to make usable for iMX8MM too.
   Update the bindings documentation.
 - Add review/ack tags.
 - Rebase on top of media_tree/master
 - Be more accurate when computing the size of the memory needed motion
   vectors.
 - Explain why the all clocks need to set in the both DT node.

version 6:
 - fix the errors reported by kernel test robot

version 5:
 - use syscon instead of VPU reset driver.
 - Do not break kernel/DT backward compatibility.
 - Add documentation for dedicated Hantro control.
 - Fix the remarks done by Ezequeil (typo, comments, unused function)
 - Run v4l2-compliance without errors (see below).
 - Do not add field to distinguish version, check postproc reg instead

version 4:
- Split the changes in hevc controls in 2 commits to make them easier to
  review.
- Change hantro_codec_ops run() prototype to return errors   
- Hantro v4l2 dedicated control is now only an integer
- rebase on top of VPU reset changes posted here:
  https://www.spinics.net/lists/arm-kernel/msg878440.html
- Various fix from previous remarks
- Limit the modifications in API to what the driver needs

version 3:
- Fix typo in Hantro v4l2 dedicated control
- Add documentation for the new structures and fields
- Rebased on top of media_tree for-linus-5.12-rc1 tag

version 2:
- remove all change related to scaling
- squash commits to a coherent split
- be more verbose about the added fields
- fix the comments done by Ezequiel about dma_alloc_coherent usage
- fix Dan's comments about control copy, reverse the test logic
in tile_buffer_reallocate, rework some goto and return cases.
- be more verbose about why I change the bindings
- remove all sign-off expect mime since it is confusing
- remove useless clocks in VPUs nodes
 
Benjamin Gaignard (9):
  media: hevc: Add fields and flags for hevc PPS
  media: hevc: Add decode params control
  media: hantro: change hantro_codec_ops run prototype to return errors
  media: hantro: Define HEVC codec profiles and supported features
  media: hantro: Only use postproc when post processed formats are
    defined
  media: uapi: Add a control for HANTRO driver
  media: hantro: handle V4L2_PIX_FMT_HEVC_SLICE control
  media: hantro: Introduce G2/HEVC decoder
  media: hantro: IMX8M: add variant for G2/HEVC codec

 .../userspace-api/media/drivers/hantro.rst    |  19 +
 .../userspace-api/media/drivers/index.rst     |   1 +
 .../media/v4l/ext-ctrls-codec.rst             | 108 +++-
 .../media/v4l/vidioc-queryctrl.rst            |   6 +
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |  21 +-
 drivers/media/v4l2-core/v4l2-ctrls-defs.c     |   4 +
 drivers/staging/media/hantro/Makefile         |   2 +
 drivers/staging/media/hantro/hantro.h         |  13 +-
 drivers/staging/media/hantro/hantro_drv.c     |  99 ++-
 .../staging/media/hantro/hantro_g1_h264_dec.c |  10 +-
 .../media/hantro/hantro_g1_mpeg2_dec.c        |   4 +-
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |   6 +-
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 588 ++++++++++++++++++
 drivers/staging/media/hantro/hantro_g2_regs.h | 198 ++++++
 .../staging/media/hantro/hantro_h1_jpeg_enc.c |   4 +-
 drivers/staging/media/hantro/hantro_hevc.c    | 327 ++++++++++
 drivers/staging/media/hantro/hantro_hw.h      |  69 +-
 .../staging/media/hantro/hantro_postproc.c    |  14 +
 drivers/staging/media/hantro/hantro_v4l2.c    |   5 +-
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  96 ++-
 .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |   4 +-
 .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    |   4 +-
 .../media/hantro/rk3399_vpu_hw_vp8_dec.c      |   6 +-
 drivers/staging/media/sunxi/cedrus/cedrus.c   |   6 +
 drivers/staging/media/sunxi/cedrus/cedrus.h   |   1 +
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |   2 +
 .../staging/media/sunxi/cedrus/cedrus_h265.c  |  12 +-
 include/media/hevc-ctrls.h                    |  46 +-
 28 files changed, 1606 insertions(+), 69 deletions(-)
 create mode 100644 Documentation/userspace-api/media/drivers/hantro.rst
 create mode 100644 drivers/staging/media/hantro/hantro_g2_hevc_dec.c
 create mode 100644 drivers/staging/media/hantro/hantro_g2_regs.h
 create mode 100644 drivers/staging/media/hantro/hantro_hevc.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

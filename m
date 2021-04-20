Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,UNPARSEABLE_RELAY,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC0A5C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 12:11:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 16A7D61002
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 12:11:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 16A7D61002
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=llAYd+TEc5lh+lrQjvUMUQHy3D9/Ik5KLbvVDrY+D7U=; b=mjFUMUX8NvkEy8M1M095lqR+NG
	AG703IUeiqPlVW7QBrCjVftwRcdp11DYqRsfX+1bnnO/OeujJRHNhPus641aREbo+XRiC4vjWaX7g
	4CNP2HstShKOYgJadufSKgW+YzupbBoCnly/p5ayWNgA0ORyEsHvP75pM8eUUc+wzcTMkwm7mlVdL
	ev2zkSJZc+AXC3KscEjJjuxKCiiUtyPCiDCwJxpAX/POBlyxPReI1jn2oDGwNvEgDGkWMTblK43e0
	AZrwme0sB8hh3/2xGfg2QOGNm7XmxXkuupDE8luSeiRRtKaDt9Qfb3bIuHa5fdiTma3KO7n/MbCQY
	rE8KFx9w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYpEL-00C2Z2-Mw; Tue, 20 Apr 2021 12:11:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYpDi-00C2Tq-5I; Tue, 20 Apr 2021 12:11:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=efrt4LuhGy/KSkfFWNPGsEssT7NCGp9Q0Udw/3sbCX8=; b=3kD9fCndTS+AKQFclR3zwgfAlA
 e2WOPOKsXFEQOzJNiiWj1o6G5Mew+jLqpisWLH2M01l51QufA/ewZi6+AJ5L+udTCsrrhL0JM2qo0
 y/eawnSXh8MAboFLMxUb+O+FGm7f6DFZK6R1HHSkfnmE6tr1AY4JXO4hOehuwDm4uEwsalKUOQRWt
 mxjuvbUJyuTGMAmIPBMLCJMm8TvY3FWVGSN/WeoXeiUxVPbSLh377ozmepklPG4luHGtuzwVVYum1
 qy/YA/aZn+XAB0dRD1Hy+zHoi7JDT3VarIYkufxzgZoVz2atI39atyqFiWBIgx+q03RQHTiNCyuDT
 pm3UHZLg==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYpDd-00C5bL-Kk; Tue, 20 Apr 2021 12:11:07 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id C1A741F428E8
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel@collabora.com, cphealy@gmail.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v10 0/9] Add HANTRO G2/HEVC decoder support for IMX8MQ
Date: Tue, 20 Apr 2021 14:10:37 +0200
Message-Id: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_051105_965533_FE283362 
X-CRM114-Status: GOOD (  22.02  )
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
 drivers/media/v4l2-core/v4l2-ctrls.c          |  28 +-
 drivers/staging/media/hantro/Makefile         |   2 +
 drivers/staging/media/hantro/hantro.h         |  13 +-
 drivers/staging/media/hantro/hantro_drv.c     |  99 ++-
 .../staging/media/hantro/hantro_g1_h264_dec.c |  10 +-
 .../media/hantro/hantro_g1_mpeg2_dec.c        |   4 +-
 .../staging/media/hantro/hantro_g1_vp8_dec.c  |   6 +-
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 587 ++++++++++++++++++
 drivers/staging/media/hantro/hantro_g2_regs.h | 198 ++++++
 .../staging/media/hantro/hantro_h1_jpeg_enc.c |   4 +-
 drivers/staging/media/hantro/hantro_hevc.c    | 327 ++++++++++
 drivers/staging/media/hantro/hantro_hw.h      |  69 +-
 .../staging/media/hantro/hantro_postproc.c    |  14 +
 drivers/staging/media/hantro/hantro_v4l2.c    |   5 +-
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  74 ++-
 .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |   4 +-
 .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    |   4 +-
 .../media/hantro/rk3399_vpu_hw_vp8_dec.c      |   6 +-
 drivers/staging/media/sunxi/cedrus/cedrus.c   |   6 +
 drivers/staging/media/sunxi/cedrus/cedrus.h   |   1 +
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |   2 +
 .../staging/media/sunxi/cedrus/cedrus_h265.c  |  12 +-
 include/media/hevc-ctrls.h                    |  46 +-
 27 files changed, 1586 insertions(+), 69 deletions(-)
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

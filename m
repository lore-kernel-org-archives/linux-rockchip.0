Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 724ABC49EAF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 14:12:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3BE6261952
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 14:12:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3BE6261952
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bmfcv4xJjumGrnOHumoEcZq4LvmaiuIGbMAQcAKGp2w=; b=wVcgvrbUbz/bUG
	DipZXo4pukDdiFx37WRx6hfb4j1uM28aPC6WR+8Ys/TPEyaA8pBJGWrIdnTEg18eth8XKr7kJoizi
	a/g7+YJ+4tscdxadiNYSbgxlXXxUacnvTTbi+dFHoPned9U+g3dirB8ulxuO8/JQ0fkL5KFMui64O
	oKOY22gr0OwlZo4nUVDCW9EDMOJ2qpicSZkLBDUj8bX3kN41TgWpABBew0RmSTHlXvfXQIUjx2byL
	Gf7abvRSH+e38csdtydbR42EkxpsTgtiLsp6vciV0a9UWMe2CwZq0U1gNm1EbhigYcV51yJUoucYx
	eO5T/MWS6SDsuyNvVoDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwmZE-001q0U-Fx; Fri, 25 Jun 2021 14:12:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwmYy-001pqc-2s; Fri, 25 Jun 2021 14:12:10 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:42b6:51ca:7d52:50ad])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2DD131F4474C;
 Fri, 25 Jun 2021 15:11:51 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: hverkuil@xs4all.nl, ezequiel@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, andrzej.p@collabora.com, jc@kynesim.co.uk,
 jernej.skrabec@gmail.com, nicolas@ndufresne.ca, cphealy@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 0/9]  Additional features for Hantro HEVC
Date: Fri, 25 Jun 2021 16:11:34 +0200
Message-Id: <20210625141143.577998-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_071208_420344_B039816E 
X-CRM114-Status: GOOD (  22.19  )
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

version 4:
 - Log file descriptor in trace point.
 - Add documentation about how use the trace points in Hantro driver.
 - Fix typos.
 - Make sure that 10 bits output format (i.e. P010) is only enumerated
   when encoded input stream is 10 bits.
 - Create ops structure for variant to store their specific functions.
 - Rename scaling ops to enumare_framesizes

Run fluster on this version: the results are the same 70 over 147 streams OK.
Test streams with embedded scaling list are now decoded and the output
is correct for our eyes but the values of the pixels (y, u and V) are
different from the values of the reference (decoded for FFMPEG) so the
stream of still KO. When decoded with GStreamer or vendor stack the
pixels values are the same but not matching with FFMPEG.

Compressed help to increase the performance of the whole stack, it could
be up to 50 fps (against 45 fps) on IMX8MQ.
The impact of compressed frames is confirmed when using perf to monitor
the number of memory accesses with or without compression feature.
The following command
perf stat -a -e imx8_ddr0/cycles/,imx8_ddr0/read-cycles/,imx8_ddr0/write-cycles/ gst-launch-1.0 filesrc location=Jockey_3840x2160_120fps_420_8bit_HEVC_RAW.hevc ! queue ! h265parse ! v4l2slh265dec ! fakesink

give us these results
without compression feature:
 Performance counter stats for 'system wide':

       14965816743      imx8_ddr0/cycles/                                           
         889197312      imx8_ddr0/read-cycles/                                      
        1819348862      imx8_ddr0/write-cycles/                                     

      18.707373001 seconds time elapsed

with compression feature:
Performance counter stats for 'system wide':

       13750218243      imx8_ddr0/cycles/                                           
         402428744      imx8_ddr0/read-cycles/                                      
        1255676693      imx8_ddr0/write-cycles/                                     

      17.188320061 seconds time elapsed

As expected the number of read/write cycles are really lower when compression
is used.
Thanks to Chris for perf command line :-)

version 3:
 - Change trace file name to hantro_trace.h

version 2:
 - Fix structure name in ext-ctrls-codec.rst
 - Define the value for compression storage size
 - Add comments about registers usage
 - Add documentation about P010 padding

Basic HEVC support has been added to Hantro driver in this pull request:
https://www.spinics.net/lists/linux-media/msg193744.html

Thanks to that it is now possible to support more features for this driver.

The first patch allow to log the hardware performance per macroblock.
The second patch makes the driver use compressed reference frames to
reduce memory bandwidth consumption.
Patches 3 to 5 allow to decode and produce 10-bits P010 frames.
Patch 6 make usage of G2 post processor to scale down the frames.
Patches 7 and 8 add the support of HEVC scaling matrix by adding a new
control.

All these patches enhance the HEVC support for Hantro (G2) hardware.
Unluckily they almost all touch the same pieces of code, where buffer
size, offset and addresses are set, so they have to be in this order.
They depend of the series pushed in this pull request:
https://www.spinics.net/lists/linux-media/msg193744.html

Benjamin

 
Benjamin Gaignard (9):
  media: hantro: Trace hevc hw cycles performance register
  media: hantro: Add support of compressed reference buffers
  media: hantro: hevc: Allow 10-bits encoded streams
  media: Add P010 video format
  media: hantro: hevc: Allow to produce 10-bit frames
  media: hantro: create ops for variants
  media: hantro: enumerate scaled output formats
  media: hevc: Add scaling matrix control
  media: hantro: Add scaling lists feature

 Documentation/admin-guide/media/hantro.rst    |  14 ++
 .../admin-guide/media/v4l-drivers.rst         |   1 +
 .../media/v4l/ext-ctrls-codec.rst             |  45 +++++
 .../media/v4l/pixfmt-yuv-planar.rst           |  78 +++++++-
 .../media/v4l/vidioc-queryctrl.rst            |   6 +
 drivers/media/v4l2-core/v4l2-common.c         |   1 +
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |   6 +
 drivers/media/v4l2-core/v4l2-ctrls-defs.c     |   4 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
 drivers/staging/media/hantro/hantro.h         |  21 +-
 drivers/staging/media/hantro/hantro_drv.c     |  22 ++-
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 186 ++++++++++++++++--
 drivers/staging/media/hantro/hantro_g2_regs.h |  12 ++
 drivers/staging/media/hantro/hantro_hevc.c    |  69 ++++++-
 drivers/staging/media/hantro/hantro_hw.h      |   8 +
 drivers/staging/media/hantro/hantro_trace.h   |  41 ++++
 drivers/staging/media/hantro/hantro_v4l2.c    |  41 +++-
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  22 ++-
 .../staging/media/hantro/rockchip_vpu_hw.c    |  30 ++-
 .../staging/media/hantro/sama5d4_vdec_hw.c    |   6 +-
 include/media/hevc-ctrls.h                    |  11 ++
 include/uapi/linux/videodev2.h                |   1 +
 22 files changed, 580 insertions(+), 46 deletions(-)
 create mode 100644 Documentation/admin-guide/media/hantro.rst
 create mode 100644 drivers/staging/media/hantro/hantro_trace.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

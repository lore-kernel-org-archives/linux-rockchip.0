Return-Path: <SRS0=3svJ=HU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94206C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 19:19:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F74864ECC
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 19:19:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F74864ECC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K4trnt+E/erGeK1maode7Nkw5cImaibuSRx98x8iX3U=; b=YUq4JQOc6II/IOcJ5L3yL2uPOF
	VhRZ+y224EB/XCR3az0tWHdQgSLhlgQPKMYfwPKV/HI0DgxCj2JxOt0djaBb/5ZahLsOHzOpzahP6
	hw6PlDtAA2aDJsmYwMf8tqxVUlE3We3Iq2PerNz02udTmjSPQftCjqZKrGlbRa6J/fF8MlI+GaWNj
	O/rqYid8bwJW8JsxWhmEN1BJnMn/JWj1eUDQp+pgta41nUr4v0cG4hZc8xQfrBBfChuv0ThRWjPQh
	Hq4TCG9U1eF3VKSMKQox2HkxZjsP9WnWXvaXORrOTqBLMnH08C+HugWHyb+crXKbPnHGp3YRTi37G
	0sLp4rVg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCopI-0003sj-Ix; Thu, 18 Feb 2021 19:19:00 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCopD-0003rj-K6; Thu, 18 Feb 2021 19:18:57 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:851a:1dfb:a143:80e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D94251F417F7;
 Thu, 18 Feb 2021 19:18:52 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 peng.fan@nxp.com, hverkuil-cisco@xs4all.nl, dan.carpenter@oracle.com
Subject: [PATCH v2 0/9] Add HANTRO G2/HEVC decoder support for IMX8MQ
Date: Thu, 18 Feb 2021 20:18:35 +0100
Message-Id: <20210218191844.297869-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210218_141855_780394_67B044FF 
X-CRM114-Status: GOOD (  16.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The IMX8MQ got two VPUs but until now only G1 has been enabled.
This series aim to add the second VPU (aka G2) and provide basic 
HEVC decoding support.

To be able to decode HEVC it is needed to add/update some of the
structures in the uapi. In addition of them one HANTRO dedicated
control is required to inform the driver of the numbre of bits to skip
at the beginning of the slice header.
The hardware require to allocate few auxiliary buffers to store the
references frame or tile size data.

The driver has been tested with fluster test suite stream.
For example with this command: ./fluster.py run -ts JCT-VC-HEVC_V1 -d GStreamer-H.265-V4L2SL-Gst1.0
 
This series depends of the reset rework posted here: https://www.spinics.net/lists/arm-kernel/msg875766.html

Finally the both VPUs will have a node the device-tree and be
independent from v4l2 point of view.

A branch with all the dev is available here:
https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/commits/upstream_g2_v2

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

Benjamin

Benjamin Gaignard (9):
  media: hevc: Modify structures to follow H265 ITU spec
  media: hantro: Define HEVC codec profiles and supported features
  media: hantro: Add a field to distinguish the hardware versions
  media: uapi: Add a control for HANTRO driver
  media: hantro: Introduce G2/HEVC decoder
  media: hantro: handle V4L2_PIX_FMT_HEVC_SLICE control
  media: hantro: IMX8M: add variant for G2/HEVC codec
  dt-bindings: media: nxp,imx8mq-vpu: Update bindings
  arm64: dts: imx8mq: Add node to G2 hardware

 .../bindings/media/nxp,imx8mq-vpu.yaml        |  54 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  41 +-
 drivers/media/v4l2-core/v4l2-ctrls.c          |  26 +-
 drivers/staging/media/hantro/Makefile         |   2 +
 drivers/staging/media/hantro/hantro.h         |  34 +-
 drivers/staging/media/hantro/hantro_drv.c     | 103 +++
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 587 ++++++++++++++++++
 drivers/staging/media/hantro/hantro_g2_regs.h | 198 ++++++
 drivers/staging/media/hantro/hantro_hevc.c    | 321 ++++++++++
 drivers/staging/media/hantro/hantro_hw.h      |  48 ++
 .../staging/media/hantro/hantro_postproc.c    |  17 +
 drivers/staging/media/hantro/hantro_v4l2.c    |   1 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  95 ++-
 drivers/staging/media/sunxi/cedrus/cedrus.c   |   6 +
 drivers/staging/media/sunxi/cedrus/cedrus.h   |   1 +
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |   2 +
 .../staging/media/sunxi/cedrus/cedrus_h265.c  |   6 +-
 include/media/hevc-ctrls.h                    |  45 +-
 include/uapi/linux/hantro-v4l2-controls.h     |  20 +
 include/uapi/linux/v4l2-controls.h            |   5 +
 20 files changed, 1557 insertions(+), 55 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_g2_hevc_dec.c
 create mode 100644 drivers/staging/media/hantro/hantro_g2_regs.h
 create mode 100644 drivers/staging/media/hantro/hantro_hevc.c
 create mode 100644 include/uapi/linux/hantro-v4l2-controls.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

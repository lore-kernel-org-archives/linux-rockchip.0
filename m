Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD73EC7EE22
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 08:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d1fLBydyw569aCrC9Hr807xFXvQxcqaff0xRJI7/EZc=; b=Q63E82qPCtv3hJ
	PfIzfoUKgUWy11Xfaalqa42lt5nPLO5xXPAGnKWQ0tm2B5yvKdDcDAya/B3yIQA7UcoPh2nalVqVN
	xBTYtQkt1PaedkSeIFt4sj0QLQTqV2JLC59peojHSET2fa5++zY8MzRDIQK+KvRdjCHleBqFs57Ww
	dfq6/pPDl/gTb1juPA4QwFFBFYuc7fEj9qi4mV3D8vLef/wae1dI+CK+I8sv3fvrhf3sCxl60wQDa
	2RekqqPPh8rv7/jFay0prA4Z3Uh2dm5qcc3ri4BprCkX2dqQAjpk0UZCjXcNWnZVy97tMQ8Hjc/uO
	iEGrIrK7fpdxmyXLykag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu7wv-003rFI-35;
	Wed, 03 May 2023 08:34:57 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu7wn-003r5h-2U;
	Wed, 03 May 2023 08:34:51 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:8234:977e:ebbe:d70b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AD6DB6602338;
	Wed,  3 May 2023 09:34:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683102886;
	bh=KaqkJvEMba9WXHV9EWAyvWYFN18VeoPcjrsUhdVX16g=;
	h=From:To:Cc:Subject:Date:From;
	b=CgmRKEkTGgIx1oEyBFrOUg0/jrYKx20PgHF5wGTgZYvuPKx/k2BmTLcXwDBvBa/5L
	 /M+Vv1Q4XO1GbiCLQ6tHEIlJ5TztDqgPsgBETHtO7eaREav4QSKUJkicStLlIOaySs
	 mhHTRCIa6yI2L0fEomcSgDPPZu2kMzFJuiRiSQN79oAZOPjs/Fm5Xe/zxix8MPQXZN
	 LvgZPptlHAXkzuK+fz+gvo6zGVZ3Opa7dTcLAaJ8ifXXQ+zpXk1QVu5QMs+k3T5dTa
	 XT5k0hgIpkpddtYP7EqOCwdHYZmF/RsK85Jf3Qr9yqDeJah4YVvjbYG/8ynQgTtfX1
	 MRD/g+UN7sCUg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v7 00/13] AV1 stateless decoder for RK3588
Date: Wed,  3 May 2023 10:34:25 +0200
Message-Id: <20230503083438.85139-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_013450_083466_D1ABBA6D 
X-CRM114-Status: GOOD (  16.36  )
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

This series implement AV1 stateless decoder for RK3588 SoC.
The hardware support 8 and 10 bits bitstreams up to 7680x4320.
AV1 feature like film grain or scaling are done by the postprocessor.
The driver can produce NV12_4L4, NV12_10LE40_4L4, NV12 and P010 pixels formats.
Even if Rockchip have named the hardware VPU981 it looks like a VC9000 but 
with a different registers mapping.

The full branch can be found here:
https://gitlab.collabora.com/linux/for-upstream/-/commits/rk3588_av1_decoder_v7

Fluster score is: 200/239 while testing AV1-TEST-VECTORS with GStreamer-AV1-V4L2SL-Gst1.0.
The failing tests are:
- the 2 tests with 2 spatial layers: few errors in luma/chroma values
- tests with resolution < hardware limit (64x64)
- 10bits film grain test: bad macroblocks while decoding, the same 8bits
  test is working fine.

Changes in v7:
- Rebased on media_tree master branch.
- Fix warnings exposed by W=1
- Fix Angelo's comments

Changes in v6:
- Rename NV12_10LE40_4L4 pixel format into NV15_4L4.
- Add defines for post-proc selection.
- Change patch order as requested by Nicolas.
- Fix frame-larger-than warning.

Changes in v5:
- Add a patch to initialize bit_depth field of V4L2_CTRL_TYPE_AV1_SEQUENCE
  ioctl.

Changes in v4:
- Squash "Save bit depth for AV1 decoder" and "Check AV1 bitstreams bit
  depth" patches.
- Double motion vectors buffer size.
- Fix the various errors reported by Hans.

Changes in v3:
- Fix arrays loops limites.
- Remove unused field.
- Reset raw pixel formats list when bit depth or film grain feature
  values change.
- Enable post-processor P010 support

Changes in v2:
- Remove useless +1 in sbs computation. 
- Describe NV12_10LE40_4L4 pixels format.
- Post-processor could generate P010.
- Fix comments done on v1.
- The last patch make sure that only post-processed formats are used when film
  grain feature is enabled.

Benjamin


Benjamin Gaignard (12):
  dt-bindings: media: rockchip-vpu: Add rk3588 vpu compatible
  media: AV1: Make sure that bit depth in correctly initialize
  media: Add NV15_4L4 pixel format
  media: verisilicon: Get bit depth for V4L2_PIX_FMT_NV15_4L4
  media: verisilicon: Add AV1 decoder mode and controls
  media: verisilicon: Check AV1 bitstreams bit depth
  media: verisilicon: Compute motion vectors size for AV1 frames
  media: verisilicon: Add AV1 entropy helpers
  media: verisilicon: Add Rockchip AV1 decoder
  media: verisilicon: Add film grain feature to AV1 driver
  media: verisilicon: Enable AV1 decoder on rk3588
  media: verisilicon: Conditionally ignore native formats

Nicolas Dufresne (1):
  v4l2-common: Add support for fractional bpp

 .../bindings/media/rockchip-vpu.yaml          |    1 +
 .../media/v4l/pixfmt-yuv-planar.rst           |   16 +
 drivers/media/platform/verisilicon/Makefile   |    3 +
 drivers/media/platform/verisilicon/hantro.h   |    8 +
 .../media/platform/verisilicon/hantro_drv.c   |   68 +-
 .../media/platform/verisilicon/hantro_hw.h    |  102 +
 .../platform/verisilicon/hantro_postproc.c    |    9 +-
 .../media/platform/verisilicon/hantro_v4l2.c  |   67 +-
 .../media/platform/verisilicon/hantro_v4l2.h  |    8 +-
 .../verisilicon/rockchip_av1_entropymode.c    | 4424 +++++++++++++++++
 .../verisilicon/rockchip_av1_entropymode.h    |  272 +
 .../verisilicon/rockchip_av1_filmgrain.c      |  401 ++
 .../verisilicon/rockchip_av1_filmgrain.h      |   36 +
 .../verisilicon/rockchip_vpu981_hw_av1_dec.c  | 2232 +++++++++
 .../verisilicon/rockchip_vpu981_regs.h        |  477 ++
 .../platform/verisilicon/rockchip_vpu_hw.c    |  134 +
 drivers/media/v4l2-core/v4l2-common.c         |  162 +-
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |    5 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
 include/media/v4l2-common.h                   |    2 +
 include/uapi/linux/videodev2.h                |    1 +
 21 files changed, 8326 insertions(+), 103 deletions(-)
 create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_entropymode.c
 create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_entropymode.h
 create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_filmgrain.c
 create mode 100644 drivers/media/platform/verisilicon/rockchip_av1_filmgrain.h
 create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
 create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu981_regs.h

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

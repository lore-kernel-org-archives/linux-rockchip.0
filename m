Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1B19C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 15:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MrLVah4u04B10EuyvM4DkBQcpG6arb98g9LrR1vWv+0=; b=06W2LWCXEB+C3b
	dQPZK8cHj0J/h0DlWMaOXfVNT2In1Y42Io4g0OHckbO1+vAAjDURIryLdn99JAdUeKCfXs4H7+NF0
	NkphDuu8dz1UjOflL+Vz6lHum0xwuzPyIeeNb38DdmefT7OQFNCyBt+TDWiZsUNSqxnwtiUpdUlzb
	83IhLxQ48DBmc9x9nwYhvRrXM97V9/aQmt1bLJQ9BQjDo3YJ7Q1Wd8Ek0KScucYRg81cL0rryIFY4
	+DiKSxqjFSm4bKkWU7k+pYD7AeW6R6mvUs6T//O2CkjTXEr8KSVWc6JfMI58gi9g43Cb5SkmQRK0T
	KGBVsjOvkrr5f646OJIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phuOy-004KNP-29;
	Thu, 30 Mar 2023 15:41:24 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phuOX-004K3t-06;
	Thu, 30 Mar 2023 15:41:01 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:792c:96d5:14:366a])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 536A16603182;
	Thu, 30 Mar 2023 16:40:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680190851;
	bh=0gSs5OxGpVrI0GSprqLN8IwnNdNN4hRC00SXIrAsmbo=;
	h=From:To:Cc:Subject:Date:From;
	b=Emg1W/eRLE4JXvYR90A0eGar0dEtm6OpBVSbSN68DfWRDKaaqsMTquGiPxtC5qk6l
	 6i9R13tTYcNLfvTAqJYifdTZPHoOikqlaytfF5+lvHcmspZOYkEi0EkNiOs7Du5L41
	 RAMWTP0XmKgL5YaSTfkVURrkHoyMdGk8cK2i6tjLKzoIU/OGtoI4635w0HblzuCBCu
	 kofu0cikT2wuPvW/ToiqGqCfRCW05IbgGRMv2j2ZeT2WHtqAlAUXlA0z+XvdOjS9nw
	 jnbZJVip/YXEKIjQrkOoir2Fpu2yCVP673eSbOV+LDI1e86gpxyP4988CmYG33Vxep
	 1WiDbswVaso1w==
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
Subject: [PATCH v5 00/13] AV1 stateless decoder for RK3588
Date: Thu, 30 Mar 2023 17:40:30 +0200
Message-Id: <20230330154043.1250736-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_084057_336509_3D5A3A1F 
X-CRM114-Status: GOOD (  15.46  )
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

The series is based on Hans's br-v6.4f branch + "media: Add AV1 uAPI"
patch v7.
The full branch can be found here:
https://gitlab.collabora.com/linux/for-upstream/-/commits/rk3588_av1_decoder_v5

Fluster score is: 200/239 while testing AV1-TEST-VECTORS with GStreamer-AV1-V4L2SL-Gst1.0.
The failing tests are:
- the 2 tests with 2 spatial layers: few errors in luma/chroma values
- tests with resolution < hardware limit (64x64)
- 10bits film grain test: bad macroblocks while decoding, the same 8bits
  test is working fine.

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
  media: Add NV12_10LE40_4L4 pixel format
  media: verisilicon: Get bit depth for V4L2_PIX_FMT_NV12_10LE40_4L4
  media: verisilicon: Add AV1 decoder mode and controls
  media: verisilicon: Check AV1 bitstreams bit depth
  media: verisilicon: Compute motion vectors size for AV1 frames
  media: verisilicon: Add AV1 entropy helpers
  media: verisilicon: Add Rockchip AV1 decoder
  media: verisilicon: Add film grain feature to AV1 driver
  media: verisilicon: Enable AV1 decoder on rk3588
  media: verisilicon: Conditionally ignore native formats
  media: AV1: Make sure that bit depth in correctly initialize

Nicolas Dufresne (1):
  v4l2-common: Add support for fractional bpp

 .../bindings/media/rockchip-vpu.yaml          |    1 +
 .../media/v4l/pixfmt-yuv-planar.rst           |    4 +
 drivers/media/platform/verisilicon/Makefile   |    3 +
 drivers/media/platform/verisilicon/hantro.h   |    8 +
 .../media/platform/verisilicon/hantro_drv.c   |   68 +-
 .../media/platform/verisilicon/hantro_hw.h    |  102 +
 .../platform/verisilicon/hantro_postproc.c    |    9 +-
 .../media/platform/verisilicon/hantro_v4l2.c  |   67 +-
 .../media/platform/verisilicon/hantro_v4l2.h  |    5 +-
 .../verisilicon/rockchip_av1_entropymode.c    | 4424 +++++++++++++++++
 .../verisilicon/rockchip_av1_entropymode.h    |  272 +
 .../verisilicon/rockchip_av1_filmgrain.c      |  401 ++
 .../verisilicon/rockchip_av1_filmgrain.h      |   36 +
 .../verisilicon/rockchip_vpu981_hw_av1_dec.c  | 2234 +++++++++
 .../verisilicon/rockchip_vpu981_regs.h        |  477 ++
 .../platform/verisilicon/rockchip_vpu_hw.c    |  134 +
 drivers/media/v4l2-core/v4l2-common.c         |  149 +-
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |    5 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
 include/media/v4l2-common.h                   |    2 +
 include/uapi/linux/videodev2.h                |    1 +
 21 files changed, 8306 insertions(+), 97 deletions(-)
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

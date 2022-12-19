Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E590C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 17:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jxyXJfB67PCi6nIFUJI9v0X5rrkftuAOxs9s6iNnA/w=; b=y1XDmrnI5J2EtE
	VE3V1BvFoPbxYRn3MAL97Qxcw5xXUgD55gmGtoKZfkXATTktrKssJd4XwfxTNyL7JPTYXHGnUptfl
	WMbJc2lH+wh8SVEolynZkyYG9xiyeMXxXSVo8xCM77tYc8/OmCfND32m/DgK6AMLx6D3ChmAYVYUH
	WhS6PUOxFkJeaMEJKJvdWfj/eVcAmeMTsYYHZfAauPNtzlJVfdowRmzSwiMhegYVGjWRI3Wl9+oi4
	2n6tZ3M0oLatgDXhudb5Homn+mBVrWJgasVS5rBVZ+aREMFHRJN1mJPyLhxtIWpchEX38LQ40SH+K
	dfpnbElH8OrLIAAXBbOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Jrm-00Giii-69; Mon, 19 Dec 2022 17:23:54 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7IV9-00FiCs-Un; Mon, 19 Dec 2022 15:56:30 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:f69c:5603:d4ce:7aa2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 91FE36602C25;
	Mon, 19 Dec 2022 15:56:23 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671465383;
	bh=UyVulrVn+7bAVKLq/DGXCKRzuRojbWRGKmItzsniUQ0=;
	h=From:To:Cc:Subject:Date:From;
	b=KhN5FkuStBnUYbcL5zO5utJ1twZs259RkiQ0rKTDWaQya+3fTR3t4H3pp2ndipwOA
	 aey+i8pzNYFD6bYYiK2nSWMzgMISxOKWGj+oh6sVpfgC/69zqQnrtumXX5PqK64H0z
	 uhzN+iFAfYKGXjbDSatqMCYi2jJgbz2eT2aC6prJnuyio8KDJNBQBYJPrTGs6x9EQ3
	 06TiqQHu0pWkQxFkIbvZFQdv00x3vuTT0vNWV5GFn/s5FS6zVm4xZ/gY1rIpxxeo2q
	 TJWk+nhf3cocvtDTRfQQJyRgglb2kLz16xYwG+Brxl6dcpdBQuJ1e07zrMmh6Uzc8G
	 ZhXwW5Sa+Zm4A==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	daniel.almeida@collabora.com,
	nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v1 0/9] AV1 stateless decoder for RK3588
Date: Mon, 19 Dec 2022 16:56:07 +0100
Message-Id: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_075628_328726_115389BD 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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
The harware support 8 and 10 bits bitstreams up to 7680x4320.
AV1 feature like film grain or scaling are done by the postprocessor.
The driver can produce NV12_4L4 and NV12 pixel formats.
A native 10bits NV12_4L4 format is possible but need more investigation
to be completly documented and enabled.

It is based on Daniel's "[RFC,v3] media: Add AV1 uAPI" [1] patches and
Sebastian's device-tree patches for RK3588.

The full branch can be found here:
https://gitlab.collabora.com/linux/for-upstream/-/commits/rk3588_av1_decoder_v1

Fluster score is: 151/239 while testing AV1-TEST-VECTORS with GStreamer-AV1-V4L2SL-Gst1.0.
The failing tests are:
- 10bits bitstream because 10bits output formats aren't yet implemented.
- the 2 tests with 2 spatial layers: few errors in luma/chroma values
- tests with resolution < hardware limit (64x64)

Benjamin

Benjamin Gaignard (9):
  dt-bindings: media: rockchip-vpu: Add rk3588 vpu compatible
  media: verisilicon: Add AV1 decoder mode and controls
  media: verisilicon: Save bit depth for AV1 decoder
  media: verisilicon: Check AV1 bitstreams bit depth
  media: verisilicon: Compute motion vectors size for AV1 frames
  media: verisilicon: Add AV1 entropy helpers
  media: verisilicon: Add Rockchip AV1 decoder
  media: verisilicon: Add film grain feature to AV1 driver
  media: verisilicon: Enable AV1 decoder on rk3588

 .../bindings/media/rockchip-vpu.yaml          |    1 +
 drivers/media/platform/verisilicon/Makefile   |    3 +
 drivers/media/platform/verisilicon/hantro.h   |    5 +
 .../media/platform/verisilicon/hantro_drv.c   |   54 +
 .../media/platform/verisilicon/hantro_hw.h    |  102 +
 .../platform/verisilicon/hantro_postproc.c    |    3 +
 .../media/platform/verisilicon/hantro_v4l2.c  |    5 +
 .../verisilicon/rockchip_av1_entropymode.c    | 4536 +++++++++++++++++
 .../verisilicon/rockchip_av1_entropymode.h    |  272 +
 .../verisilicon/rockchip_av1_filmgrain.c      |  401 ++
 .../verisilicon/rockchip_av1_filmgrain.h      |   36 +
 .../verisilicon/rockchip_vpu981_hw_av1_dec.c  | 2280 +++++++++
 .../verisilicon/rockchip_vpu981_regs.h        |  477 ++
 .../platform/verisilicon/rockchip_vpu_hw.c    |  116 +
 14 files changed, 8291 insertions(+)
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

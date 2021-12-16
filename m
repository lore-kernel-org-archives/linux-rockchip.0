Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B312C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 11:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RpuMxhLYMLa9IIgUHTG8nXqqsexzOj39OOuYl8Tzgro=; b=VkPuCksQTL5qbO
	qMFh4I76xrRO5dVh8kBwJHLw7Lg0B9juocRl6HPi7xfMTApX+2nODZFrmP3DlBlJtpCusmY+OFpCV
	2w/u2wn26JWLbtrK+DSrorxC0+o3e/kx2rc8cxR6iIpKAy6QOCm5qV6Lq2+gdu3l+/0IKvjDOocpS
	cDmPM5vSWN5/ZIlkgXZdOLVQkXr7dW/jZc7lXhEyou76W+lwpFuaNQQKSePQvQ4IiNeakDDqcETFT
	lG6R2aN6zQ9Ul8lyNYzsCFtDF4NtuS8M+H8wAL2cYdsGMJ/omq2PGQLufNFeYglcTFbvlz9p7FadB
	Pwpflc1xJXtz/fTDangw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxohJ-0054kV-HV; Thu, 16 Dec 2021 11:13:17 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxohG-0054is-L0; Thu, 16 Dec 2021 11:13:16 +0000
Received: by mail-io1-xd33.google.com with SMTP id e128so34673402iof.1;
 Thu, 16 Dec 2021 03:13:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=54oWWoqoZRE1KomV36qp17pwppN05XALT4TsXIurcA8=;
 b=cItagiJJAz7DHAfCxPnMgC4HuMPJL3dRt3szmXX+GaUxfZ0rOhAq2f25XNBCk8Xo46
 ZC3jnDok91LDP/J0Aojhf8S+RVc/UGmhRKbnOdqPyEZAi3vqM4tkTUlvhQ00fg1vvRgm
 2uYkYPp7AqaID4zqBsI+5lrt7U5EN4ek6mAL6K3m4MCUOxi5Bn8ZcAakI0bQ1fS13l7c
 As7EPAEOqBrOBHM8kFPlxvO6ZeJY/0N4DYB4IuA5zTxdxumdJ0vm88nlquyLbzyFaAxS
 Dq0nuOaqsJipOx15C++m7ysQBYRUgX+qXtVN80idfexI+j/TGQcR5ciJY4KtrKX4G+dS
 JrKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=54oWWoqoZRE1KomV36qp17pwppN05XALT4TsXIurcA8=;
 b=pGo13eIHjLHsG2xsVVi7ras/XFYKSaIqGa8N1VESgVXSHYnPtRbtkDsibpoSQHpASM
 CdNmozWvAzAZp98H+Btf+9x454ohKi1P1WKRM9M6Ajh8O1FBUEu9+tqBMSeHJ8fItgM0
 6tCJDvxPOWcye9mxzy0WOFvj4rKh1Xiv2ydZz8a14FaZhyrTV0kcs8+CONoNbMXYDH8Q
 uxUKfo0YqBoM54QMfONg0zdchoDlHDmOzE8kphMNkT9YTWr1XBhawv1U0wrcP7bjpVbp
 +ymqumeeUbvJZ+KrKUvRhMj7s60sE0cVrUp45BJX6SKe1B+rvYQyz7cN6CT367DsoPkD
 cQSw==
X-Gm-Message-State: AOAM5327elfYzeGxb4gAkJBpxcFbbg8HJ83/G9YSpjB7oAMO7/MbR/Xn
 amFp7Z+Co1iXlr02l0okfj0=
X-Google-Smtp-Source: ABdhPJwvVo8tPWOUQxrNaQVlLXq+RAbTp5V12nskk+dTmerWZP7vQgxY7ozL9koGj1zxFhGi3B4yWw==
X-Received: by 2002:a05:6638:33a6:: with SMTP id
 h38mr9195152jav.185.1639653193110; 
 Thu, 16 Dec 2021 03:13:13 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:fe22:1652:55f7:5197])
 by smtp.gmail.com with ESMTPSA id h1sm3090946iow.31.2021.12.16.03.13.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 03:13:12 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: abel.vesa@nxp.com, aford@beaconembedded.com,
 benjamin.gaignard@collabora.com, hverkuil-cisco@xs4all.nl,
 Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH V2 00/10] media: hantro: imx8mq/imx8mm: Let VPU decoders get
 controlled by vpu-blk-ctrl
Date: Thu, 16 Dec 2021 05:12:45 -0600
Message-Id: <20211216111256.2362683-1-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_031314_738577_DB47D566 
X-CRM114-Status: GOOD (  17.21  )
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

Both the i.MX8MQ and i.MX8MM have G1 and G2 decoders.
The two decoders are similar, but the imx8mm lacks the
post-processor, so they will have distinct compatible flags.

From what I can tell, the G2 decoder wasn't working, so splitting
the i.MX8MQ VPU into G1 and G2 makes it easier to control them 
independently since the TRM of both the i.MX8MQ and
i.MX8MM list them as distinct IP blocks. This also allowed G2 to
become available.

With them being split, the power-domain can shift to the
vpu-blk-ctrl which is available on both i.MX8MQ and i.MX8MM,
but some of bits are different, so they'll have separate bindings.

Lastly, with the G1 and G2 operational, enable the i.MX8MM.
On the i.MX8MM, the clock speed of 600MHz was chosen to match
the default of the kernel repo from NXP and can be overwritten
by board files for anyone who under/over volts the power rail.

There seems to be some disagreement between the TRM and the Datasheet
for the imx8mq as to whether the speed should be 300MHz (TRM) or
600MHz (datasheet), so feedback from NXP would be very much
appreciated.

The repo used as the starting point was:
git://linuxtv.org/hverkuil/media_tree.git for-v5.17e

Fluster was run on both i.MX8MM and i.MX8MQ

At 600 MHz, the i.MX8MM had the following:

./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
Ran 55/61 tests successfully               in 8.299 secs

./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
Ran 90/135 tests successfully               in 71.200 secs

./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
Ran 139/303 tests successfully               in 218.079 secs

The i.MX8MQ had the following:

./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
Ran 55/61 tests successfully               in 7.732 secs

./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
Ran 90/135 tests successfully               in 58.558 secs

./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
Ran 144/303 tests successfully               in 271.373 secs

V2:  Remove references to legacy dt-binding from YAML, but keep
     it in the driver so older device trees can still be used.
     Fix typos in YAML
     Remove reg-names, interrupt-names, and clock-names from YAML,
     since each node will only have one of each, they're not necessary
     Add Fluster scores to cover letter for i.MX8MQ

Adam Ford (7):
  dt-bindings: media: nxp,imx8mq-vpu: Split G1 and G2 nodes
  media: hantro: Allow i.MX8MQ G1 and G2 to run independently
  arm64: dts: imx8mq: Enable both G1 and G2 VPU's with vpu-blk-ctrl
  arm64: dts: imx8mm: Fix VPU Hanging
  dt-bindings: media: nxp,imx8mq-vpu: Add support for G1 and G2 on
    imx8mm
  media: hantro: Add support for i.MX8MM
  arm64: dts: imx8mm: Enable Hantro G1 and G2 video decoders

Lucas Stach (3):
  dt-bindings: power: imx8mq: add defines for VPU blk-ctrl domains
  dt-bindings: soc: add binding for i.MX8MQ VPU blk-ctrl
  soc: imx: imx8m-blk-ctrl: add i.MX8MQ VPU blk-ctrl

 .../bindings/media/nxp,imx8mq-vpu.yaml        | 93 +++++++++++--------
 .../soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml      | 71 ++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 23 ++++-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 63 ++++++++-----
 drivers/soc/imx/imx8m-blk-ctrl.c              | 68 +++++++++++++-
 drivers/staging/media/hantro/hantro_drv.c     |  3 +
 drivers/staging/media/hantro/hantro_hw.h      |  3 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c   | 75 ++++++++++++---
 include/dt-bindings/power/imx8mq-power.h      |  3 +
 9 files changed, 324 insertions(+), 78 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml


base-commit: d1888b0bfd2ddef2e8a81505ffa200b92cc32e0c
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

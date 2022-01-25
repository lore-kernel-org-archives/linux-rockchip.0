Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFCACC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 17:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ssm4oQUiKZeIvQ06BVfaZ1hzi3Fty187m1Bb6Sk0kFc=; b=tXN0uPoQbx/334
	ZPEzG+vaFSrUCIWxJnwCP+7o5P9W63G2z7UoKnVXuYR12h+iLgklPj2zC8C8soc51RBt/ecSPHHfa
	rSPU/OuDhfZiDVo9kCNEfT7sYTaS0ZUIGoBEoEQnEn5TU75jF9cYr0zbPgQDon+gydQIQuzwlCDz9
	hJ2SizarynMo1D8/C6aDsyZ2fvRfVQ423MeszNaXu/ppzdckRN9xURj5+LizwSBf+NKYvZNX4jwOG
	xRDAYSkTMvBh3F+Qd+ziC6yGVoYCUeqCMi/tpQCPqzK/QA1YxPpKfww0JekpmNiRykilhk9J/gu3u
	Ssi2+reV+xLf0mnjUh0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCPPo-008uie-VH; Tue, 25 Jan 2022 17:15:33 +0000
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCPMl-008tD8-A9; Tue, 25 Jan 2022 17:12:24 +0000
Received: by mail-io1-xd31.google.com with SMTP id z199so9993998iof.10;
 Tue, 25 Jan 2022 09:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rEGsemrF2MpzSaFtK9a7VF5CyiT+4zDqlNQARTClDqQ=;
 b=Yr5rkQ+Cfop1lHOifCaGoLJxKWI2LMh8BioL2QjX0YQjrkl7z5j2kslX/qSYjfrAoj
 3fLbcFjT6zN+yQF1aKFf/5twSFjPebGQn0pBJN17I/uYpWJvNk5quHdjJz8aDySHuhgA
 E9/mZNNxf0OtRNq75/F9SXEprbxbgR972rs/a8nAw8UYU5y5eX+sKOluGoBu2tG+M3Q6
 fErxvGYBwejOhBLbIHaSdwGAnnm2BeYor9SRtz3Tcf5oRPOx2tNTlMQV2JFWp+dTf+ke
 bH7Mx5u0YhZ+f452asyi7GFHSqy+18njZ05kV/v4NbjQAN7Xwyn37s/StZphwXaHZVD+
 XXQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rEGsemrF2MpzSaFtK9a7VF5CyiT+4zDqlNQARTClDqQ=;
 b=5nKTpRE47eTTG2HK98G7HA2ApaVxXR9QJrCGje78/Td+gECH1B9eDsCDFdNNvifrk/
 9PiugxoJLb3on0TZP+NNIojIEBjnLKVyuXphRhY9voBTI6piVJi74uzUqXFM/OXxgiic
 REUElMNuch0w5ebJfL3BzLNc+3yeeHnu6JRrfd/6Hk/nezAL5+qMzOvZAZX8lD+E0/LS
 J47yUZXLxWBl5f29OrfLKNDYyb81WIrtbL73WHJDr80xyrPLnvUHBnJa3Z/rZYl1vw0o
 KVvqSRoVBoDSXfJ0YiPBcpDwD3rm44zKyKYfr9ZB8qo9hdXDQmjJx6tVYCNNOhY023Hc
 cQew==
X-Gm-Message-State: AOAM533f6wkB/FIwSqupRtG5okA824CHqjYwV5i3y7unH+cZki2NAI2o
 ftyXh0//dfRGlbxYm8RaAFw=
X-Google-Smtp-Source: ABdhPJyw9E4BKoePLJL9BheAFhK0qfF07y/A5HfI3ABp3cWjHBjSS1QZYlxecizs/mFXZQVRZQgiLQ==
X-Received: by 2002:a05:6638:32a5:: with SMTP id
 f37mr9731853jav.208.1643130740951; 
 Tue, 25 Jan 2022 09:12:20 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6592:b6fe:71b1:9f4c])
 by smtp.gmail.com with ESMTPSA id m14sm8090291iov.0.2022.01.25.09.12.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 09:12:19 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: aford@beaconembedded.com, cphealy@gmail.com,
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
Subject: [PATCH V4 00/11] media: hantro: imx8mq/imx8mm: Let VPU decoders get
 controlled by vpu-blk-ctrl
Date: Tue, 25 Jan 2022 11:11:17 -0600
Message-Id: <20220125171129.472775-1-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_091223_425639_6BB99818 
X-CRM114-Status: GOOD (  19.57  )
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
5.17-rc1

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

V4:  Add a comment and a notice based on feedback from Ezequiel Garcia
     if the older compatible flag is used.
     Add new patch which removes a reference to vpu from imx8mq-tqma8mq
     because the VPU is enabled by default and it's not needed.  Without
     this change, its device tree would fail to build.

V3:  Rebase on 5.17-RC1.
     Remove imx8mm-vpu-g2 since it's identical to imx8mq-vpu-g2
     Remove unnecessary examples in YAML files.
     Remove some unused variables.

V2:  Remove references to legacy dt-binding from YAML, but keep
     it in the driver so older device trees can still be used.
     Fix typos in YAML
     Remove reg-names, interrupt-names, and clock-names from YAML,
     since each node will only have one of each, they're not necessary
     Add Fluster scores to cover letter for i.MX8MQ



Adam Ford (8):
  arm64: dts: imx8mq-tqma8mq: Remove redundant vpu reference
  dt-bindings: media: nxp, imx8mq-vpu: Split G1 and G2 nodes
  media: hantro: Allow i.MX8MQ G1 and G2 to run independently
  arm64: dts: imx8mq: Enable both G1 and G2 VPU's with vpu-blk-ctrl
  arm64: dts: imx8mm: Fix VPU Hanging
  dt-bindings: media: nxp, imx8mq-vpu: Add support for G1 on imx8mm
  media: hantro: Add support for i.MX8MM Hantro-G1
  arm64: dts: imx8mm: Enable Hantro G1 and G2 video decoders

Lucas Stach (3):
  dt-bindings: power: imx8mq: add defines for VPU blk-ctrl domains
  dt-bindings: soc: add binding for i.MX8MQ VPU blk-ctrl
  soc: imx: imx8m-blk-ctrl: add i.MX8MQ VPU blk-ctrl

 .../bindings/media/nxp,imx8mq-vpu.yaml        | 68 ++++++++----------
 .../soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml      | 71 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 23 +++++-
 .../boot/dts/freescale/imx8mq-tqma8mq.dtsi    |  4 --
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 63 +++++++++-------
 drivers/soc/imx/imx8m-blk-ctrl.c              | 66 +++++++++++++++++
 drivers/staging/media/hantro/hantro_drv.c     | 11 +++
 drivers/staging/media/hantro/hantro_hw.h      |  2 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c   | 62 ++++++++++++----
 include/dt-bindings/power/imx8mq-power.h      |  3 +
 10 files changed, 292 insertions(+), 81 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml


base-commit: e783362eb54cd99b2cac8b3a9aeac942e6f6ac07
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

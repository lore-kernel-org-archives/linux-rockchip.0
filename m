Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57C96C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 02:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bPU8Z4JkWUINU8CHfdJRDTA8ko4r2W8Ot/w3U3XQ1ww=; b=a8StiErXjiCyEN
	8lEa5sYp96n9VxnrONkVB2zcGX9l8fVC0SO4FNZphldHouDS5s/UBRSsyBc1mcZJPUi6nbW7WpVFH
	jReAR92r6XAvxKRY7NbVtkDkTskLzuVNxKnTX6sQ+8tmR26+9VYbg8lOjnNY/izbKmlKW6cpuzZQK
	19s7F0Wj+77ZirE7hoarfHXCN0eTzsGxdC9VBLzxknoWn8AWDkVACzABD0oOe0aXF2eK4bTwI7jmj
	iA4tcTHuawQNdSU89DRGan3Egtc2mk4ruZEh//bZmemJG8Tffgi2Yqgp8JAQj4Mb7waTMn5+56Rsf
	Bl5TK9H/N16aY2VJ+WsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBp95-0021jQ-IF; Mon, 24 Jan 2022 02:31:51 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBp8n-0021Ym-CZ; Mon, 24 Jan 2022 02:31:34 +0000
Received: by mail-io1-xd36.google.com with SMTP id q204so3197128iod.8;
 Sun, 23 Jan 2022 18:31:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p13TQCGRgvTCj7GLIu8Z93zm/cda7I2vNls+/ZaL0QM=;
 b=JBqdhLlyiTRdjTAFVH2wDzWwLUlOYdDczEEuEf3zHgPMq7wBbGHcAuS+BNwoDx5jm4
 JFCeOQ1konG8R5lKoNXtYBPDwh9BbIptwVvqRBup3R0p5AWm15vQg/MkRwRVPqno9Qrt
 Gb9FgCFYqRtcXQvE+Gx9I1Nr6rziQBKGK0BuUOHQWl5yd1320wVfpphrLhkqmlM8TK4G
 cEZFceZGifQnrJ2ChiiYOes9MtiEZJm8hfqNXexTFcn9xW5zRliNSeVJUL4lwq1XHkjw
 zFW+KTAWl8Av+kfeLL2jpULggIOn3BQRpq1wA5/BkkB+JrBthfm1c9iId2VMg0A8N6wv
 8YFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p13TQCGRgvTCj7GLIu8Z93zm/cda7I2vNls+/ZaL0QM=;
 b=gSSGB8zhj9vlyHGRAMmCxHdE/q0wKQ847xHDsnG/vBZaWFcVTDOvIxglHxGa2O6Xug
 jVj73ZevEEgW4D8V6yJOhN8EY7RyXAaM9R3LFfY8llffUsjqxBNQYs6UA6rDqTgWL/Wc
 zyiAu9mmdItq43GEPOgr9lCVOpM8MA+tMsbzLDDleVCULS/ov4DT5DLaWS/tXlGzlU1Y
 +GBKLyqqOGphILgbuDBokWebnq31+jlx+zIwnzEBXmighGH9mQVdyDmaRNOs4YAiig4n
 JUpY92m2ON9RNMgfhfQ2NLYcgtypldXJp5Yiq4FLE8fUI2GsxLQKP9UGf2EugdVLPX64
 EKBw==
X-Gm-Message-State: AOAM532n7CiHUdcOHxuLvOJh5/hKovgatebCDhg94F/RCv8T+mKqOSk+
 5G6Q0mp8UmqTShfisbaeDD0=
X-Google-Smtp-Source: ABdhPJzHCWRlnTtYi6nXYxXBg2TQ4f+2rkUAUGFd1hsyBRLoC3kM1to4BkOmAaLnPAU6IfQ3gDwJ/Q==
X-Received: by 2002:a05:6602:1407:: with SMTP id
 t7mr7255403iov.78.1642991491139; 
 Sun, 23 Jan 2022 18:31:31 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:582d:ad0e:e5a6:94b6])
 by smtp.gmail.com with ESMTPSA id w4sm6625633ilq.56.2022.01.23.18.31.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Jan 2022 18:31:30 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org,
 aford@beaconembedded.com, Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: [PATCH V3 00/10] media: hantro: imx8mq/imx8mm: Let VPU decoders get
 controlled by vpu-blk-ctrl
Date: Sun, 23 Jan 2022 20:31:14 -0600
Message-Id: <20220124023125.414794-1-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_183133_479163_3A100167 
X-CRM114-Status: GOOD (  17.28  )
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


Adam Ford (7):
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
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 63 +++++++++-------
 drivers/soc/imx/imx8m-blk-ctrl.c              | 66 +++++++++++++++++
 drivers/staging/media/hantro/hantro_drv.c     |  2 +
 drivers/staging/media/hantro/hantro_hw.h      |  2 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c   | 62 ++++++++++++----
 include/dt-bindings/power/imx8mq-power.h      |  3 +
 9 files changed, 283 insertions(+), 77 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml


base-commit: e783362eb54cd99b2cac8b3a9aeac942e6f6ac07
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

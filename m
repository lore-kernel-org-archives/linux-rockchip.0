Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76D57C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 22:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SGgJPZPzT5GPYIW20vzFHIJMK4HN72d8IuKsKCIBfUY=; b=DybQss+RYBVX/+
	+4TZ3kUrd/mvfXkUyKCoW++Vxuc1Llmw6TfzUZ8BMpOIuK05V6osQdq/3CqiIhm98AcEKLyRbLfvk
	JRpVklVunNK1Jc7ILl3EbEVJsHS9kI8O9lZ+E1OY8Qn+tewZLI1nBtCT57IbdCnD51PQ4H3sxU48x
	t4a92PhRoE4w+lvCerOj1oE8rmUFjTnIl73xqf2O0Vqkd1+z7NCpo8QdZEuXpaN9AGlQ8dI8L9y2F
	BicatWsclG1UuB1p/DrAZyzQCU77GY5YCgCtFNF074Dzpny9fv8eEMBZiHvxbyPFNycxV2owiH10T
	TTlKZb2ntjkzlUEKAW2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv5lp-00EROy-FC; Wed, 08 Dec 2021 22:50:41 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv5lm-00EROF-N1; Wed, 08 Dec 2021 22:50:40 +0000
Received: by mail-io1-xd2a.google.com with SMTP id p23so4585208iod.7;
 Wed, 08 Dec 2021 14:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mMi1WPOBzI4R2YZ5HVYQx/dnfliDDCI8Msm6WyR+eh4=;
 b=XcTrSwtnNRn21WNNBvMrv1NLcY+Mu2z72raACo/rJ6Taqa/EMOV2oNk4pwj4EmSvLt
 luGUbISzvvMt4KSslR634zeGU7QYraSlBBEYjYNASBeA99EN9gyzY0p3wkqYQQhmphEs
 8l6EQVJ9oSaQ7qdsh3KMQ5fyqkh0iQTq9sXGOyz+HT58120MR9jLg5eqv6VmCk0b0gqW
 34LQEiA0JxmeDCBx2kRlrxNHM5UZLoMzC557S3/8Anr6qDjJTuoMvojX8ltnjNtmc2Lp
 sdaKeArGSaq2svysxh0W+nXexC/NVpk3OK92mdkaPLWl6MwyxoTVlfMCYz+CxLRAeJ0i
 tSyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mMi1WPOBzI4R2YZ5HVYQx/dnfliDDCI8Msm6WyR+eh4=;
 b=4/gRGE22n6DXNKZVtoGf7+MADX6dF1EibdFqte6boNd0DDQQdK/ON3zHHOORdV3pLp
 CQC/F0wFliH6cpK0lMMxzDiHzmOybBPV9xjpPhFs4bajV3SzlY4ANgHFjKbEdzYFb6Q1
 eDF2TI88o/a76TX+79URL9pKdz/kk1tr+4MngXKCy8gFUOTctjl5hCinACeb3NpCyj31
 kj9j++KZUtdMMTliWjRtS7ycnjsxy8O6gZ3gScHgLogs7CEuvcjkJyCtEhT8I+Sh4WnW
 nykjIH+5JX8WNpXgh8RexuyJM6HXIgjtXaB/7zLISW32m3a7+0PMS1EKbBBtqylvcZRB
 SnSg==
X-Gm-Message-State: AOAM531VKpkX1EQ2ITmAqbdtcNu0RAG7tfwLthVM/OkqE8uJHmXKAxoP
 wieRlghSYRMs9FfmRDqucvw=
X-Google-Smtp-Source: ABdhPJzZJP3Os1XE981Rf8W5rVV6iSlxLLkvkEoeb5qMER1aAj+4hxIA+fbfp5SLUrLTyxyWqwN1AA==
X-Received: by 2002:a6b:b490:: with SMTP id
 d138mr10603468iof.180.1639003837735; 
 Wed, 08 Dec 2021 14:50:37 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:269a:1aa2:f1d9:8dbb])
 by smtp.gmail.com with ESMTPSA id t6sm2378751ioi.51.2021.12.08.14.50.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 14:50:37 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: benjamin.gaignard@collabora.com, cphealy@gmail.com,
 aford@beaconembedded.com, nicolas@ndufresne.ca,
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
Subject: [PATCH 00/10] media: hantro: imx8mq/imx8mm: Let VPU decoders get
 controlled by vpu-blk-ctrl
Date: Wed,  8 Dec 2021 16:50:19 -0600
Message-Id: <20211208225030.2018923-1-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_145038_780288_39B41C50 
X-CRM114-Status: GOOD (  12.81  )
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
Splitting the i.MX8MQ VPU into G1 and G2 makes it easier to
control them independently since the TRM of both the i.MX8MQ and
i.MX8MM list them as distinct IP blocks.  With them being split,
the power-domain can shift to the vpu-blk-ctrl which is available
on both i.MX8MQ and i.MX8MM but some of bits are different, so
they'll have separate device tree bindings.
Lastly, with the G1 and G2 operational, enable the i.MX8MM.
On the i.MX8MM, the clock speed of 600MHz was chosen to match
the default of the kernel repo from NXP and can be overwritten
by board files for anyone who under/over volts the power rail.

The repo used as the starting point was:
   git://linuxtv.org/hverkuil/media_tree.git for-v5.17e

This media hantro group has been especially helpful in helping
me get up to speed on how it works.

Fluster was run on the i.MX8M Mini at 600 MHz:

./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
Ran 55/61 tests successfully               in 8.299 secs

./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
Ran 90/135 tests successfully               in 71.200 secs

./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
Ran 139/303 tests successfully               in 218.079 secs


Adam Ford (7):
  dt-bindings: media: nxp,imx8mq-vpu: Support split G1 and G2 nodes with
    vpu-blk-ctrl
  media: hantro: Allow i.MX8MQ G1 and G2 to run independently
  arm64: dts: imx8mq: Enable both G1 and G2 VPU's with vpu-blk-ctrl
  arm64: dts: imx8mm: Fix VPU Hanging
  dt-bindings: media: nxp,imx8mq-vpu: Enable support for i.MX8M Mini
  media: hantro: Add support for i.MX8MM
  arm64: dts: imx8mm: Enable Hantro G1 and G2 video decoders

Lucas Stach (3):
  dt-bindings: power: imx8mq: add defines for VPU blk-ctrl domains
  dt-bindings: soc: add binding for i.MX8MQ VPU blk-ctrl
  soc: imx: imx8m-blk-ctrl: add i.MX8MQ VPU blk-ctrl

 .../bindings/media/nxp,imx8mq-vpu.yaml        | 85 ++++++++++++++-----
 .../soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml      | 71 ++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 29 ++++++-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 69 +++++++++------
 drivers/soc/imx/imx8m-blk-ctrl.c              | 68 ++++++++++++++-
 drivers/staging/media/hantro/hantro_drv.c     |  3 +
 drivers/staging/media/hantro/hantro_hw.h      |  3 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c   | 84 +++++++++++++++---
 include/dt-bindings/power/imx8mq-power.h      |  3 +
 9 files changed, 357 insertions(+), 58 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml

base-commit: d1888b0bfd2ddef2e8a81505ffa200b92cc32e0c

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

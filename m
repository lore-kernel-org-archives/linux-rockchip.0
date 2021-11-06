Return-Path: <SRS0=5KZ+=PZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ECA6C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 18:38:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E54ED61165
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 18:38:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E54ED61165
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OLUm6AhK2KmBDe7VB7mNvWQJUUuNPzvf80ipuailqSY=; b=ynYHdPRO/wrFC4
	73IDU1IUsuqaW/E31cuNeg821Urj/cBUiWmCTEBLvGEYSCqkYvyVM81OErJCx6+d7HMHrGVtUGhnX
	akQbIlLDY6wlGVBc+v1ZadQfxp7RYPklLvIbAiHTiMFkHo9Ifenm+jttJzZ4cuxY/bZ1b0AMnDpnb
	64fPyxhUIlbcYcfV7szWXVGK9Kl+MUrzxPzgrbl3ezlLo0ZqgitLwTZm1XbwGs5l09LzQqMfWE51v
	h6Vxo9SmDIW6gmwp9udwF7lXj/FgnvGfvkDx4ZqQbq6bvP9pxMziZZJHA6SBVKOJDYZrCODMhNsVh
	DPhERCTJelfp1IB5uUIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjQaB-00DX7N-EC; Sat, 06 Nov 2021 18:38:27 +0000
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjQa8-00DX60-Cl; Sat, 06 Nov 2021 18:38:26 +0000
Received: by mail-io1-xd2b.google.com with SMTP id z206so14581608iof.0;
 Sat, 06 Nov 2021 11:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9S5oHAmnScjjJzJoMnQXat0UgrVfZXu2Ev8iwM+SUpE=;
 b=BNk6tEQayGxI9Bqdhs64NR/wTUlQovH1v52TNPLLpN4Fwb8M3S4KemGdRL5aTovrav
 2jmC2c24aWAcGb5ujGZNnXVnWET6hRwbtfoW87PqeQlfAeUiqPHno/wKHQ3Lg+VAvtFt
 wS0E510s+LBSse/ND5hh26SGO2yeBWv5eFIWTw7y2CLPe9v2x61ZnQc3jMwas88e4d16
 eyZj0lC9jwb5IU2AoOCljKgcHnDW8xi4y94/dHfxCoG96MTXF2/oJ2ACQYPGtbgTMvJh
 0oPpNh+hQmB7ddFCWiazix2//34C0qQdYN+1otszNpKAR3oWyP+WNUKcoG1sj1KLlqPG
 o9Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9S5oHAmnScjjJzJoMnQXat0UgrVfZXu2Ev8iwM+SUpE=;
 b=W3QDAlIZiR8p9kQDH3Dz8MV9UAtNtbwnL+IXcc3foFuLayJhcKxVQTQ9LXbaTmh3sv
 mT+ip5CRIHvlAW3dCa6DrMNkLxuJSjw3jBfmQw7i0Ta7jxnxr5puMe0dP64RZkkEKSe1
 WH41ylok8ZIqCv53AhKUmAaQUEH4xlsLp2fvPyRyKfN8PNAEYcfEVgANyC3i+lI15tA3
 ISAHBdNYhRmxQvYcbdDs3XLuQrMwegpck6ag97/9oHDtAC6ZpoRUXWpysxekaXbaLCP6
 3T51yHGApUFDgOwmadOuSYskM/IHnru01tynCguHaoKEpSy/IEbg12dJ9eDh0lk1mOy/
 pbXw==
X-Gm-Message-State: AOAM530fWOBV38acpkFVXw5QvPgui2SUUwLbTDtMlATnqbg+RRW7nkXx
 axDZnosKgPVb1vjsoaPKy9k=
X-Google-Smtp-Source: ABdhPJx1eRslfc8lgovdJvKBdwnm0TwhpaEMzSronnvFUCLxb1Is+3dHZy24nDADw9qOgud4gfv7Jw==
X-Received: by 2002:a02:cb8f:: with SMTP id u15mr12236972jap.131.1636223903395; 
 Sat, 06 Nov 2021 11:38:23 -0700 (PDT)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:64ba:1c0f:6d36:c11d])
 by smtp.gmail.com with ESMTPSA id o10sm7174077ilu.49.2021.11.06.11.38.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Nov 2021 11:38:22 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: tharvey@gateworks.com, frieder.schrempf@kontron.de, marek.vasut@gmail.com,
 jagan@amarulasolutions.com, aford@beaconembedded.com,
 cstevens@beaconembedded.com, Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, Lucas Stach <l.stach@pengutronix.de>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 Peng Fan <peng.fan@nxp.com>,
 linux-rockchip@lists.infradead.org (open list:HANTRO VPU CODEC DRIVER),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE), linux-kernel@vger.kernel.org (open list),
 linux-staging@lists.linux.dev (open list:STAGING SUBSYSTEM)
Subject: [RFC 0/5] arm64: imx8mm: Enable Hantro VPUs
Date: Sat,  6 Nov 2021 13:37:56 -0500
Message-Id: <20211106183802.893285-1-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211106_113824_465198_57104479 
X-CRM114-Status: GOOD (  16.58  )
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

The i.MX8M has two Hantro video decoders, called G1 and G2 which appear
to be related to the video decoders used on the i.MX8MQ, but because of
how the Mini handles the power domains, the VPU driver does not need to
handle all the functions, so a new compatible flag is required.

The i.MX8MM also has a Hantro video encoder which appears to be similar
to what's already supported in some Rockchip devices.  As part of the
series, some of the video format names are re-named to be more generic.

The VPUs appear as media devices:

Media device information
------------------------
driver          hantro-vpu
model           hantro-vpu
serial          
bus info        platform: hantro-vpu
hw revision     0x0
driver version  5.15.0

Device topology
- entity 1: nxp,imx8mm-vpu-dec-source (1 pad, 1 link)
            type Node subtype V4L flags 0
            device node name /dev/video1
	pad0: Source
		-> "nxp,imx8mm-vpu-dec-proc":0 [ENABLED,IMMUTABLE]

- entity 3: nxp,imx8mm-vpu-dec-proc (2 pads, 2 links)
            type Node subtype Unknown flags 0
	pad0: Sink
		<- "nxp,imx8mm-vpu-dec-source":0 [ENABLED,IMMUTABLE]
	pad1: Source
		-> "nxp,imx8mm-vpu-dec-sink":0 [ENABLED,IMMUTABLE]

- entity 6: nxp,imx8mm-vpu-dec-sink (1 pad, 1 link)
            type Node subtype V4L flags 0
            device node name /dev/video1
	pad0: Sink
		<- "nxp,imx8mm-vpu-dec-proc":1 [ENABLED,IMMUTABLE]



Media device information
------------------------
driver          hantro-vpu
model           hantro-vpu
serial          
bus info        platform: hantro-vpu
hw revision     0x0
driver version  5.15.0

Device topology
- entity 1: nxp,imx8mm-vpu-g2-dec-source (1 pad, 1 link)
            type Node subtype V4L flags 0
            device node name /dev/video2
	pad0: Source
		-> "nxp,imx8mm-vpu-g2-dec-proc":0 [ENABLED,IMMUTABLE]

- entity 3: nxp,imx8mm-vpu-g2-dec-proc (2 pads, 2 links)
            type Node subtype Unknown flags 0
	pad0: Sink
		<- "nxp,imx8mm-vpu-g2-dec-source":0 [ENABLED,IMMUTABLE]
	pad1: Source
		-> "nxp,imx8mm-vpu-g2-dec-sink":0 [ENABLED,IMMUTABLE]

- entity 6: nxp,imx8mm-vpu-g2-dec-sink (1 pad, 1 link)
            type Node subtype V4L flags 0
            device node name /dev/video2
	pad0: Sink
		<- "nxp,imx8mm-vpu-g2-dec-proc":1 [ENABLED,IMMUTABLE]



Media device information
------------------------
driver          hantro-vpu
model           hantro-vpu
serial          
bus info        platform: hantro-vpu
hw revision     0x0
driver version  5.15.0

Device topology
- entity 1: nxp,imx8mm-vpu-h1-enc-source (1 pad, 1 link)
            type Node subtype V4L flags 0
            device node name /dev/video3
	pad0: Source
		-> "nxp,imx8mm-vpu-h1-enc-proc":0 [ENABLED,IMMUTABLE]

- entity 3: nxp,imx8mm-vpu-h1-enc-proc (2 pads, 2 links)
            type Node subtype Unknown flags 0
	pad0: Sink
		<- "nxp,imx8mm-vpu-h1-enc-source":0 [ENABLED,IMMUTABLE]
	pad1: Source
		-> "nxp,imx8mm-vpu-h1-enc-sink":0 [ENABLED,IMMUTABLE]

- entity 6: nxp,imx8mm-vpu-h1-enc-sink (1 pad, 1 link)
            type Node subtype V4L flags 0
            device node name /dev/video3
	pad0: Sink
		<- "nxp,imx8mm-vpu-h1-enc-proc":1 [ENABLED,IMMUTABLE]

This is an RFC because I don't have functional video on my system yet,
and I'm hoping there might be people who do and can help test this.
I have only tested this far enough to see they enumerate and appear
as /dev/videoX and /dev/mediaX devices.

I am also curious to know if/what gstreamer plugins are necessary.  In
NXP's custom kernel, there are IMX-specific plugins, and I was hoping there
would be more generic plugins that I can use to test.  I am hoping some
of the linux-media experts might chime in on how to best test.

Lastly, I didn't update any device tree binding YAML files, because
I know there have been some discussions about the power domains on the
imx8mq, and I wasn't sure if the imx8mm should get a separate YAML file
or if the existing one for te imx8mq should just be modified.

This will likely require the following series in order to apply correctly:
https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=576407

Adam Ford (5):
  media: hantro: Add support for i.MX8M Mini
  arm64: dts: imx8mm:  Enable VPU-G1 and VPU-G2
  media: hantro: Rename ROCKCHIP_VPU_ENC_FMT to HANTRO_VPU_ENC_FMT
  media: hantro: Add H1 encoder support on i.MX8M Mini
  arm64: dts: imx8mm:  Enable Hantro H1 Encoder

 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  61 ++++++++
 drivers/staging/media/hantro/hantro_drv.c     |   3 +
 drivers/staging/media/hantro/hantro_hw.h      |  19 ++-
 drivers/staging/media/hantro/imx8m_vpu_hw.c   | 143 ++++++++++++++++++
 .../staging/media/hantro/rockchip_vpu_hw.c    |  26 ++--
 5 files changed, 231 insertions(+), 21 deletions(-)

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

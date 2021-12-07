Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADE8CC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Dec 2021 01:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QBvM1EyDwfW51XFIsfERpmlm90laVF+QGYPT2Q3X5cg=; b=0KE1f7HOrrHqsM
	9nCD9xneABrTpUcJ1Z+5Ip+MjgTj/JaDfsgMrNocVp5pE6kOfSp6g9/2Bubz/PAVslavnigfyvCxQ
	54JpaeCxnFPDXs1bFdZlFvTq2TJoOxIqGYOOdaaeI4g4UmX/06BRbidyaWGBe+IX1QQJjmL8ALEP3
	c7xK7DMsujSChpOwDkSoXSn1prRCxZE5+ePa2iGFNNTGGy6oSrx06OPGfU6TTdFFJlHxhSlUGkClT
	27tUgAPE7mwSU6Vs0JyqGStef+iLha+ONoVq73ZtmPGer26OOsPH3D8Kg0+6HHfrbaHBzmL42RWv7
	0iHz8Q9ZMLjweqIA8K1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muPh8-006eFY-JT; Tue, 07 Dec 2021 01:55:02 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muPh5-006eDK-TR; Tue, 07 Dec 2021 01:55:01 +0000
Received: by mail-io1-xd36.google.com with SMTP id b187so15174993iof.11;
 Mon, 06 Dec 2021 17:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GG9IZeKUXqHbwgRlEUez+S6LOG7iNmAE27aQpf7wARQ=;
 b=WqIK77xBg4jom+nkZAVdSaO+QIg13np6F3MKrEpOJxlgBj0edb47bwPLekDQTHcKeK
 FA6d4WHrbDFppB6kaDqVZOMsV1vBjPQVh+b4LV0tRsPi9oMulqUiJH5AW3HVYjxnKDGs
 uiJfjNrUOd9TGOE79/VgAXaRCZsG4oJoFZvJtzTzigoTIhct5DRYBLL89/UYpa3oWGnb
 2cRrKUPPdp9rsOuSJ89vNpJXKg8+bnCPY4SW7GDNgMJ+6s5AeDatpN1Qz0elwnESIzuU
 dL9ubYC0HXa/RCrG9fznbfdPuUPwHGAkPD0ahJB7VYnU5Yo6PtQwfb/ObYmEDfcGR4lg
 +VQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GG9IZeKUXqHbwgRlEUez+S6LOG7iNmAE27aQpf7wARQ=;
 b=B36dHAayQOw2NV5Y7TPMKQklhJdTM4efN4WvZTT9vMq2BZR+L13ofSAQoNNC/L91ql
 IkujfnTIHauwvF7SeBGb6qdNkJ65o8zfMs0J07CUXBM/+xoplTcVwt7kS0jqCUhow1Yk
 OCnkpIeItZEcX6cMBEggK/l6/0h+ORbjjE73HTsJjEJqIL735NuZl70GZCH5Dzka3I/A
 yBY1YCUhgXOwS0pVZ3BOeB5kHRNwC1/ktzh8gFc2dev49zh1gUreAuV0qeXOE7rrwFw5
 mTwYXBJH8nMj5ege3kYbTNarFLOt2Fa6Ixw6VwPNYOxtJXCX4jM4NuLBI7BasAdbMuyQ
 I5qA==
X-Gm-Message-State: AOAM531JqEAsRfxz/nURVy9FadApELEgHfCCfgd/2PUD9QPWWUzGVXWL
 FIY6ciPCldq99x2/bL6JC4w=
X-Google-Smtp-Source: ABdhPJxXzleMgy7efHrDCU1qKOzpEcVeClDkZTXS6ODGap4b87zAOAQznzyyx/BOUpKMQ3mjTanv4w==
X-Received: by 2002:a6b:c881:: with SMTP id y123mr36840733iof.53.1638842098503; 
 Mon, 06 Dec 2021 17:54:58 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6db8:c9e4:6f6d:f38e])
 by smtp.gmail.com with ESMTPSA id j21sm8623639ila.6.2021.12.06.17.54.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Dec 2021 17:54:58 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: cphealy@gmail.com, benjamin.gaignard@collabora.com, hverkuil@xs4all.nl,
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
Subject: [RFC V2 0/6] media: Hantro: Split iMX8MQ VPU into G1 and G2 with
 blk-ctrl support
Date: Mon,  6 Dec 2021 19:54:39 -0600
Message-Id: <20211207015446.1250854-1-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_175459_989690_ADFB4CD2 
X-CRM114-Status: GOOD (  16.89  )
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

Currently, the VPU in the i.MQ8MQ is appearing as one codec, but in
reality, it's two IP blocks called G1 and G2.  There is initialization
code in VPU code to pull some clocks, resets and other features which
has been integrated into the vpu-blk-ctrl for the i.MX8M Mini and a
similar method can be used to make the VPU codec's operate as 
stand-alone cores without having to know the details of each other
or the quirks unique to the i.MX8MQ, so the remaining code can be
left more generic.

This series was started by Lucas Stach with one by Benjamin Gaignard.
Most patches have been modified slightly by me.  It's in an RFC state
because I wasn't sure how to best handle the signatures and wasn't sure
if I could base it off the branch I did.

Since the g-streamer and media trees are in a constant state of
change, this series is based on

git://linuxtv.org/hverkuil/media_tree.git for-v5.17e

The downstream code from NXP shows the G1 and G2 clocks running
at 600MHz, but between the TRM and the datasheet, there is some
discrepancy.  Because the NXP reference code used 600MHz, that is
what was chosen here.  Users who need to adjust their G1 and G2
clocks can do so in their board files.

Fluster Results:

./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
Ran 90/135 tests successfully               in 61.966 secs

./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
Ran 55/61 tests successfully               in 7.660 secs


./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
Ran 144/303 tests successfully               in 162.665 secs

Changes log:

V2:  Make vpu-blk-ctrl enable G2 clock when enabling fuses.
     Remove syscon from device tree and binding example
     Added modified nxp,imx8mq-vpu.yaml from Benjamin Gaignard 

Adam Ford (2):
  media: hantro: split i.MX8MQ G1 and G2 code
  arm64: dts: imx8mq: Split i.MX8MQ G1 and G2 with vpu-blk-ctrl

Benjamin Gaignard (1):
  dt-bindings: media: nxp,imx8mq-vpu: Update the bindings for G2 support

Lucas Stach (3):
  dt-bindings: power: imx8mq: add defines for VPU blk-ctrl domains
  dt-bindings: soc: add binding for i.MX8MQ VPU blk-ctrl
  soc: imx: imx8m-blk-ctrl: add i.MX8MQ VPU blk-ctrl

 .../bindings/media/nxp,imx8mq-vpu.yaml        |  58 +++++----
 .../soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml      |  71 +++++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  69 ++++++----
 drivers/soc/imx/imx8m-blk-ctrl.c              |  68 +++++++++-
 drivers/staging/media/hantro/hantro_drv.c     |   4 +-
 drivers/staging/media/hantro/hantro_hw.h      |   2 +-
 drivers/staging/media/hantro/imx8m_vpu_hw.c   | 119 +++---------------
 include/dt-bindings/power/imx8mq-power.h      |   3 +
 8 files changed, 237 insertions(+), 157 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml


base-commit: d1888b0bfd2ddef2e8a81505ffa200b92cc32e0c
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

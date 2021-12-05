Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67DB9C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Dec 2021 18:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LdRMbA6hnZdhVfL1QqKnwuHCsk8+a8cV/HZv+ZV0s64=; b=EmUMUHVFJAOtAR
	B7C8ziQtcqOpijQoJISLe6W6SwbwhN9WZywXbXjSc+318GI/TsZ3vBOvMkjiSOALLlatfnfxVxqjw
	0r2N+oQbyIEf0az6QCI/fVLp62+JJTpcmIwMY4XDFpHqlid9o4iY2TMojYmS3AP/qJWUl8apW7Xde
	Xp4JJxQmPmZ77BRXkbbxksDxt5OOiFTHzC1zt91AngbNrwJXnxPAOYPOJoln+ot6EsmrbG/QnBtoq
	/KsaHg2CwyhdVjdljdo5L2qsfOJOtZbSoRXFAVRTwHnVHrOwcU3qIR/5KZB8zKBKCjLQ4WaJIW5yh
	jpNYflG/+Q9sz/bhIBNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mtw4G-001piw-NJ; Sun, 05 Dec 2021 18:16:56 +0000
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mtw3w-001pXY-LY; Sun, 05 Dec 2021 18:16:37 +0000
Received: by mail-il1-x12d.google.com with SMTP id i9so8108204ilu.1;
 Sun, 05 Dec 2021 10:16:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b7hPh5mvYUUQHhkNNfoyCMD5i8ZznhnbU9nW0aRlESc=;
 b=cmpP6hAnfSA5CEdGDnS04nX/ONCTYoYT50LViDGS8fK2PSD/NeynRzFthz1B5u+skM
 QjWeeDp39fs2dDsVddhPiqzf0Ur3P+3mDHVo/sBOf+K6lPmwwTik7Y99N9AQeAeva9Vt
 1RY3TxyDPVOcIVmxDbjDROtrZPB3ejjY09s/hC7cK6QtZ54dXzohEcN7U9M5KcR+DTCX
 G1T8bmkQG+IoL+IiKoVbpe5XsnuzXFBcgrCakoO44sd1U6O9YSf/jHVLBe0P/C64BU0D
 ysxHUI+y5+mY7uoVfCrQIEukijEybRXcTo5NsE7ooj1maicuFdbGVmqkBm75/WLg4SD/
 Wvig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b7hPh5mvYUUQHhkNNfoyCMD5i8ZznhnbU9nW0aRlESc=;
 b=55rE197PxBrw9yzepvyMjtrNMCFm7vYcZrUTaifLpco+5TXrdQop/9Dmv8k7r8Y77k
 KDsqthWP1DziPfCwR3if9HbBnm8hhxscdkcn/MZ+oP2490DbRFroO85Sx81RF8bwuy28
 9FoEo4Uu0S93qAY5S49i8lAP/CmYyFjnSpwdsyDz5R6dT4owmU/1JaceE6i9ToT8DueD
 HtxuEO5vJGw58U4YaU/C/u5eWknjnW95rrT7yGTFhGhTVD7MaZghgmVVwsx2y7zZGeBv
 twpxlZnsDsFSktE9n3PiQYS8mcGoeUv0MVUWwnwmMmVhGnW3v3lx3QT1oUw/DmjoRW/V
 gcrQ==
X-Gm-Message-State: AOAM531af+wi8UJojjxn2VnRFfh3mwWW0Pi6tMYkIt4Qqy8Al6YOUUy1
 0Hs/ePqdEtr1lbsSmwOLsoA=
X-Google-Smtp-Source: ABdhPJyHMiqyQNSp4p0YcCTauDSHb7YDwtcIhgnq+pwoSX0gBorVeEiMc6bRja2+eWJlJbWpI6vdiQ==
X-Received: by 2002:a05:6e02:1a08:: with SMTP id
 s8mr6025833ild.158.1638728195036; 
 Sun, 05 Dec 2021 10:16:35 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:9ea0:bb99:b16a:6159])
 by smtp.gmail.com with ESMTPSA id z12sm5808164ilu.27.2021.12.05.10.16.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Dec 2021 10:16:34 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: benjamin.gaignard@collabora.com, cphealy@gmail.com, nicolas@ndufresne.ca,
 Adam Ford <aford173@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Subject: [RFC 0/5] Split iMX8MQ Hantro VPU into G1 and G2 with blk-ctrl support
Date: Sun,  5 Dec 2021 12:16:13 -0600
Message-Id: <20211205181618.1041699-1-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211205_101636_728557_4AC7BB0A 
X-CRM114-Status: GOOD (  14.70  )
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

Currently, the VPU in the i.MQ8MQ is appearing as one codec, but in reality, it's
two IP blocks called G1 and G2.  There is initialization code in VPU code to
pull some clocks, resets and other features which has been integrated into
the vpu-blk-ctrl for the i.MX8M Mini and a similar method can be used to make
the VPU codec's operate as stand-alone cores without having to know the details
of each other or the quirks unique to the i.MX8MQ, so the remaining code can be
left more generic.

This series was started by Lucas Stach, and picked up by me so some patches have
his s-o-b and mine where I might have changed a few minor items.  It's in an RFC state
because the G2 VP9 operations appear to hang, but the parent code from which I started doesn't
appear to show VP9 support, and it looks like it should.

since the g-streamer and media trees are in a constant state of change, this series is based on
git://linuxtv.org/hverkuil/media_tree.git for-v5.17e

Adam Ford (2):
  media: hantro: split i.MX8MQ G1 and G2 code
  arm64: dts: imx8mq: Split i.MX8MQ G1 and G2 with vpu-blk-ctrl

Lucas Stach (3):
  dt-bindings: power: imx8mq: add defines for VPU blk-ctrl domains
  dt-bindings: soc: add binding for i.MX8MQ VPU blk-ctrl
  soc: imx: imx8m-blk-ctrl: add i.MX8MQ VPU blk-ctrl

 .../soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml      |  71 +++++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  69 ++++++----
 drivers/soc/imx/imx8m-blk-ctrl.c              |  67 ++++++++++
 drivers/staging/media/hantro/hantro_drv.c     |   4 +-
 drivers/staging/media/hantro/hantro_hw.h      |   2 +-
 drivers/staging/media/hantro/imx8m_vpu_hw.c   | 119 +++---------------
 include/dt-bindings/power/imx8mq-power.h      |   3 +
 7 files changed, 205 insertions(+), 130 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=unwu=CX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C9DC433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 15:37:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B020208DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 15:37:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qpB7sdym";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="rIT6fPG0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6B020208DB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rQUoA/1Yh7/4JeC+pfTjjFk3r0Emv7gwHy4OFhpHIS0=; b=qpB7sdym8cOX9lz1OaGL6VHSSw
	+yYIsuIvtON3D24TfEfE2htOJcuJXmUfs9C/qruLrz2+LOZMbuhOIPjJy2nC2k7w7Wm/idaDjgdu5
	Jsj9XI26cfbz5F3hESuHxUOMs8pgGjCaOkUnaF/itFHt8PxlwL73Vjb2h2JiHSYijeBPinDV75q60
	+VJsnFJhE8ONrE8Ox1aliSyGIW3c6uJMsz083hYZt5lbvHgXd2kKdpmf31V/c2JO99PJFmsYpMArZ
	vXSauW9M8qsaGZcyg3IEBbqSYFCQgEpX2L2eA70wDYU/hK/Wam6sOzwtoJMN4oMXR/933hWK6obcp
	pt7l3ScQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHqXL-0003ha-IN; Mon, 14 Sep 2020 15:36:59 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHqXJ-0003g7-An
 for linux-rockchip@lists.infradead.org; Mon, 14 Sep 2020 15:36:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id z19so12941350pfn.8
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Sep 2020 08:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=6q7i1vFYqLUwUAtKuDxJ6b5BKTAudtrFWnMfyX/GKhI=;
 b=rIT6fPG08h6nM/zFg2Me+yUnCjp9Mt+6npG+rTfK+5rCuH7QXj1sssSPo+KyrjnFmN
 JEddG6Ad8HEsjzRub0r1Hty4dhy6DtFX4fZyD3CZOgOxJN3peCa/5vZKf0l+IKWogM5t
 8BON2mSa+ojx4xK/ZXyQW9c1nV85UA+5aXjqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6q7i1vFYqLUwUAtKuDxJ6b5BKTAudtrFWnMfyX/GKhI=;
 b=swVfg8AEa0Z5cKWoC3/c1VxtUOw4jUKL2nLvXVgkvGCHyaJWZjX+tRmz3pgfwPyFOS
 8Y0v4P/Mxdl7e15UT9F57lXvHSIgeT1F7lu22MTIFn9o5pRJtSW40bciu1HQqFF2QIft
 C/5fQ6v6vDRW08U8wJ96Wt/XIDiuyHl4fitDu506jTMGmWNuFKaOIZwog0k2vkqNZVgZ
 rsOha8BTMs6Zr4hbUV2YV3OQQfUwcsYXT5JCPmLtrwbUAREf/nTk2y3w/6nCX0q15NQ1
 LHeL0Th7cdrW/9IUrKYTjcrVbVVPCcsWgPA1TMZp5sm8r45QxifY+6qXph2kJcXzTzDo
 XruA==
X-Gm-Message-State: AOAM5303O0/4/rU9adQIYaOP2MtBaahyRgotQ4rm8DALGsk6o6aewB4a
 K18LfOrUVwWIsaIhsEaklYhS/Q==
X-Google-Smtp-Source: ABdhPJxEU03xp38WRwHhFNflyi3Jnsg6tJburofcamG4aHVvVnTHDpF1XPuze3SQvgggBGcxj8TF0w==
X-Received: by 2002:a17:902:6bc1:b029:d0:cbe1:e706 with SMTP id
 m1-20020a1709026bc1b02900d0cbe1e706mr15192779plt.20.1600097813641; 
 Mon, 14 Sep 2020 08:36:53 -0700 (PDT)
Received: from localhost.localdomain ([124.123.169.115])
 by smtp.gmail.com with ESMTPSA id ml20sm9711026pjb.20.2020.09.14.08.36.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 08:36:52 -0700 (PDT)
From: Suniel Mahesh <sunil@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v2 0/7] rockchip: Add Engicam PX30.Core support
Date: Mon, 14 Sep 2020 21:06:27 +0530
Message-Id: <20200914153634.18121-1-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_113657_667202_6CD78DDF 
X-CRM114-Status: GOOD (  11.12  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, jagan@amarulasolutions.com,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

PX30.Core needs to mount on top of Engicam baseboards for creating
complete platform boards.

Possible baseboards are,
- EDIMM2.2 Starter Kit
- C.TOUCH 2.0 10.1" Open Frame

Right now boot support is working via Rockchip miniloader, will
update to U-Boot TPL once the ddr supported.

Note: dts patches are in Linux mailing-list.

Earlier patch series is at:
https://patchwork.ozlabs.org/project/uboot/cover/20200724105119.13123-1-jagan@amarulasolutions.com/

Jagan Teki (6):
  arm64: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
  rockchip: px30: Add EVB_PX30 Kconfig help
  rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
  arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
  rockchip: Add Engicam PX30.Core C.TOUCH 2.0
  doc: rockchip: Document Rockchip miniloader flashing

Michael Trimarchi (1):
  arm64: dts: rockchip: Add Engicam PX30.Core SOM

 arch/arm/dts/Makefile                     |   2 +
 arch/arm/dts/px30-engicam-common.dtsi     |  39 ++++
 arch/arm/dts/px30-engicam-ctouch2.dtsi    |   8 +
 arch/arm/dts/px30-engicam-edimm2.2.dtsi   |   7 +
 arch/arm/dts/px30-px30-core-ctouch2.dts   |  22 ++
 arch/arm/dts/px30-px30-core-edimm2.2.dts  |  21 ++
 arch/arm/dts/px30-px30-core.dtsi          | 232 ++++++++++++++++++++++
 arch/arm/mach-rockchip/px30/Kconfig       |  18 ++
 board/rockchip/evb_px30/MAINTAINERS       |  12 ++
 configs/px30-core-ctouch2-px30_defconfig  | 108 ++++++++++
 configs/px30-core-edimm2.2-px30_defconfig | 108 ++++++++++
 doc/board/rockchip/rockchip.rst           |  40 +++-
 12 files changed, 616 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/px30-engicam-common.dtsi
 create mode 100644 arch/arm/dts/px30-engicam-ctouch2.dtsi
 create mode 100644 arch/arm/dts/px30-engicam-edimm2.2.dtsi
 create mode 100644 arch/arm/dts/px30-px30-core-ctouch2.dts
 create mode 100644 arch/arm/dts/px30-px30-core-edimm2.2.dts
 create mode 100644 arch/arm/dts/px30-px30-core.dtsi
 create mode 100644 configs/px30-core-ctouch2-px30_defconfig
 create mode 100644 configs/px30-core-edimm2.2-px30_defconfig

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

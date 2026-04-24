Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC591FED3F8
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Apr 2026 17:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bX9THAgF5o0YeGEbx7ddYXP1uksCCue7wqE/xuWfZLg=; b=d4EMXQrbSv53AU
	8L+SPLT6CpuU53Z21vvqpblQz1otfba6PAv5xAgw1cGsC1Mc50D6V2P1NUmzvAUvfhoWtrPpEDebg
	IznyyphpLdm2XuPS/REEA9nX12cBrcHrw2RN+46f8KSZ2H8EzwlpIov7Keamyd7qj/ncedCSajgxb
	TdZg6KgtNaYifpeLWyiRfbr8aswRuiSDnxDhmLEunlnwX1ggRlou0koqXrDSpvbo1/hsowKdNc6Af
	PK5zAlQy3J6XZM4LTIQR6yNg4TudOiivi9GH11lIGJybbyPP7ZqYTMthzbvAsnDkYp6paUMW0VQas
	bWf+uXS5JZTB9fop64RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGKoG-0000000Dc9n-0scr;
	Fri, 24 Apr 2026 17:59:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGKoC-0000000Dc8P-3M8x;
	Fri, 24 Apr 2026 17:59:22 +0000
Received: from neptunite.hamster-moth.ts.net (unknown [IPv6:2404:7a81:160:2100:5216:c7b6:205:5f59])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 285E5103F;
	Fri, 24 Apr 2026 19:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1777053456;
	bh=h5osORYQIcyPv6dVH/ARjSRhhP9JToHyEu3nT5rlBk0=;
	h=From:To:Cc:Subject:Date:From;
	b=KhQwLhzXPaYptJaIv+/qz3T0c6tAsMlmel4yHcrbu1yryp5RZY1KFHeOxAwPX7unF
	 Xr02Q1trChFFWXM1W6KLjtf3USySZsrIWZh0RkuZygx5AUuqbOAjo9TW+0mQJ2Tqbj
	 s2v0cu6gFtvwGCf7r5YjdIEh9w6baGhYzkwl1HrQ=
From: Paul Elder <paul.elder@ideasonboard.com>
To: laurent.pinchart@ideasonboard.com
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	michael.riesch@collabora.com,
	xuhf@rock-chips.com,
	stefan.klug@ideasonboard.com,
	linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/5] media: rockchip: rkisp2: Add driver for ISP on Rk3588
Date: Sat, 25 Apr 2026 02:58:45 +0900
Message-ID: <20260424175853.638202-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260424_105921_057002_81C16D77 
X-CRM114-Status: GOOD (  13.52  )
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

Hello everyone!

This patch series adds a new rkisp2 driver that aims to support all
Rockchip 2.x and 3.x series ISPs. Here we add support for the version on
the RK3588, which as far as I'm aware is a 3.0.

Patches 1 and 2 add dt bindings and dt nodes; patches 3~5 add the actual
driver.

All my discussion points/questions/progress-reports are in patch 3.

The following two series [0] [1] will be helpful for testing the code,
as they enable the VICAP module to work on the RK3588. I've tested this
on the Orange Pi CM5 Base with an imx219. I have a branch here [2] for
convenience. A libcamera branch will be coming soon too!

[0] https://lore.kernel.org/all/20260216-rkcif-fixes-v2-0-ee40931fe0ff@collabora.com/
[1] https://lore.kernel.org/all/20250430-rk3588-vicap-v3-0-e38e428868cc@collabora.com/
[2] https://git.ideasonboard.com/epaul/linux/src/branch/epaul/v7.0/rk3588/rkisp2/upstream

Paul Elder (3):
  media: dt-bindings: Add rockchip rkisp2 bindings
  media: rkisp2: Add parameters output video node
  media: rkisp2: Add statistics capture video node

Xu Hongfei (2):
  arm64: dts: rockchip: add ISP nodes to rk3588
  media: rockchip: rkisp2: Add rkisp2 driver

 .../bindings/media/rockchip-isp2.yaml         |  127 +
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   60 +
 drivers/media/platform/rockchip/Kconfig       |    1 +
 drivers/media/platform/rockchip/Makefile      |    1 +
 .../media/platform/rockchip/rkisp2/Kconfig    |   19 +
 .../media/platform/rockchip/rkisp2/Makefile   |   13 +
 .../platform/rockchip/rkisp2/rkisp2-capture.c | 1979 ++++++++++
 .../platform/rockchip/rkisp2/rkisp2-common.c  |  180 +
 .../platform/rockchip/rkisp2/rkisp2-common.h  |  565 +++
 .../platform/rockchip/rkisp2/rkisp2-debug.c   |  236 ++
 .../platform/rockchip/rkisp2/rkisp2-dev.c     |  376 ++
 .../platform/rockchip/rkisp2/rkisp2-dmarx.c   |  687 ++++
 .../platform/rockchip/rkisp2/rkisp2-isp.c     |  917 +++++
 .../platform/rockchip/rkisp2/rkisp2-params.c  | 1013 +++++
 .../rockchip/rkisp2/rkisp2-regs-v2x.h         | 2625 +++++++++++++
 .../rockchip/rkisp2/rkisp2-regs-v3x.h         | 3427 +++++++++++++++++
 .../platform/rockchip/rkisp2/rkisp2-regs.h    | 1736 +++++++++
 .../platform/rockchip/rkisp2/rkisp2-stats.c   |  482 +++
 drivers/media/v4l2-core/v4l2-ioctl.c          |    2 +
 include/uapi/linux/rkisp1-config.h            |    1 +
 include/uapi/linux/rkisp2-config.h            |  565 +++
 include/uapi/linux/videodev2.h                |    4 +
 22 files changed, 15016 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-isp2.yaml
 create mode 100644 drivers/media/platform/rockchip/rkisp2/Kconfig
 create mode 100644 drivers/media/platform/rockchip/rkisp2/Makefile
 create mode 100644 drivers/media/platform/rockchip/rkisp2/rkisp2-capture.c
 create mode 100644 drivers/media/platform/rockchip/rkisp2/rkisp2-common.c
 create mode 100644 drivers/media/platform/rockchip/rkisp2/rkisp2-common.h
 create mode 100644 drivers/media/platform/rockchip/rkisp2/rkisp2-debug.c
 create mode 100644 drivers/media/platform/rockchip/rkisp2/rkisp2-dev.c
 create mode 100644 drivers/media/platform/rockchip/rkisp2/rkisp2-dmarx.c
 create mode 100644 drivers/media/platform/rockchip/rkisp2/rkisp2-isp.c
 create mode 100644 drivers/media/platform/rockchip/rkisp2/rkisp2-params.c
 create mode 100644 drivers/media/platform/rockchip/rkisp2/rkisp2-regs-v2x.h
 create mode 100644 drivers/media/platform/rockchip/rkisp2/rkisp2-regs-v3x.h
 create mode 100644 drivers/media/platform/rockchip/rkisp2/rkisp2-regs.h
 create mode 100644 drivers/media/platform/rockchip/rkisp2/rkisp2-stats.c
 create mode 100644 include/uapi/linux/rkisp2-config.h

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

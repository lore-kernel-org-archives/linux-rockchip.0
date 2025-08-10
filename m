Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B620CA0EC0
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 23:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Uyo1LUUtjQFI3qPJmOY1Tz3rh6UTCYUk4cSS7vNLVGs=; b=UyP7orJWZ7lnEn
	BrqgZQPUU1ue90iwj1iqZmA4MORx1pNgYWW5q3Czyz1DeRUcYa1hCZ692zYPIpN+mo22tttsgCBIb
	pCfo5sXAZMEAK7ybl5w8YqT+7nRLbTPPuvwxJGDI6ufPjiri6nFqJ0Aam/FT6xrBwnaj9fWaIoaYl
	hoybiYTGe+Fty/5czLVzCPBJDyisMUZsa9KH9Aj79sJy1GHnXfsR5D2Jof+mJDa3yHHeLCttXT79t
	XzQKcH5zCCbaGIB6L3TRteCeyTKoEX9zUtPDD2qRF980WN8s6OTeG+0PEG5weyRU+WsKiyMGXk4O6
	MjKCrMl0M/ORzVMYFZeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulF1T-000000069ms-3I2b;
	Sun, 10 Aug 2025 23:00:15 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulDso-000000064IZ-09lc
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Aug 2025 21:47:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1754862433;
 bh=49DthfWY2VK6fQCJl8DvFJwoiYjXnSFyByoGc0X5E44=;
 b=E1hdCBMvPAjSpvGXW4NQI6gnPfgnNu22BhWkGGGpVJnDdvq5W9K84pR2L2IHudNFYUiKWQsVa
 aBpcVFPqInWGmtk0xzXWxcuF0IjFRvfX+t31lWOnm3iIAyL0xTx3/09rh3MgCSKVvhwgHC2FugP
 6B2mUWRsuFMTOjKMrtdFUkhyhUvrqU03cA5oxcJLqpAkZvh17DwJ05kwwb/1h6ZEnNDUL14kMjt
 Nq8OUECE1y+AyyX0sEXP5h6jNybBlHCBPT+Mp2ldV7c+6SwJfcFrSkzqOpx5ZKPc5AT+8+M9m6u
 Uo6EG/UCx43IgAqUYpdm9BwxgP3IIqN9y6ls/TdkJCBA==
X-Forward-Email-ID: 68990e4e797ab896277923d3
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.2.4
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Alex Bee <knaerzche@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/7] media: rkvdec: Add HEVC backend
Date: Sun, 10 Aug 2025 21:24:30 +0000
Message-ID: <20250810212454.3237486-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_144714_125831_5A50E801 
X-CRM114-Status: GOOD (  16.78  )
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

This series add a HEVC backend to the Rockchip Video Decoder driver.

With the dependent H.264 High 10 and 4:2:2 profile support series
finally merged there is finally time to send a v2 with minor changes and
a suggested code style fix of this series. v1 of this series has been
fully functional up until recent unstaging of the rkvdec driver.

A version of this HEVC backend has been in use by the LibreELEC distro
for the past 5+ years [1]. It was initially created based on a copy of
the H264 backend, unstable HEVC uAPI controls and a cabac table + scaling
matrix functions shamelessly copied 1:1 from the Rockchip mpp library.

It has since then been extended to use the stable HEVC uAPI controls and
improved opon e.g. to include support for rk3288 and fix decoding issues
by Alex Bee and Nicolas Dufresne.

The version submitted in this series is based on the code currently used
by the LibreELEC distro, excluding hard/soft reset, and with cabac table
and scaling matrix functions picked from Sebastian Fricke prior series
to add a HEVC backend [2].

Big thanks to Alex Bee, Nicolas Dufresne and Sebastian Fricke for making
this series possible!

Patch 1 add the new HEVC backend.
Patch 2-3 add variants support to the driver.
Patch 4 add support for a rk3288 variant.
Patch 5 add a rk3328 variant to work around hw quirks.
Patch 6-7 add device tree node for rk3288.

This was tested on a ROCK Pi 4 (RK3399) and Rock64 (RK3328):

  v4l2-compliance 1.30.1, 64 bits, 64-bit time_t
  ...
  Total for rkvdec device /dev/video1: 49, Succeeded: 49, Failed: 0, Warnings: 0

  Running test suite JCT-VC-HEVC_V1 with decoder FFmpeg-H.265-v4l2request
  ...
  Ran 137/147 tests successfully

  Running test suite JCT-VC-MV-HEVC with decoder FFmpeg-H.265-v4l2request
  ...
  Ran 9/9 tests successfully

And on a TinkerBoard (RK3288):

  v4l2-compliance 1.30.1, 32 bits, 32-bit time_t
  ...
  Total for rkvdec device /dev/video3: 49, Succeeded: 49, Failed: 0, Warnings: 0

  Running test suite JCT-VC-HEVC_V1 with decoder FFmpeg-H.265-v4l2request
  ...
  Ran 137/147 tests successfully

  Running test suite JCT-VC-MV-HEVC with decoder FFmpeg-H.265-v4l2request
  ...
  Ran 9/9 tests successfully

The WPP_x_ericsson tests from test suite JCT-VC-HEVC_V1 has been showing
a mix of both Success and/or Fail result for FFmpeg-H.265-v4l2request.

Full summary of fluster run can be found at [3].

Please note that there is a known issue with concurrent decoding,
decoding errors in one decode session may affect a separate session.
The only known mitigation to this is to pause decoding for some time
and/or do a full HW reset, something to handle in future series.

Changes in v2:
- Rabase after h264 high10/422 merge and unstaging of rkvdec driver
- Use new_value in transpose_and_flatten_matrices()
- Add NULL check for ctrl->new_elems in rkvdec_hevc_run_preamble()
- Set RKVDEC_WR_DDR_ALIGN_EN for RK3328
- Adjust code style in rkvdec_enum_coded_fmt_desc()
- Collect a-b tag
- Drop merged vdec node reg size patches
Link to v1: https://lore.kernel.org/linux-media/20231105233630.3927502-1-jonas@kwiboo.se

[1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/projects/Rockchip/patches/linux/default/linux-2000-v4l2-wip-rkvdec-hevc.patch
[2] https://lore.kernel.org/linux-media/20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com/
[3] https://gist.github.com/Kwiboo/bedf1f447b50921ffbe26cb99579582d

Alex Bee (4):
  media: rkvdec: Add variants support
  media: rkvdec: Add RK3288 variant
  media: rkvdec: Disable QoS for HEVC and VP9 on RK3328
  ARM: dts: rockchip: Add vdec node for RK3288

Jonas Karlman (3):
  media: rkvdec: Add HEVC backend
  media: rkvdec: Implement capability filtering
  media: dt-bindings: rockchip,vdec: Add RK3288 compatible

 .../bindings/media/rockchip,vdec.yaml         |    1 +
 arch/arm/boot/dts/rockchip/rk3288.dtsi        |   17 +-
 .../media/platform/rockchip/rkvdec/Makefile   |    2 +-
 .../rockchip/rkvdec/rkvdec-hevc-data.c        | 1848 +++++++++++++++++
 .../platform/rockchip/rkvdec/rkvdec-hevc.c    |  826 ++++++++
 .../platform/rockchip/rkvdec/rkvdec-regs.h    |    4 +
 .../platform/rockchip/rkvdec/rkvdec-vp9.c     |   10 +
 .../media/platform/rockchip/rkvdec/rkvdec.c   |  184 +-
 .../media/platform/rockchip/rkvdec/rkvdec.h   |   15 +
 9 files changed, 2886 insertions(+), 21 deletions(-)
 create mode 100644 drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-data.c
 create mode 100644 drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

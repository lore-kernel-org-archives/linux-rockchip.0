Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 269D1EA3C5E
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Apr 2026 13:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iazk/al3AP4txgF23MYHT/i+mb/EQFSqmEJ2ZZQbXD0=; b=4p4T8sdlY0I7mC
	Yy7Ejh13hBjvs7mTCDZSkaoZszTcVgBTdhC5V2wTU3YdOL3UHQQZS2Ho7o6Nk/E02/A5nHSEEwUk+
	WxsbyYNtzeap1MTXK9uF25DMeBn4WuD3zHdfvOBZYnAcb/s/hG2iu8u22qO/pxuvoziKUiWOWg5Mh
	j2L3Gw/c3MTAR5y+9wcUGMatZaPG2qw9eQExibx6ladFrUGQviaz7LhNEgaRZX9kDNrjAgdgEunzc
	Q46xyWvxVVG0J7dCi5rtf2lMikfwZDd+UIAaClXzt9EChiCc97EUW6HvWouH43fGUerd1EOm3vSaF
	ykPiCEucLc905B5dtMvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApnG-0000000AZys-2YzD;
	Thu, 09 Apr 2026 13:51:38 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wApnB-0000000AZx8-16bz;
	Thu, 09 Apr 2026 13:51:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1775742688;
	bh=zb8Kdcld56GkDD3eedBbJU1WAMrgjQXCYOIVVPIDCuE=;
	h=From:Subject:Date:To:Cc:From;
	b=i54P+b5JUflbk2iAP5O3PJHSnKjPJHg0+jrZX+sOPe8KoX9ChZlc8aZPy/TMgV8R0
	 Zhiv0TZpgVEx7/JYko257JDLmncVuXkQaPw7R7CEgTE6sUS14SFqSd6RFMl0Ud5F8y
	 QEeLDC36E2QOvH8JY8aMPIZhSRSXRmt0s/s1ZQ+Jl+Q9iWH+JVT/FNm3Hnsiz0owCv
	 +fuititxsucYcIDa0U2jFWQ4A+XYyzYrCI9mR0gM4PHLMedgYWTh+O2dnKFfdcW3/F
	 QfQmj7OSSdn5N30KlYVuCmdFpVrK3rAVJJIbInfibb6Faw1L+AlelbEF+a63svX2NH
	 GWyFnWPEawcHw==
Received: from [192.168.0.15] (unknown [100.64.0.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 47E1517E0CA9;
	Thu,  9 Apr 2026 15:51:27 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 0/7] media: rkvdec: Enable multi-core support
Date: Thu, 09 Apr 2026 09:50:35 -0400
Message-Id: <20260409-rkvdec-multicore-v1-0-62b316abf0f7@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMSQ6DMAxA0asgrxspCVPoVSoWkBhwy1A5gJAQd
 yfA8i3+38EjE3p4RzswruRpGgPUKwLbVWOLglwwaKkzmUgj+Lc6tGJY+pnsxCgKY2LlqlTJXEP
 I/owNbffyUz72S/1FO18fOI4TEu/+mnQAAAA=
X-Change-ID: 20260408-rkvdec-multicore-98831da51072
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Hans Verkuil <hverkuil+cisco@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: kernel@collabora.com, linux-media@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_065133_559768_756D9CF5 
X-CRM114-Status: GOOD (  17.22  )
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

Since the driver is used for decoding on rk3588 and that the SoC has
2 identical decoding cores, enable support for it.

Instead of exposing 2 v4l2 devices to userspace, the driver will only
expose one and handle the 2 cores transparently.

The 2 cores are able to work in parallel, but only contexts are
parallelized: 1 stream, that uses 1 context, will only be able to use
1 core as it usually needs previous frames already decoded to use as
reference frames.
To avoid complex scheduling, only different streams can use cores at the
same time.

To achieve this, the v4l2_m2m_buf_done_and_job_finish() had to be split
in a done and a finish part (still keeping the unsplit function for other
drivers). That allows the driver to get new jobs to run while the previous
one is still running.
The job_ready() callback is used to avoid scheduling multiple jobs from
the same context.

The IOMMU support is in a different commit, as it needed a bit more
thought to work correctly, but I'm wondering if it should be merged with
the multicore support commit.

A fix for the RCB (Row and Cols Buffer) size computation is also provided
as it was causing issues with some fluster tests.

Performance-wise, fluster doesn't seem to run much faster, but I tested
with an HEVC test video from Jellyfin and observed that frames start
dropping with 6 concurrent gstreamer instances, instead of 4 without
multi-core enabled.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
Detlev Casanova (7):
      media: v4l2-mem2mem: Add v4l2_m2m_buf_done_manual()
      media: v4l2-mem2mem: Remove WARN_ON() in v4l2_m2m_job_finish()
      media: rkvdec: Keep RCB to the correct size
      media: rkvdec: Remove unused need_reset
      media: rkvdec: Add multicore support
      media: rkvdec: Wait for all buffers before stop_streaming
      media: rkvdec: Add multicore IOMMU support

 .../media/platform/rockchip/rkvdec/rkvdec-h264.c   |  17 +-
 .../media/platform/rockchip/rkvdec/rkvdec-hevc.c   |  16 +-
 .../media/platform/rockchip/rkvdec/rkvdec-rcb.c    |  77 ++--
 .../media/platform/rockchip/rkvdec/rkvdec-rcb.h    |   8 +-
 .../platform/rockchip/rkvdec/rkvdec-vdpu381-h264.c |  24 +-
 .../platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c |  24 +-
 .../platform/rockchip/rkvdec/rkvdec-vdpu383-h264.c |  24 +-
 .../platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c |  26 +-
 .../media/platform/rockchip/rkvdec/rkvdec-vp9.c    |  27 +-
 drivers/media/platform/rockchip/rkvdec/rkvdec.c    | 482 +++++++++++++--------
 drivers/media/platform/rockchip/rkvdec/rkvdec.h    |  31 +-
 drivers/media/v4l2-core/v4l2-mem2mem.c             |  34 +-
 include/media/v4l2-mem2mem.h                       |  20 +
 13 files changed, 500 insertions(+), 310 deletions(-)
---
base-commit: 3036cd0d3328220a1858b1ab390be8b562774e8a
change-id: 20260408-rkvdec-multicore-98831da51072

Best regards,
--  
Detlev Casanova <detlev.casanova@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

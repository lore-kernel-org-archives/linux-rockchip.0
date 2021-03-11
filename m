Return-Path: <SRS0=iGaN=IJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45B43C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B092164E31
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B092164E31
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lfftnx/V1SSvyFnKV76kHckk0Q/UU2MHxmHR3W6zlOw=; b=aXDbTkA7vqKeb3NU5JaqORMzR/
	9g2Nu4fLJM8E0XI7BuAtKgB0JhduXSTmG3fS7Fm7m9bJL8lAotOwB9wnnYZO/w5FVTm0wXYOdh1yj
	91O1JzQjIc5vYDIkXghQ4uBZyWXy13Rp8SGStJjIf5mP0crKxBT8qXubqRiK0QI+M2kZl+XZUi8QR
	F0KXcMHPodcToQ2ATptwTIYZsFxwYPcwe03x6rFgeNA8ZbNvIzUEqgpi/DUTT5ke7vjC+HLO+PQwc
	ECrMDS/mY0BqHPfg1ZIBcTlqY1b44RWw+9lS0dfO7WZAS9COOKM6R0ou0Lw/Up2pJpqatt4ra5Hyi
	v86OqMgg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKNQz-009UDR-62; Thu, 11 Mar 2021 15:41:09 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKNQu-009UBN-7t
 for linux-rockchip@lists.infradead.org; Thu, 11 Mar 2021 15:41:07 +0000
Received: by mail-wr1-x432.google.com with SMTP id d15so2384280wrv.5
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Mar 2021 07:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q4dPzQoidf5vtocnR10xIvJiNylBWsI78KoL3BBU9vQ=;
 b=I+bAsulCdkt+lVCylDNKLobwxXzgSLuVltYeHq+F0SXZTNT1+Ol1lT2fq8F1tpy40D
 c2Iju/OcLhSXSaxISalcVRTgUt2Bm1hb2KTRtoIOvdNPgqYaoZkhDUqFM8ChzjkxU5Lb
 u1+vrIMYZJgtvAhCurjORzz6uTgeno2Ohg25IbE7il6TQ02YSFjc7FRPVDKgKOTVhlgc
 7gC9lvn/flsNmggOafASCfjJdzXv+aEOo3HoXvTewmNF6bEpLu/AjywVY27FD+fTtC00
 E16EPhfWQYKDCt2YdABfIQtOtjm69nTzMrgm2NI1jRVtbBTuDuZ4dnX6iUxmmy/cekBw
 5Awg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=q4dPzQoidf5vtocnR10xIvJiNylBWsI78KoL3BBU9vQ=;
 b=huLYYYOOULEcsmSVQHPdrERG7FWehSZUwGhx6HwvSEleZsweQppRFkEZaZ+SePnFTR
 LanOwsS702G2tey2ibIUWY3erZxTkDdEmIYFLKFpaVEKY5iPntiTNRn5F41B5TxDQuub
 zua0Ui+oaguh2/7pbb+maJuBsrss8CVqLoGy/IfMuJtNdq5XX0ugSQGeHBXaI5B2oUQy
 PoV/M0bDrW8RhXI3WS7Rw0k0MBFZG+zHrmXPDKmKszany6UqYRyH934D7hQUkmk3pChr
 9s5JIvKNKov1wma6EA9Y+xbQCbHv+JWvvzElZf8SAsNkW40n51QzwRZcqm4dJmUq0Kns
 O5zw==
X-Gm-Message-State: AOAM5326a0pllpwIMdSsGJGnYQcqbI9359XU8/DwNz2FMPhTpzSfg2vt
 1NTaa1NicMTo2EC2h/BX3SXSm6e515uI3Q==
X-Google-Smtp-Source: ABdhPJxU1HuvUtEcMRItxvCfrPrKwoGRw1pHQPExwdjuUkuMll+2Tmw5tpIE5jkSGL+KA66RYcqraw==
X-Received: by 2002:adf:cd8c:: with SMTP id q12mr9248759wrj.185.1615477263160; 
 Thu, 11 Mar 2021 07:41:03 -0800 (PST)
Received: from arch-x1c3.. ([2a00:5f00:102:0:b16d:9752:8f38:7d6b])
 by smtp.gmail.com with ESMTPSA id a17sm4008547wmj.9.2021.03.11.07.41.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 07:41:02 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v2 00/10] Microship SAMA5D4 VPU support et al
Date: Thu, 11 Mar 2021 15:40:45 +0000
Message-Id: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_154104_348440_A52F2B49 
X-CRM114-Status: GOOD (  14.75  )
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

Hi all

This series adds support for the Microchip SAMA5D4 VPU, which it based
on the Hantro G1.

The hardware can support up-to 1280x720 for each of the MPEG2, VP8 and
H264 codecs. There is only a single decoder and no encoders on the SoC.

The Hantro G1 post-processing is also enabled on the platform.

To minimise duplication, the series starts with a few small cleanups.


As you may have noticed, this is my first patches series to linux-media,
so any tips how to make this as smoother process are appreciated.


Changes in v2:
 - Add testing results in the cover letter (thanks Eze)
 - s/Atmel/Microchip/ through the series (thanks Nicolas)
 - Split defconfig change into separate commit (thanks Eze, Nicolas)
 - Added Reviewed-by and Fixes tags (thanks Philipp)
 - Split DT into separate commit, wrote binding document, fixup minor DT
   warnings (thanks Eze)
 - Rebased on top of 5.12-rc2, as per Linus' email to avoid 5.12-rc1
   https://lwn.net/Articles/848265/



Testing
-------

 - v4l-compliance

Command used:
  v4l2-compliance -m0

Output summary:

v4l2-compliance 1.21.0-4740, 32 bits, 32-bit time_t
v4l2-compliance SHA: f253495fa6de 2021-03-06 15:32:09

Compliance test for hantro-vpu device /dev/media0:

Total for hantro-vpu device /dev/media0: 8, Succeeded: 8, Failed: 0,
Warnings: 0

Compliance test for hantro-vpu device /dev/video0:

Total for hantro-vpu device /dev/video0: 46, Succeeded: 46, Failed: 0,
Warnings: 0


 - Post-processor testing

Command used:
  gst-launch-1.0 -v filesrc location=test.mp4  ! decodebin3 !
video/x-raw,format=YUY2 ! ...

Confirmed the VPU is used by observing the interrupts triggering, strace
showed extra v4l2 ioctls - VIDIOC_S_FMT(... V4L2_PIX_FMT_YUYV  ...)


 - MPEG2 testing, custom ffmpeg from
   https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-hwaccel-4.3

Command used:
  ffmpeg -hwaccel drm -i mpeg2.mpeg2 -f rawvideo -pix_fmt yuv420p out.raw

Confirmed the VPU is used by observing the interrupts triggering, strace
showed the v4l2 ioctls being used plus played back the resulting file.


 - VP8 testing, using fluster

Command used:
  fluster.py run -ts VP8-TEST-VECTORS -d GStreamer-VP8-V4L2SL-Gst1.0

Output summary:

Running test suite VP8-TEST-VECTORS with decoder GStreamer-VP8-V4L2SL-Gst1.0
Ran 61 tests in 103.273s

FAILED (failures=9, errors=2)


 - H264 testing, using fluster

Command used:
  fluster.py run -ts JVT-AVC_V1 -d GStreamer-H.264-V4L2SL-Gst1.0

Output summary:

Running test suite JVT-AVC_V1 with decoder GStreamer-H.264-V4L2SL-Gst1.0
Ran 135 tests in 420.444s

FAILED (failures=9, errors=55)


Looking forward to your feedback,
Emil


Emil Velikov (10):
  media: hantro: use G1_REG_INTERRUPT directly for the mpeg2
  media: hantro: imx: reuse MB_DIM define
  media: hantro: imx: remove duplicate dec_base init
  media: hantro: imx: remove unused include
  media: hantro: introduce hantro_g1.c for common API
  media: dt-bindings: Document SAMA5D4 VDEC bindings
  media: hantro: add initial SAMA5D4 support
  ARM: dts: sama5d4: enable Hantro G1 VDEC
  ARM: configs: at91: sama5: update with savedefconfig
  ARM: configs: at91: sama5: enable the Hantro G1 engine

 .../media/microchip,sama5d4-vdec.yaml         |  59 +++++++++
 arch/arm/boot/dts/sama5d4.dtsi                |   9 ++
 arch/arm/configs/sama5_defconfig              |  40 +++---
 drivers/staging/media/hantro/Kconfig          |  10 +-
 drivers/staging/media/hantro/Makefile         |   4 +
 drivers/staging/media/hantro/hantro_drv.c     |   3 +
 drivers/staging/media/hantro/hantro_g1.c      |  39 ++++++
 .../media/hantro/hantro_g1_mpeg2_dec.c        |   5 +-
 drivers/staging/media/hantro/hantro_hw.h      |   4 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  27 +---
 drivers/staging/media/hantro/rk3288_vpu_hw.c  |  36 +-----
 .../staging/media/hantro/sama5d4_vdec_hw.c    | 117 ++++++++++++++++++
 12 files changed, 274 insertions(+), 79 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/microchip,sama5d4-vdec.yaml
 create mode 100644 drivers/staging/media/hantro/hantro_g1.c
 create mode 100644 drivers/staging/media/hantro/sama5d4_vdec_hw.c

-- 
2.30.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

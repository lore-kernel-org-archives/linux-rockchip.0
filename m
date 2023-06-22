Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DCBEEB64D8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 14:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+AQ+ZRrwbM0bJVYzygeD050xAjFPyLL3ZUeDyVtYAOo=; b=ZQHaDwNc2dqPNG
	sVwAZiuVs6ZX+xLnnby/I01lMaTrDSBdAf3NCLnIVYdY+mPmvq8afye9nOEG7hJQKYrYq0ZzCew0v
	iLYHQ9S0DT6cLDK743NTXrtikO3GlcrW+Xrt9ZuVbeI/1TCiaPbJFwGOquIOAwZ3RpgB9zidfhwqL
	FCWx62S8pBDdgextEa8K84mGigvgV9MVXcDtR9v/g6TJlfUZAm75PwcBaNdRY9BvJUxwyNzS068nI
	0gzIV2yPu/iGnHyv7PpafwPXwf0uRr88yZeYOvNk7C5sIKFFvYdjVrd6Vq1wTYmttTDDQO3i04Rit
	AU+FMPTvIL0yNnU/7+ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCL65-000wHd-1M;
	Thu, 22 Jun 2023 14:15:41 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCK8O-000j7y-39;
	Thu, 22 Jun 2023 13:14:02 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:7d72:676c:e745:a6ef])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 411256607115;
	Thu, 22 Jun 2023 14:13:57 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1687439637;
	bh=7Bj5hAoh3Iuvgs44g1/kDJV9XKTUPPQFWhuUxH1CfxU=;
	h=From:To:Cc:Subject:Date:From;
	b=F/M4eSTFBa0RVdvd99Qfx5JodBeCZuvC5W+xcR2jfJ9AoPKorjPt4DR3Aom0jclX7
	 FOld3+gclSyEgJCEeZxnFr7DxjrvNjZSuM5JA+JEoVzLEZ10L9rxNHb4gDuWT7o7oL
	 1aXA2ccbTIZvNlNcCWQAhY2a/FgiXkmFhZZp1vHGUlK9CxDcI33Jh7u13bdfEXsoT2
	 YiSwiNniqrsZj9TjnZM9r6WDNMShGgadZI0PSMPFT17DwPmRsXnYNokP88lmzGB4MI
	 Xon5UQAYvyEJfN/ufvy+FqNaNus1SRDnaFK2nYpSgubd2ikSLAdz+i/wq7f2WUvHeg
	 tuMOaSBrPra+Q==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 00/11] Add DELETE_BUF ioctl
Date: Thu, 22 Jun 2023 15:13:38 +0200
Message-Id: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_061401_293938_346C64EF 
X-CRM114-Status: GOOD (  13.84  )
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

Unlike when resolution change on keyframes, dynamic resolution change
on inter frames doesn't allow to do a stream off/on sequence because
it is need to keep all previous references alive to decode inter frames.
This constraint have two main problems:
- more memory consumption.
- more buffers in use.
To solve these issue this series introduce DELETE_BUF ioctl and remove
the 32 buffers limit per queue.

VP9 conformance tests using fluster give a score of 210/305.
The 25 resize inter tests (vp90-2-21-resize_inter_* files) are ok
but require to use postprocessor.

Kernel branch is available here:
https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/commits/remove_vb2_queue_limit_v3

GStreamer branch to use DELETE_BUF ioctl and testing dynamic resolution
change is here:
https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/commits/VP9_drc

changes in version 3:
- Use Xarray API to store allocated video buffers.
- No module parameter to limit the number of buffer per queue.
- Use Xarray inside Verisilicon driver to store postprocessor buffers
  and remove VB2_MAX_FRAME limit.
- Allow Versilicon driver to change of resolution while streaming
- Various fixes the Verisilicon VP9 code to improve fluster score.
 
changes in version 2:
- Use a dynamic array and not a list to keep trace of allocated buffers.
  Not use IDR interface because it is marked as deprecated in kernel
  documentation.
- Add a module parameter to limit the number of buffer per queue.
- Add DELETE_BUF ioctl and m2m helpers.

Benjamin Gaignard (11):
  media: videobuf2: Access vb2_queue bufs array through helper functions
  media: videobuf2: Use Xarray instead of static buffers array
  media: videobuf2: Remove VB2_MAX_FRAME limit on buffer storage
  media: videobuf2: Stop define VB2_MAX_FRAME as global
  media: verisilicon: Refactor postprocessor to store more buffers
  media: verisilicon: Store chroma and motion vectors offset
  media: verisilicon: vp9: Use destination buffer height to compute
    chroma offset
  media: verisilicon: postproc: Fix down scale test
  media: verisilicon: vp9: Allow to change resolution while streaming
  media: v4l2: Add DELETE_BUF ioctl
  media: v4l2: Add mem2mem helpers for DELETE_BUF ioctl

 .../userspace-api/media/v4l/user-func.rst     |   1 +
 .../media/v4l/vidioc-delete-buf.rst           |  51 ++++
 .../media/common/videobuf2/videobuf2-core.c   | 275 ++++++++++++++----
 .../media/common/videobuf2/videobuf2-v4l2.c   |  34 ++-
 drivers/media/platform/amphion/vdec.c         |   1 +
 drivers/media/platform/amphion/vpu_dbg.c      |  22 +-
 .../platform/mediatek/jpeg/mtk_jpeg_core.c    |   6 +-
 .../vcodec/vdec/vdec_vp9_req_lat_if.c         |   4 +-
 drivers/media/platform/qcom/venus/hfi.h       |   2 +
 drivers/media/platform/st/sti/hva/hva-v4l2.c  |   4 +
 drivers/media/platform/verisilicon/hantro.h   |   8 +-
 .../platform/verisilicon/hantro_g2_vp9_dec.c  |  10 +-
 .../media/platform/verisilicon/hantro_hw.h    |   4 +-
 .../platform/verisilicon/hantro_postproc.c    | 114 +++++---
 .../media/platform/verisilicon/hantro_v4l2.c  |  37 +--
 drivers/media/test-drivers/vim2m.c            |   1 +
 drivers/media/test-drivers/visl/visl-dec.c    |  28 +-
 drivers/media/v4l2-core/v4l2-dev.c            |   1 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |  10 +
 drivers/media/v4l2-core/v4l2-mem2mem.c        |  20 ++
 .../staging/media/atomisp/pci/atomisp_ioctl.c |   2 +-
 drivers/staging/media/ipu3/ipu3-v4l2.c        |   2 +
 include/media/v4l2-ioctl.h                    |   4 +
 include/media/v4l2-mem2mem.h                  |  12 +
 include/media/videobuf2-core.h                |  16 +-
 include/media/videobuf2-v4l2.h                |  15 +-
 include/uapi/linux/videodev2.h                |   2 +
 27 files changed, 523 insertions(+), 163 deletions(-)
 create mode 100644 Documentation/userspace-api/media/v4l/vidioc-delete-buf.rst

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

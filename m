Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5614AC3DA70
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jul 2024 15:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mt4RC65SwPpX6Wu/gZiJNgEnYk/hwG/K77WObIyWnOI=; b=baPSyrzc2Ksewt
	jBo5Eov2rLdjNn+WZauxyUh+7SP7vwTWtsmiXnT8ymmj/DfeCwwsuFHYi6XVhlFF4H18WiBSCBEGq
	SZvdoHVaLNVCVJwCZSpNYe5CG5uyZ6EZgp3Eymd1kqCrxh2GwSeF/OLDBcM1CdQhnC2iOR4g/W/Sj
	MBlJ5Q8WAuKqFbEyi6IpP/HqzYazFet7c5RtdMw5PR9G8H4ijuSlWDw44F47M2K+psPxvbU2nH5Yp
	5SPvzWQJyNz7fdworsN+qF3TdOjpY4DUR/ztB+lcOfIOB1LFo8UfsmvkFOwDrTeMFTLvhbzf9weJ5
	EqOlez2fE4anHdYKm6Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVubY-00000009sS3-1mEp;
	Mon, 22 Jul 2024 15:05:36 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVubU-00000009sQO-0k2G
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Jul 2024 15:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721660729;
	bh=Q1hq1BqmmzXLyGaSkJtWC/+tCaQdpoOpOXqfqPFG/34=;
	h=From:To:Cc:Subject:Date:From;
	b=GQZpkDOBmVq0onkKV/Hiqb3KzRAEoXscvkKZnYwIgIx6C4+i1hDz/zw3kh4Rt+IYP
	 DufYTumrn90HK0m8whtTbWdPrWQTiM1wEoygG8Ljs8iHoNj8JCUFYt/q8oPgOlBm9c
	 Wg6Y1S1qeTNikAJWzBFFU+d7L9HR2CA+fTjCA6LmHlLOldOtW2ULrxzKWJz/lRmVbC
	 nN94xrlFQ08ZxxkwVdRKwzjPKCjwxSVRo7wgEwqIFDOWwS4aLCsSTBsSjamBgFPLvf
	 jl6DckYRwNPA8r2wiRcM+vfm4p9SRJwY1nEnxjj+ks6OCFMjb2F4eNriaMlP7QFsIn
	 SIxH0ZC7FWMkQ==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id CE927378001E;
	Mon, 22 Jul 2024 15:05:28 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v5 0/3]  Enumerate all pixels formats
Date: Mon, 22 Jul 2024 17:05:20 +0200
Message-ID: <20240722150523.149667-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_080532_365660_BAF19C9C 
X-CRM114-Status: GOOD (  11.45  )
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

The goal of this series is to help userspace applications, like Gstreamer
or Chromium, to categorize decoders and so avoid trying to use decoder
that can't do the require task because it won't support the needed pixel
format.
As example, in today implementation we need to simulate 10 bit header
control to know if the driver support 10 bits pixel formats. With this
new flag it will simpler for userspace applications know if driver
support 10 bit pixel formats and if it is supported by userspace.

An example of how it can be used in GStreamer to discover the
supported pixels formats for stateless decoders is available here:
https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/commits/v4l2codecs_enum_all_supported_formats?ref_type=heads

v4l2-compliance test of this flag:
https://gitlab.collabora.com/benjamin.gaignard/v4l-utils/-/tree/enum_all_formats?ref_type=heads

changes in version 5:
- Reset the proposal to follow Hans's advices
- Add new flag to be used with index field.
- Make vicodec and visl test driver use the new flag
- Doing the same for Verisilicon driver.

changes in version 4:
- Explicitly document that the new flags are targeting mem2mem devices.

changes in version 3:
- Add a flag to inform userspace application that driver
  as take care of the flag.

changes in version 2:
- Clarify documentation.
- Only keep V4L2_FMT_FLAG_ALL_FORMATS flag in ioctl.

Benjamin

Benjamin Gaignard (3):
  media: videodev2: Add flag to unconditionnaly enumerate pixels formats
  media: test-drivers: Use V4L2_FMT_FLAG_ENUM_ALL flag
  media: verisilicon: Use V4L2_FMT_FLAG_ENUM_ALL flag

 .../userspace-api/media/v4l/vidioc-enum-fmt.rst | 12 +++++++++++-
 .../media/videodev2.h.rst.exceptions            |  1 +
 .../media/platform/verisilicon/hantro_v4l2.c    | 17 ++++++++++++-----
 .../media/test-drivers/vicodec/vicodec-core.c   |  7 ++++---
 drivers/media/test-drivers/visl/visl-video.c    | 11 +++++++----
 include/uapi/linux/videodev2.h                  |  3 +++
 6 files changed, 38 insertions(+), 13 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

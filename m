Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFD35C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 09:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gRiwe22DRVKmgbe3AQOg7irZRn4zooOd8/R156dTjR0=; b=nL66HQcEpUsLmy
	5W2reNoemWyMVrTdQbh1wZSV6YHNV9xQOhs7HZ7Pebc6SxEbAtsYlHpVTj2fgTE1wrPFonW+2CrKH
	jdGmZ2BOFqzOwJ3c+fbhs7x1e+1BdIO1zsGOb8gwlA1UFCU0DShqO6KxmPYpbT0ztwnyrt+cZp6DD
	FIrrwytFPQmRIW4atlz4YSavB4hN7EqG5kR5CKu9BH6oYlGu1kI3PY1G8hFuuSm+tXCUR7tw6yo6S
	fLiiuP721dhTucrJybKiU7Q/973TM3IrQ/0omRhNenF8NT+v4KRHJb0fCdOV46qY/BxRcmY9vdT99
	lv8B+eOMbtxtvbfgk7Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5jh-00000000Wfi-1qEV;
	Wed, 31 Jul 2024 09:35:09 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ5jc-00000000Wcw-3wNW
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 09:35:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722418503;
	bh=522OCaLBepPZdA3Df4XfI5NOBNuvYEXSia6TXrN+dFU=;
	h=From:To:Cc:Subject:Date:From;
	b=UnGzK5hqrXdmznRjXEqGR4q3P3z5Achii6oZ9REBMQlRLqvJ+df1Put49CQFw/pFP
	 oj53J46dJDJpAkiQPkc6RH/3TVCwDcAwOnx8V64eXgyzz60HceXUPvGAPwlIvbkqV3
	 ztvJ+aMCjwRZE5g5UQFRh/bGKCSbhgaKO1BqjdZbPLOJRriXaDuUAzHjvzCkGvn4rW
	 xFUA+fPkmtRgcKK1r58zi9ikXq2NTGsbO8eeacbfTHCM6eT0Zlr0yA1Mo03TKDg8Fj
	 Av2QH0AYS8aVDzDEyfnakl+yNQRcc9Tq8zFhtNepfGGHCCwrnXk3TFpenLyqP9bVFO
	 bT7EOv3l3kfwg==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E879C3780BC9;
	Wed, 31 Jul 2024 09:35:02 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v6 0/3] Enumerate all pixels formats
Date: Wed, 31 Jul 2024 11:34:54 +0200
Message-ID: <20240731093457.29095-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_023505_291441_21AF4BA7 
X-CRM114-Status: GOOD (  12.44  )
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
https://gitlab.collabora.com/benjamin.gaignard/v4l-utils/-/commits/enum_all_formats_v2

change in version 6:
- Change flag name.
- Improve documentation.
- Improve visl driver to enumerate one more pixel format when the flag
  is used.

changes in version 5:
- Reset the proposal to follow Hans's advices
- Add new flag to be used with index field.
- Make vicodec and visl test driver use the new flag
- Doing the same for Verisilicon driver.
 
Benjamin Gaignard (3):
  media: videodev2: Add flag to unconditionally enumerate pixel formats
  media: test-drivers: Use V4L2_FMTDESC_FLAG_ENUM_ALL flag
  media: verisilicon: Use V4L2_FMTDESC_FLAG_ENUM_ALL flag

 .../media/v4l/vidioc-enum-fmt.rst             | 16 ++++++++++++++-
 .../media/videodev2.h.rst.exceptions          |  1 +
 .../media/platform/verisilicon/hantro_v4l2.c  | 18 ++++++++++++-----
 drivers/media/test-drivers/visl/visl-video.c  | 20 +++++++++++++++++--
 include/uapi/linux/videodev2.h                |  3 +++
 5 files changed, 50 insertions(+), 8 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

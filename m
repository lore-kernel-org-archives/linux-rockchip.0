Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8532C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 13:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BEHfrp17LLA753KUBDjkkLvC+rpK8nw5zLC1+fnI/Ns=; b=IdUhlAPJTi82fv
	UfyidUZHzP6JrTHHtEwJHJ5QsKmauZH/Jtcu+8GXCgUA3hNuder363353mPseWA13AfW7gdLcyl4P
	4DIRSZzXL2FCDZGPPc1JQDJwD6gyFnOxpO7VMtxfmCgutHGjt4aC7W1Q1YKLZBKGA6b4yUuPrTXji
	eBeCEmcJ08kI0tRawi5WrSyyp/PdGGwf6uSQeyg4QXllBuas4nEppncXirVNZkrGyMfxKpVMuGfEO
	MQX41ZbqWdHp/A3wAKhP9P7R0V1sKLPXhMxsnMTT/JGqbLUlMbEGTuO6C2LhRYsktSC7STBkQaoD2
	9Cs5Ky/8Oy7GFj88NjAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU4UY-0000000DrM0-220g;
	Wed, 17 Jul 2024 13:14:46 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU4US-0000000DrHC-06GB
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jul 2024 13:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721222076;
	bh=ZxsGe7FlMMOHR0L4WkeMkpRyIJyPnZ5MwpJxdqYRlY0=;
	h=From:To:Cc:Subject:Date:From;
	b=QrZdavHXQYY+Gw9MbeLg9slFUujfN2ORzzN2xVUmq33vxKZdxnOkbgexeZTspfj49
	 t7FmYrgUC5On+343Wj+D/ZogtEl9MyB+TZ5bxOWavZfgJcy7Sr8lhXpQ+SKuxk1aW5
	 mJ8vNRTzQorPq17QQnXv4gj4HpIDwmOa3qzrEb93fXKpjTMvqWxXFMBLoom21YRLIT
	 76kRWn/JxJRDKfuXp/l6zfcFsrAhMHYspzE9y6ysN4xzdiCI517EbNowgUQkNJLTb8
	 TOHeUCz9J9RwMe20RrYoJXAg7b4vPXePH7vjEc2qlwFmnQYivxj3Hx6fp4QxeE3Bps
	 Sv1rYTRQf2tzA==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 26C9D3780BC2;
	Wed, 17 Jul 2024 13:14:36 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 0/2] Enumerate all pixels formats
Date: Wed, 17 Jul 2024 15:14:28 +0200
Message-ID: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_061440_406113_7897DA99 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
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

The goal of this series is to let userland applications enumerate
all the supported pixels formats of a stateless decoder without
setting all the possible codec-dependent control.
That offer a simplest solution for applications to discover
supported pixels formats and possibly let them doing smarter
choice between stateless decoders.

An example of how it can be used in GStreamer to discover the
supported pixels formats for stateless decoder is available here:
https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/commits/v4l2codecs_enum_all_supported_formats?ref_type=heads

changes in version 4:
- Explicitly document that the new flags are targeting mem2mem devices.

changes in version 3:
- Add a flag to inform userspace application that driver
  as take care of the flag.

changes in version 2:
- Clarify documentation.
- Only keep V4L2_FMT_FLAG_ALL_FORMATS flag in ioctl.

Benjamin

Benjamin Gaignard (2):
  media: videodev2: Add flags to unconditionnaly enumerate pixels
    formats
  media: verisilicon: Use V4L2_FMT_FLAG_ENUM_ALL_FORMATS flag

 .../media/v4l/dev-stateless-decoder.rst          |  6 ++++++
 .../userspace-api/media/v4l/vidioc-enum-fmt.rst  | 11 +++++++++++
 .../media/videodev2.h.rst.exceptions             |  2 ++
 drivers/media/platform/verisilicon/hantro_v4l2.c | 16 +++++++++++++---
 drivers/media/v4l2-core/v4l2-ioctl.c             |  3 +++
 include/uapi/linux/videodev2.h                   |  2 ++
 6 files changed, 37 insertions(+), 3 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25070C3DA4D
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jul 2024 10:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0w5Lf2Jlzod7iMcMEyYV8GVEbX/qr0SadbfP2PEFXO4=; b=4VGk9AJWBHS5zC
	nBFB+WG92XHnOCFgyXqspNtPLCnqQrL2dqozNHta7bmSW7d0MkyaF5jMJFfzpbp+SAV/0ORa7xz1W
	bbxZQBIEO1Qr+cr5Du4f6VY3/fZYqUEfntHAImdE6EGOR8pSY+R8Ao+WZ2kI8uXD43cIZYhrGNmpG
	549XezRGK1r/n8aIXQvh7qTccogLfFWZho9P0s2Vj2OpyuA/ew822DYLDHBXqnLf4noTn7P+9lNFs
	YD9aPzC55t8IrxIHLn6ot0mwraE0vyEOesLKCfBRAGAf8/j6+ZNBNfCjyvwUxlJw8NhNHfNVsB2y5
	4TkEI4xzcUFhQ+PHAF6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSDXZ-0000000HJr6-0bxw;
	Fri, 12 Jul 2024 10:30:13 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSDXV-0000000HJoq-2L61
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jul 2024 10:30:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1720780206;
	bh=cDmQGuuHf/kwKcRClfuGl4sZkWM2wjBKoyC5NH+2HmY=;
	h=From:To:Cc:Subject:Date:From;
	b=SY8Fu3BYS77Lx1XaZ0/zSMnRW6T+uWcbWOdsEd8FGQlQ/D18Z6SiT9mTfRotZJyef
	 2xWT5+ThJXEyAe4kD/gn0e7GrUx/ttm/xJ9awJAZk9BKHCk5+8ojkoxSlVhSaOS3kj
	 0DB1W7IBNb4PjB6vVcpr5OQHlOcXdcPjoI1/zGJvs1Q1jsjzYZXvdFe8U5fqfXdTkI
	 jWYEzij6DPzybk6eKhfFkLGWebBxoZyc0MYLHBI2s0qE5ZxrccfjkBTzFHdhmVZNG1
	 +OlF/rkj+b+BCbRTom5FkDP3MtTYOJlXduLSbiA0UTEPFEW2k9KRYKBajfK0koBgES
	 6Gxd5QIrKdUqA==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0A92C378045F;
	Fri, 12 Jul 2024 10:30:06 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 0/2] Enumerate all pixels formats
Date: Fri, 12 Jul 2024 12:29:58 +0200
Message-ID: <20240712103000.16655-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240712_033009_914169_D9632D37 
X-CRM114-Status: UNSURE (   8.35  )
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
 .../userspace-api/media/v4l/vidioc-enum-fmt.rst  |  9 +++++++++
 .../media/videodev2.h.rst.exceptions             |  2 ++
 drivers/media/platform/verisilicon/hantro_v4l2.c | 16 +++++++++++++---
 drivers/media/v4l2-core/v4l2-ioctl.c             |  3 +++
 include/uapi/linux/videodev2.h                   |  2 ++
 6 files changed, 35 insertions(+), 3 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

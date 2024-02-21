Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FEA2C48BEB
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Feb 2024 17:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KQvH1M6b4COs9jBC4ZIyp01Rx3ySnqcDHnc/cUqeHes=; b=MQxkjCgtlKQpEE
	XhjmddvYm+llwkdF4Ro5dC6Bs4bdX3gdQ3dINQKqR6kpwk3SsoqchbbzBCqLDhBFax+MB4gqNDvNo
	YO1zoU0CmPN69fdERRbPLMNL065iQ2Z7L6g5XVHTGiliRj+uxTsZ1zEKqn8d1DmJ54liCjtXkBbaN
	qcsd7U+Ml4up/op2fIcp2wZCV8zo0a4ohwb99AF0YEe4aiqnRTyenoKrtfPH6oeqd3hU7KcbxWgQB
	p8UMeSOasehkfQDn4c95IrAVfjyXU3creQRC9MnZXGBrXTuG0ksD0GVHAIkxnCm4ApHdCluL2cSVI
	stEJ15gmhcZ0OaDi/+6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcpxl-00000001pWM-2NGL;
	Wed, 21 Feb 2024 17:00:53 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcovl-00000001a6S-0rGe
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Feb 2024 15:54:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1708530882;
	bh=jZucdOOz96VmEUErUF9LuSg3JBuTnd+d9rTWdPQVjys=;
	h=From:To:Cc:Subject:Date:From;
	b=XdK9UpwdeSelZb3MRsym1ENgeiTNQl8l2QnihXqg49Q0eVhrS+qEw5B5xiCQSEAbn
	 dgcbZY/aEipnZhmZTgPgliBMvNJzUCRPIkt7BC6bLrKpgQ+dgPjT/NGQmKpYaudMil
	 zDfYD/jknvqPUcOPN69/AUzInDY6R8JFiZo1MJJRE5SkO7Goe/4knzGsdilyzuJhtp
	 Bju+MHr+Qrg2VfsB+t2xvmM9AaFzW31BcYrqXKCin+UD4M1aWJmI9EHS+BW6l5zEVU
	 zQyRnMrCko/U2AxHnn5K+xntHBTxMJT34RvA7zUnl2I4MkMkSIMnztFiSRv24SyWBf
	 ppj0V6b528wPw==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5C1F83780629;
	Wed, 21 Feb 2024 15:54:41 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	hverkuil-cisco@xs4all.nl,
	nicolas@ndufresne.ca
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v20 0/9] Add REMOVE_BUF ioctl
Date: Wed, 21 Feb 2024 16:54:26 +0100
Message-Id: <20240221155435.100093-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_075445_474538_239E74D2 
X-CRM114-Status: GOOD (  11.44  )
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
To solve these issue this series introduce REMOVE_BUFS ioctl.

VP9 conformance tests using fluster give a score of 210/305.
The 24 of the 24 resize inter tests (vp90-2-21-resize_inter_* files) are ok
but require to use postprocessor.

Kernel branch is available here:
https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/commits/remove_vb2_queue_limit_v20

GStreamer branch to use DELETE_BUF ioctl and testing dynamic resolution
change is here:
https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/commits/VP9_drc

changes in version 20:
- Rename DELETE_BUFS into REMOVE_BUFS
- Change documention, structure and variables name to use 'remove'

changes in version 19:
- Fix typo in commit message.
- Fix ioctl domentation
- Rework q->is_busy patch following Hans's comments
- Change where DELETE_BUFS is enabled

Benjamin Gaignard (9):
  media: videobuf2: Update vb2_is_busy() logic
  videobuf2: Add min_reqbufs_allocation field to vb2_queue structure
  media: test-drivers: Set REQBUFS minimum number of buffers
  media: core: Rework how create_buf index returned value is computed
  media: core: Add bitmap manage bufs array entries
  media: core: Free range of buffers
  media: v4l2: Add REMOVE_BUFS ioctl
  media: v4l2: Add mem2mem helpers for REMOVE_BUFS ioctl
  media: verisilicon: Support removing buffers on capture queue

 .../userspace-api/media/v4l/user-func.rst     |   1 +
 .../media/v4l/vidioc-remove-bufs.rst          |  82 +++++++
 .../media/v4l/vidioc-reqbufs.rst              |   1 +
 .../media/common/videobuf2/videobuf2-core.c   | 223 ++++++++++++------
 .../media/common/videobuf2/videobuf2-v4l2.c   |  28 ++-
 .../media/platform/verisilicon/hantro_v4l2.c  |   1 +
 .../media/test-drivers/vicodec/vicodec-core.c |   1 +
 drivers/media/test-drivers/vim2m.c            |   1 +
 .../media/test-drivers/vimc/vimc-capture.c    |   3 +-
 drivers/media/test-drivers/visl/visl-video.c  |   1 +
 drivers/media/test-drivers/vivid/vivid-core.c |   5 +-
 drivers/media/v4l2-core/v4l2-dev.c            |   3 +
 drivers/media/v4l2-core/v4l2-ioctl.c          |  32 +++
 drivers/media/v4l2-core/v4l2-mem2mem.c        |  10 +
 include/media/v4l2-ioctl.h                    |   4 +
 include/media/v4l2-mem2mem.h                  |   2 +
 include/media/videobuf2-core.h                |  52 +++-
 include/media/videobuf2-v4l2.h                |   2 +
 include/uapi/linux/videodev2.h                |  17 ++
 19 files changed, 383 insertions(+), 86 deletions(-)
 create mode 100644 Documentation/userspace-api/media/v4l/vidioc-remove-bufs.rst

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

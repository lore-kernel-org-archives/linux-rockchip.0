Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45F51C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 12:38:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 97C4261132
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 12:38:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 97C4261132
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wjGOVNllVrGNxsjzpYMIAht6UwKe/gWGEn2zEsyrn6o=; b=G52ll/b417vF34+49UkR2gTIwZ
	aXhgbVHu+9bPnx3818WPuLGGSlU6wDCVe5JFrh183vxi786J/WmJ0IeC6ql5Fc1HAHpOGlCo6odfu
	HmC/bmcz1G1F73UL4lo8Iqz9wlMZTQmi/4A3+ePozi6AFyeLioGtA8x9CMJL8fbPnn9kIz1IY+VpU
	Y8itzozkdnmBkAl14GSe/5HrIYCyqLEN86bjVt2oMuSaumK4mVdqTdwBARyFcA3luwAxTKzKb+kXu
	WGLzRQXvTQCyPOf0hrJQA0d99AYaeLtHTCghuA7C6bqycFKCSVu0NCFngZOlaP2105F6plrUV4Zc6
	2L/WI9Pg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leGnh-001DzG-OS; Wed, 05 May 2021 12:38:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leGne-001DyQ-Ap
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 12:38:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=OBPiqGi1B+MnNWe1uGJfdeHOCaajPCkz3p49Odud5b8=; b=zP66PsVZGCOpo9rFcyXGaCKRfP
 MvxP/q10yMKPwYgqzicD15BEABrB+W3k5jeSPXSIK34Fg8ELq3Z3YmpCXn/n4ZRgXekUhQV1TcS7L
 +8AbnZbhYiQe+WrqpWYRl9zFDrhZFEseKOxD7EjIGlSGSG+RXTpxRMpH2c8wNZjX3u8hjzokJoqXi
 /5U5Xk4ViArs+SUeTB3/EQmH6FHSetyZ/rxGMtiLmDCH0LUDCt5HmOQXtmVeDhXvOE4CRB4rgCR+6
 2Yrg4oeUnjmEwvZ47dRSAhdBIKbbx4QVFaG+lkKYVG+cjZJEWMEEH2qoY4MbIwyIrgCmoorvtxEVd
 mXKbIJPQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leGnb-004km3-5A
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 12:38:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 37BDA1F42E68
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, kernel@collabora.com
Subject: [RFCv2 0/3] vp9 v4l2 stateless uapi
Date: Wed,  5 May 2021 14:38:33 +0200
Message-Id: <20210505123836.9573-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_053843_478948_0DDE9092 
X-CRM114-Status: GOOD (  17.96  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Dear All,

This is a follow-up work for https://patchwork.linuxtv.org/project/linux-media/list/?series=5268
I addressed Hans's comments.

Changes:

v1..v2:
- improve documentation
- imrpove coding style
- factor out of common vp9 code into v4l2-vp9.c
- rename V4L2_CID_STATELESS_VP9_FRAME_DECODE_PARAMS into V4L2_CID_STATELESS_VP9_FRAME

This is still sent as an RFC because the works for adding the second driver (g2@imx8)
are ongoing.

The v1 was an RFC on stateless uapi for vp9 decoding with v4l2, which was based on
https://lkml.org/lkml/2020/11/2/1043, but had been substantially reworked. The important
change was that the v4l2 control used to pass boolean decoder probabilities had been made
unidirectional, and was renamed V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS.

In the original proposal from Boris, to queue a frame the userspace must fully dequeue
the previous one, which effectively results in a forced lockstep behavior and defeats
vb2's capability to enqueue multiple buffers. Such a design was a consequence of backward
probability updates being performed by the kernel driver (which has direct access to
appropriate counter values) but forward probability updates being coupled with compressed
header parsing performed by the userspace.

In vp9 the boolean decoder used to decode the bitstream needs certain parameters to work.
Those are probabilities, which change with each frame. After each frame is decoded it is
known how many times a given symbol occured in the frame, so the probabilities can be adapted.
This process is known as backward probabilities update. A next frame header can also contain
information which modifies probabilities resulting from backward update. The said modification
is called forward probabilities update. The data for backward update is generated by the decoder
hardware, while the data for forward update is prepared by reading the compressed frame header.
The natural place to parse something is userspace, while the natural place to access
hardware-provided counters is the kernel. Such responsibilties assignment was used in the
original work.

To overcome the lockstep, we moved forward probability updates to the kernel, while leaving
parsing them in userspace. This way the v4l2 control which is used to pass the probs becomes
unidirectional (user->kernel) and the userspace can keep parsing and enqueueing succeeding
frames.

If a particular driver parses the compressed header and does backward probability updates
on its own then V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS does not need to be used.

This series adds vp9 uapi in proper locations, which means it is a proper, "official" uapi,
as opposed to staging uapi which was proposed in the above mentioned lkml thread.

The series adds vp9 support to rkvdec driver.

Rebased onto media_tree, requires this patch:

https://patchwork.linuxtv.org/project/linux-media/patch/20210505122347.7576-2-andrzej.p@collabora.com/

You can test rkvdec implementation with gstreamer, please clone gstreamer and then
use these branches for -base and -bad:

https://gitlab.freedesktop.org/dwlsalmeida/gst-plugins-base/-/tree/vp9-upstream-padding
https://gitlab.freedesktop.org/dwlsalmeida/gst-plugins-bad/-/tree/vp9-upstream

Example invocation:

without format conversion:

gst-launch-1.0 filesrc location=Big_Buck_Bunny_1080_10s_1MB.webm ! parsebin ! v4l2slvp9dec ! filesink location=out.yuv

with format conversion to match vpxdec output:

gst-launch-1.0 filesrc location=Big_Buck_Bunny_1080_10s_1MB.webm ! parsebin ! v4l2slvp9dec ! videoconvert ! video/x-raw,format=I420 ! filesink location=out.yuv

I kindly ask for your comments.

Andrzej Pietrasiewicz (2):
  media: uapi: Add VP9 stateless decoder controls
  media: uapi: Add VP9 v4l2 library

Boris Brezillon (1):
  media: rkvdec: Add the VP9 backend

 .../userspace-api/media/v4l/biblio.rst        |   10 +
 .../media/v4l/ext-ctrls-codec-stateless.rst   |  547 +++++
 .../media/v4l/pixfmt-compressed.rst           |   15 +
 .../media/v4l/vidioc-g-ext-ctrls.rst          |    8 +
 .../media/v4l/vidioc-queryctrl.rst            |   12 +
 .../media/videodev2.h.rst.exceptions          |    2 +
 drivers/media/v4l2-core/Kconfig               |    4 +
 drivers/media/v4l2-core/Makefile              |    1 +
 drivers/media/v4l2-core/v4l2-ctrls.c          |  229 +++
 drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
 drivers/media/v4l2-core/v4l2-vp9.c            | 1831 +++++++++++++++++
 drivers/staging/media/rkvdec/Kconfig          |    1 +
 drivers/staging/media/rkvdec/Makefile         |    2 +-
 drivers/staging/media/rkvdec/rkvdec-vp9.c     | 1084 ++++++++++
 drivers/staging/media/rkvdec/rkvdec.c         |   52 +-
 drivers/staging/media/rkvdec/rkvdec.h         |    6 +
 include/media/v4l2-ctrls.h                    |    4 +
 include/media/v4l2-vp9.h                      |  168 ++
 include/uapi/linux/v4l2-controls.h            |  425 ++++
 include/uapi/linux/videodev2.h                |    6 +
 20 files changed, 4403 insertions(+), 5 deletions(-)
 create mode 100644 drivers/media/v4l2-core/v4l2-vp9.c
 create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
 create mode 100644 include/media/v4l2-vp9.h


base-commit: 0b276e470a4d43e1365d3eb53c608a3d208cabd4
prerequisite-patch-id: d148a5f17bbb03e88c3744a166d1dd2c6088ce7d
prerequisite-patch-id: 1817161060ef577cff00a8f7892eb9cbbfa2f327
prerequisite-patch-id: 5d4236886083146c81f4234d5f97acf6fd6dd4e4
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

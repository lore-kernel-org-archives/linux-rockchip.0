Return-Path: <SRS0=PFct=EI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4489C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 19:04:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2534021556
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 19:04:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="z8W69Ei/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2534021556
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5GxRS9JbGtsdk07AUEuFUoV06K7lF3WtLserlZu8LyA=; b=z8W69Ei/XdDDM3btguvU5zzXyw
	wd1RXDkajl84BI2tgbw7M96HzwaWUUZWhq9PlPTEuoJIDLtITgMumCD6Y8PA8tcXugVXkuwez4FaO
	8ILhGoTdPdBIe+gOZh0nyyGzRNYo8yBd52EcRK10kbETg1mkihSgcQn6tUDBoVk52Mr9tqxV7OPKN
	Bz10gRhwxFcs+KjcZ5V/AjLR0Td6BO3ae2/GP5JPQt29fBb3Ryr2o2ZqMO2iRnsY5Ir7lhrULPd/y
	86jLIxGhZT0HHrz5Ll1I3pno7Hf8P1tGlSyjVlBJOFdqpFuIVGuRAKTG7cWNDXQB7xNTJPCMjjSnz
	XzBBf+RQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZf8B-0005I0-6D; Mon, 02 Nov 2020 19:04:40 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZf87-0005Ee-3i
 for linux-rockchip@lists.infradead.org; Mon, 02 Nov 2020 19:04:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id E09A11F44E0E
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v5 0/3] media: rkvdec: Add a VP9 backend
Date: Mon,  2 Nov 2020 21:05:48 +0200
Message-Id: <20201102190551.1223389-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201102_140435_253321_99996250 
X-CRM114-Status: GOOD (  15.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Dear all,

This is v5 of the series adding VP9 profile 0 decoding to rkvdec.

All feedback from v4 should be addressed, there's just one thing I did
not address: ref_frame_sign_biases in the uAPI. The userspace tool I'm
using [1] apparently doesn't need it or the default hwreg value for it
is capable of decoding the bitstreams I used on the driver, so I don't
really have a use-case to change and test that. :)

Considering the uAPI is a work in progress and expected to be modified,
ref_frame_sign_biases can be added later with others which might be
required to enable more functionality (for eg profiles >= 1).

Series tested on rk3399 and applies on next-20201030.

[1] https://github.com/Kwiboo/FFmpeg/tree/v4l2-request-hwaccel-4.2.2-rkvdec

Changelog
---------

v5:

* Drop unnecessary OUTPUT buffer payload set in .buf_prepare.
* Drop obsolete .per_request ctrl flag
* Added new vp9 ctrls to v4l2_ctrl_ptr
* Fix pahole detected padding issues
* Send userspace an error if it tries to reconfigure decode resolution
  as v4l2 or rkvdec-vp9 backend do not support dynamic res changes yet
* Allow frame ctx probability tables to be non-mandatory so users can
  set them directly during frame decoding in cases where no defaults
  have been set previously (eg. ffmpeg vp9 backend)
* Some comments and documentation clarifications
* Minor checkpatch fixes

v4:

* Drop color_space field from the VP9 interface.
  V4L2 API should be used for it.
* Clarified Segment-ID comments.
* Moved motion vector probabilities to a separate
  struct.

v3:

* Fix documentation issues found by Hans.
* Fix smatch detected issues as pointed out by Hans.
* Added patch to fix wrong bytesused set on .buf_prepare.

v2:

* Documentation style issues pointed out by Nicolas internally.
* s/VP9_PROFILE_MAX/V4L2_VP9_PROFILE_MAX/
* Fix wrong kfree(ctx).
* constify a couple structs on rkvdec-vp9.c


Boris Brezillon (2):
  media: uapi: Add VP9 stateless decoder controls
  media: rkvdec: Add the VP9 backend

Ezequiel Garcia (1):
  media: rkvdec: Fix .buf_prepare

 .../userspace-api/media/v4l/biblio.rst        |   10 +
 .../media/v4l/ext-ctrls-codec.rst             |  550 ++++++
 drivers/media/v4l2-core/v4l2-ctrls.c          |  239 +++
 drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
 drivers/staging/media/rkvdec/Makefile         |    2 +-
 drivers/staging/media/rkvdec/rkvdec-vp9.c     | 1577 +++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec.c         |   72 +-
 drivers/staging/media/rkvdec/rkvdec.h         |    6 +
 include/media/v4l2-ctrls.h                    |    5 +
 include/media/vp9-ctrls.h                     |  486 +++++
 10 files changed, 2942 insertions(+), 6 deletions(-)
 create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
 create mode 100644 include/media/vp9-ctrls.h

-- 
2.29.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

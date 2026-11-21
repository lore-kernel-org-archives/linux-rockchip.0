Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72AC606A333
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 10:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=boKyckRH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=arj99+25
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=FHwUSgRpJpRetiiGQwaBhGcOCDVSCQA+xLTAXKP4cnY=; b=boKyckRHwkdjFi/FTZOcSVqCTs
	bVbfzBWsUdfo1MLFPx4iLlFeHMmlLeZsx3BLGX0QQI2wB8QSEaWcRPkYuZ54WEBOZ5Ut+NF6qGX/b
	43tFOrmzZ6tw5IhMqmyhug8SLzq5/Yohu/uHC/yYS7Pk60Id2XXMdQYDHjNJLLgkcAmBqTnJM8xqo
	MWdQSSCzS4t/r2gbfaLPWOLzMXqsMbNzJSC6xydCJJT4Jo+RcANLAWeJm6BxgG6JwxyxUZrK5Pk3X
	jE0ciW8JYZ08CCR5OVi6mTMTgV5WkBi2K+P+/UorpzZ76FsKyKqc7WGD/MocH4y+GK8VYCYUtweEi
	ZN1f1A6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUi3e-0000000H0od-18jR;
	Sat, 21 Nov 2026 10:10:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUi3c-0000000H0nz-2E9K;
	Sat, 21 Nov 2026 10:10:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F1F4E422C1;
	Sat, 21 Nov 2026 10:10:55 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1795255855;
	b=VzB1wbo1fzs8uqngQFoQznXSxQax5TIKI/5TNOKc003nRAk0Vu4cyK7FE+EPkuPsru3o
	 HsXQM14pLZc8JAW40ZyP2mVXzcjQYRBg7Hd5AdOZ5KDeNHC7omOT/CsU/85urEu8XzxvD
	 6GZ7wUiwdhpUtAMnz8GlrZY29WknLEiztNoUvnCJtFazSaA+GPSleH6u0rewV0L2DO52Y
	 98elYDrTQFeF51X0WlpjNo3sJ7aax/vwvv2evmrMxidEvwUqUm6vB9oGbPv964wxhreQk
	 zwcfCpQ8kG2cg5TEteU317DnGqz7h2StyhsXtJbWb6CTCBnyoniNAYGzJt66zI4LFAA==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1795255855;
	h=DKIM-Signature:Received:From:Subject:Date:Message-Id:MIME-Version:
	 Content-Type:Content-Transfer-Encoding:X-B4-Tracking:X-Change-ID:To:
	 Cc:X-Mailer:X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To;
	bh=IIspwo2srDAgw6Zku7N7PSU7cSi+6A61O7rw6GUa4oE=;
	b=LKwVnQQqlUjSK1PLMAQ0OZlboIokIGu06Hx0kc8+mAdmIqu7FFzj4MSpi6U6ozTQd6zd
	 9iGe/p3A2BH50iAWkFKMqaAVeoLqBmVQ5QVl96Kw0DF/FoI+NcS+INhzsavJSVVEokm2x
	 3OgGxo6Awh/cBHI0a27ZVwhZJA/3SE+aZ/blkP4MTEZi1U3J7BnRjRxmEcSp1x/Kmtn9T
	 mHNlrUK42Y0Ts1WmQHOM0JDkiwX2CXBIblIL73w7XmUePhLodRUDViJkG0hRorroHWujB
	 sAvgXdpXq708oIQzJD6/fkiTiTxBdIFPSW0ViWegMQXBWFpOxAJrYcUDJXcsCmxsn8Q==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 3579C1F000C6;
	Sat, 21 Nov 2026 10:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795255855;
	bh=IIspwo2srDAgw6Zku7N7PSU7cSi+6A61O7rw6GUa4oE=;
	h=From:Subject:Date:To:Cc:Reply-To;
	b=arj99+25thR8Uy/RlzKZ7gcvWsbo39XYPNJ2Sxj+mvXdQKKfy5rkWxYQanRfMJOAa
	 3xoUENnQ7JqlhuzK6R9x6jiJbED6hx3vcwzKoUjJ6L/DduywbOxRvcEOgfs52UIiyr
	 nGXPZtv8XRilbk5EErtRhTAw5ttWZBVwW5xf3MFi3gScyp4j1sZP+JKzHxEOz0cg55
	 kkSAogOMQhHaGyFsm6+N5TBGsVr6AMM00VtP5Yj+BYF/nJ5N9UD2LY+OfY0oPT6Yzo
	 brawzwsP1tC5iitFim3S/C5IEGwfkpW9pzsTMdhlbn69d5gEONvadWU9mxUiO+cl1e
	 VebdUylZIVnug==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 8F5E34BBCC;
	Sat, 21 Nov 2026 10:10:54 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Subject: [PATCH v2 0/3] media: stateless MPEG-1 decoding, cedrus support
Date: Sat, 21 Nov 2026 10:10:53 +0000
Message-Id: <20261121-b4-cedrus-mpeg1-v2-0-95e4decf03fa@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/2WNwQ6CQAxEf4X0bA3bgEFP/ofh0F0K1IiQXSAaw
 r+7YDx5fJmZNwsE8SoBLskCXmYN2j8j0CEB1/KzEdQqMlBKJ2NMhjZDJ5WfAnaDNAYLyyw5k0g
 tEFeDl1pfu/FWfjlM9i5u3DRbo9Uw9v69X85m6/3s5z/7bDBF5txyTKkgujYd6+Po+g7KdV0/F
 Z6c38AAAAA=
X-Change-ID: 20261114-b4-cedrus-mpeg1-8baae5a2eefe
To: Hans Verkuil <hverkuil@kernel.org>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Maxime Ripard <mripard@kernel.org>, 
 Paul Kocialkowski <paulk@sys-base.io>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Jonas Karlman <jonas@kwiboo.se>, linux-media@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, 
 =?utf-8?q?Christian_Stefan_K=C3=B6v=C3=A9r-Draxl?= <ckoever@outlook.de>, 
 Arun Iyengar <aiyengar1990@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795255854; l=2157;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=c8hzlJkZuLFpk0HXOIpIk4bSfcFbpshbq1yBgA3J7r0=;
 b=LcFu5wkFyucpntRx5PrzCvk4fzFu+NMsGPmObo7KQBpVfbYaPwV/xiInc2sKUN4I2dKFMRkAZ
 m2W4TKocSF3AOTDWA+bzGhttSrMnytz4clUqk27dfahoDV/PtgBa4w5
X-Developer-Key: i=aiyengar1990@gmail.com; a=ed25519;
 pk=zXpRgUTrhaFe6jLyPqbBy3ccfkj04w0g2690Wv3mg+0=
X-Endpoint-Received: by B4 Relay for aiyengar1990@gmail.com/20261110 with
 auth_id=1480
X-Original-From: Arun Iyengar <aiyengar1990@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: aiyengar1990@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Builds on Jernej Skrabec's cedrus work; tested with an FFmpeg hwaccel
on top of Jonas Karlman's V4L2 request API series (FFmpeg PR 20847).

MPEG-1 decoded as MPEG-2 is wrong: the mismatch control differs, and
MPEG-1 has full pel motion vectors and D-pictures. Patch 1 adds
V4L2_MPEG2_SEQ_FLAG_MPEG1 and two full pel picture flags to the MPEG-2
controls and allows D-pictures; patch 2 makes hantro reject them
(compile tested only). Patch 3 implements them in cedrus.

Tested on H616 only, on media-committers next: MPEG-2, H.264 and H.265
decode bit-exact against FFmpeg software decoding. MPEG-1 streams with
B-pictures and full pel vectors differ from FFmpeg (-idct faani) by at
most 2 in I-, P- and B-pictures; FFmpeg's own IDCTs differ by up to 3
on the same streams. The full pel reference needs an FFmpeg fix for
skipped B macroblocks. MPEG-1 D-pictures are bit-exact against a
computed DC reference; stock v4l2-compliance 49 of 49.

Developed with Claude (Anthropic) as a coding assistant, which wrote
the code and the commit messages. I reviewed and tested them as
described above.

Changes in v2:
- Drop V4L2_PIX_FMT_MPEG1_SLICE: cedrus selects MPEG-1 from
  V4L2_MPEG2_SEQ_FLAG_MPEG1 alone (Nicolas)
- hantro reject in its own patch
- Link to v1: https://lore.kernel.org/r/20261119-b4-cedrus-mpeg1-v1-0-aa5ba1192822@gmail.com

---
Arun Iyengar (3):
      media: uapi: mpeg2: add MPEG-1 flags
      media: verisilicon: reject MPEG-1 controls
      media: cedrus: mpeg2: decode MPEG-1

 .../media/v4l/ext-ctrls-codec-stateless.rst        | 34 ++++++++++++++++++++--
 drivers/media/platform/verisilicon/hantro_drv.c    | 12 ++++++++
 drivers/media/v4l2-core/v4l2-ctrls-core.c          |  1 +
 drivers/staging/media/sunxi/cedrus/cedrus.h        |  3 ++
 drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c  | 27 ++++++++++++++---
 include/uapi/linux/v4l2-controls.h                 |  3 ++
 6 files changed, 74 insertions(+), 6 deletions(-)
---
base-commit: ccf78740d63813c452c035b57d17a650492562fa
change-id: 20261114-b4-cedrus-mpeg1-8baae5a2eefe

Best regards,
--  
Arun Iyengar <aiyengar1990@gmail.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

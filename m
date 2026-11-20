Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F85060A2612
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 15:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AVkGHf5u;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=N59oeb/K
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=SgwayqTj3bNKHcgPpvx4eR6He3rNyn4iVtBnT+9BIus=; b=AVkGHf5ux8pizzyDksoBxwJOTW
	07nhjROyYtjeurq/r7KbF7cJ6t3REdtXD5BYJ7u3QLIg2HvjAQwjemye7UWKU/ZXPNewCzcolMtc8
	w0OgWguC5Yu/x1Ow8VzJuA8WFVbQA03Dz0tUUnqDLQJpWYWbXGKtghJswq50yseph5IrhR3ZSpP7F
	O+iuXwzyYXYeaUlvxVm7qHHDOB87uZlaMyN0It/6teteaChlDzUgEZo+qrpvT1KFh0vPA1XVJ9lCl
	FDKwA7aG/wxNzlGfsn81kHzm0M1ikoB7v0WPu58fQl7zlSjWD3pNmE3OQcitpHSUAC/ifQsyZlz7t
	401gjWag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJL-0000000FNBh-1pRh;
	Fri, 20 Nov 2026 15:13:59 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUQJG-0000000FN9y-18tr
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 15:13:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795187631;
	bh=lc7lSdZ0kvgi9PP7LqxFG+a4jIPdcDAHagfNuu8Jlfw=;
	h=From:To:Cc:Subject:Date:From;
	b=N59oeb/Kitj4/Q1/dqkrMkecZ9zz9QfopEsRaVZ/rJtCt5DxfYY4IKN4OrCoaRiMY
	 WDoaVyaW+xFbughkyXdBzOFJmcY4sfzLQCtiCUc4kByRGZkj4Clyl+GpMScCyyC1sl
	 LoiD4OFGn5V9HDEpGsXFzC8+6qy65seI9ZS8TN4CDMRbDtCUunVYKtkW26+6yabXr5
	 cLIzRjpwGFeEGjlJhkATBQMVU6coW2goyTlknBQOpxwDl1TlT1ZvTHxZQqxSHnAAWB
	 GzenhRhl+wRIJgxmJtHP6QiiOVg/gmFkUug9hlMJKU+MjfhyB3mb4BXL0yhl7a4T0A
	 zie2N6GgpKbwQ==
Received: from benjamin-XPS-13-9310 (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D849817E047C;
	Fri, 20 Nov 2026 16:13:50 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 0/7] media: verisilicon: simplify auxiliary buffers allocation
Date: Fri, 20 Nov 2026 16:13:38 +0100
Message-ID: <20261120151345.88802-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_071354_650123_A9E4F6F2 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Verisilicon stateless video decoder driver allocates lot of auxiliary
buffers to decode bitstreams. These allocations duplicate a lot of code.
This series add helpers functions to allocate and free auxiliary
buffers. This simplify the driver code and will allow to implement more
easly incoming feature like disentanglement data buffers from mv and rfc 
buffers or adding reference frame support for more codecs.

This series has been tested with fluster on IMX8MP for h264, hevc, vp8 
and vp9 codecs, and on rk3588 for av1.

This series depends of this one:
https://patchwork.linuxtv.org/project/linux-media/list/?series=34366

Regards,
Benjamin

changes in v2:
- rebase on top of media: verisilicon: Create AV1 helper library v7
- tag reviewed-by tag
- fix patch 1 and 7 commit messages

Benjamin Gaignard (7):
  media: verisilicon: Add helpers to allocate and free auxiliary buffers
  media: verisilicon: AV1: Use alloc/free helpers for auxiliary buffers
  media: verisilicon: h264: Use alloc/free helpers for auxiliary buffers
  media: verisilicon: hevc: Use alloc/free helpers for auxiliary buffers
  media: verisilicon: vp8: Use alloc/free helpers for auxiliary buffers
  media: verisilicon: vp9: Use alloc/free helpers for auxiliary buffers
  media: verisilicon: mpeg4: Use alloc/free helpers for auxiliary
    buffers

 drivers/media/platform/verisilicon/hantro.h   |   4 +
 .../media/platform/verisilicon/hantro_av1.c   | 177 ++++--------------
 .../media/platform/verisilicon/hantro_h264.c  |   9 +-
 .../media/platform/verisilicon/hantro_hevc.c  | 130 ++++---------
 .../media/platform/verisilicon/hantro_mpeg2.c |  17 +-
 .../platform/verisilicon/hantro_postproc.c    |  21 +--
 .../media/platform/verisilicon/hantro_v4l2.c  |  35 ++++
 .../media/platform/verisilicon/hantro_vp8.c   |  37 +---
 .../media/platform/verisilicon/hantro_vp9.c   |  37 ++--
 9 files changed, 139 insertions(+), 328 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

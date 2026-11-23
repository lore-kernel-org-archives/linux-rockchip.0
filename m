Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157DD606A331
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 09:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YshrVZa1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=ijmR6W82
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=xEPNLaTiOWIMNZtuDIk/XvGTP2k/qrvDPwS0ulM5i4g=; b=YshrVZa1fns9mXVKvDPYRGm+is
	YUQj3eh5P44yIJaCAioGwv9GiwrAxU5IhvYXU5ZzIlq7Q8C96wBBKychZD2kSqZfNsiXCcSoimXjL
	2R+ejYdkK6NR9uMYbxkiXxp4PLk64CWaA6sWZn4tv6V4LwpTGRmBWtQ8WJzOkyLd7/N0ZwOsN8zDU
	nlxyW74bmMkqT73Ekc1wEW3qSqVA6EQwcRLvObsi7jLxQdQsefpLJD/vLH6bfcqIU3+SGZwEBBKe7
	5J+pZtqiLnXtTd+S0HF20HaduEVCr0OhStgb5pze2oZ9EnUGiJwjxFgKIRs1/cKPGXWqWgI3NsUba
	r5wfb0uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQpV-00000002rHP-3Guy;
	Mon, 23 Nov 2026 09:59:21 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQpN-00000002rAT-03sf
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 09:59:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795427951;
	bh=hIu4Io13bboxqzPRv7r5Z8rpPIQv75yL07z2+l+m2IQ=;
	h=From:To:Cc:Subject:Date:From;
	b=ijmR6W82fP9Yo4I8xMkEtfnYQxbbL9bXqjKqZ7gxAUeSuPErflDUw/ff0DOWnsu+G
	 i8kxyup4CatGrpRmoFR5qG0uGmBquz3JLTER7lYRkSMSnf6elDeTNIfGs3g9H5QFJS
	 us0UM6pMLN0LYZm//DJTttu7HAq3vXmkbvBLtNJS6gOaMr6bH1ZnPnBih95IBtBer4
	 gB88dDHzcEsCG9Qzfli4qxjuVLsoaW65mW4GdyjQhZ7bGETvMnPsD7VRYthocryvw3
	 LxSGtZZMsCdXR5kHJTI7x809VtSvcY+EtJFd756Bpk92rEKQHC/d1v11ptDNwL6GDf
	 E0YXb6Keztkvg==
Received: from benjamin-XPS-13-9310.home (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D566717E00C4;
	Mon, 23 Nov 2026 10:59:10 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 0/7] media: verisilicon: simplify auxiliary buffers allocation
Date: Mon, 23 Nov 2026 10:58:58 +0100
Message-ID: <20261123095905.60622-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_015913_215817_BD7469E7 
X-CRM114-Status: UNSURE (   9.75  )
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

changes in v3:
- As suggested by Philipp do not mask hantro_allocate_aux_buf() returned
  value.
- In hantro_allocate_aux_buf() and hantro_free_aux_buf() only set vpu if
  ctx isn't NULL.

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
 .../media/platform/verisilicon/hantro_av1.c   | 191 +++++-------------
 .../media/platform/verisilicon/hantro_h264.c  |  13 +-
 .../media/platform/verisilicon/hantro_hevc.c  | 133 ++++--------
 .../media/platform/verisilicon/hantro_mpeg2.c |  19 +-
 .../platform/verisilicon/hantro_postproc.c    |  21 +-
 .../media/platform/verisilicon/hantro_v4l2.c  |  37 ++++
 .../media/platform/verisilicon/hantro_vp8.c   |  36 +---
 .../media/platform/verisilicon/hantro_vp9.c   |  42 ++--
 9 files changed, 169 insertions(+), 327 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

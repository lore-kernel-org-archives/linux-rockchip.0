Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687E9606A883
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 08:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=clH9MG/n;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ktmLE8v6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=tqbNtarXKuehXe+4GNQ3lJGRlp/FXVGgblOqcpGYdTQ=; b=clH9MG/nxkwK6/ZRVtcRD0KgdF
	IzSr/6r0LFBwXOPQ0bAJTutmUT4FvKXmRWCg/3R7pDEHhZSX0K1FKDLhgI4LamEeAS3+XXdKwyttz
	vPnRCReQrjWKO1MGd9ju8lmQbMvMgUZxGru79D9WNnlm4WsamQLNurxaS6CVcq4gl406eHjeTT+ZJ
	Qgyvmfch3xchPbZ0i5UIHE6mktEkwXnY/szFYoY+QK0mU1NYdRSoY/yuIrgYBOyRWktgyiKKgR89Y
	dUzUYh0ffGtefmJtXHBGJlKOWogUe0vZ7607y4y2jUPT+sybytlavtPv3k+zZbDacjspGqIDIy6Yi
	2qHGXRyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVm9-0000000HFVA-2uQO;
	Sun, 15 Nov 2026 08:39:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVm8-0000000HFUd-16rQ
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 08:39:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9E466411E1;
	Sun, 15 Nov 2026 08:39:47 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794731987;
	b=hgeT4rSJrfvcuuBDLhOdIafhnNnt8VqRzOnOadG4eBPvFdSi8g7fX9C5LYxdL9qe2VK5
	 Bie3HhP9E8Jqdw7R24zkDHgr8ID1uuB2b1HhFvUB+KyopgOVwhrx41GNsOLQnwfEyEdaH
	 73BelQgGsI5AMmqVPK5dJv9XDU6627fBBAwoJW/KvgCDGm3QYbgua9vUm0M7EWnAKlCO2
	 vXDo+yizpv/zQ4UoSaJ/SlY8jCRatDlhDnw92gYPOXTsqfIJaIyvu9pwKyeT6sdwe4D5/
	 xmQNj+U9NmP/DQzU+hgoRIbZ/OVDspyxmJp6OJkFjeRsuCTKTW/coy4bujN3HqL/ESQ==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794731987;
	h=DKIM-Signature:Received:From:Subject:Date:Message-Id:MIME-Version:
	 Content-Type:Content-Transfer-Encoding:X-B4-Tracking:X-Change-ID:To:
	 Cc:X-Mailer:X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To;
	bh=Ws4/1OWekV2GIMndfcjnMtK+0NiaXYDp8JwTOAVBfcc=;
	b=anR3PReuSgfqF1ZMkSb8uvMlY4X0jNvam6WvJ/a0cLRby9kUR6m5AV4qVpgEpPj5Lv68
	 3Iohsq0rHNHSNPGTn4p7bB5dQuZPWjyoqlp2eRZVmJAssmJeUVFJ5X3ZDIhroro//540z
	 jG+chJAEHvYqY13HjmatV3iCV1SqoPjRVJzog/QTkGTE79X+4VrOon7VBF6JA624sN1A4
	 VjHNu0KPjcCtIo0RpMR9Ax1SPKYxoU87YaVJVCQkmoxBA1TkS4OSAsyRCnitDrQ26/qkI
	 G7LFXwx13RfT1wV5fE9ojUHLdpgrlMu+AKNaWdoIjRp1k21yFhMly/FU2i4HWgOqI+g==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 011241F000C4;
	Sun, 15 Nov 2026 08:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794731987;
	bh=Ws4/1OWekV2GIMndfcjnMtK+0NiaXYDp8JwTOAVBfcc=;
	h=From:Subject:Date:To:Cc:Reply-To;
	b=ktmLE8v6EPy3nnzVEgF205RPmo+vRcXS3TffguDg9PMtecfb8CGavNUsex/ur5ojo
	 uOLonktkHCLViz4RORQhf6p5G6/yKAsnVSOgPDZAQezUQdNEwM1+/eCEtshAmJfjld
	 e04P69Mlk6qSs4aQTy0JIXqFV0A3/tXNPzdxryo8fCRyxPGVBHT2yTQegrSFYZCaus
	 M1JAF7lMvOQNWCaa5cfEr6FPUiTu56rgqbAy3LD4IolJiYDarReTsIRaN0My9QyFF2
	 E7BhjHMi8sviSdybNi6QWyegGk/SyBl3B87I0J9YQyzGojcK9vkcWr0036+ghFcqL8
	 qPx7cm8ETjJ5A==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 5141549FEF;
	Sun, 15 Nov 2026 08:39:46 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Subject: [PATCH v2 0/4] media: verisilicon: Keep the CAPTURE format in line
 with the decoder
Date: Sun, 15 Nov 2026 08:39:45 +0000
Message-Id: <20261115-hantro-fixes-v2-0-bfecfb07a3e7@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/1WNQQ6CMBBFr0Jm7Zi2IhJX3sOwaMsIY4SSFomG9
 O62GBcu35//36wQyDMFOBcreFo4sBsTqF0BttdjR8htYlBCVVLKA6Zw9g5v/KKAWlsSZXtUVW0
 gTSZP2yEtrs2Xw9Pcyc7ZkRs9h9n59/Zvkbn3U5f/6kWiQG3MqVZVWQtJl27Q/NhbN0ATY/wAr
 ST8D7oAAAA=
X-Change-ID: 20261113-hantro-fixes-aace04d5268b
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 Hans Verkuil <hverkuil@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Arun Iyengar <aiyengar1990@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794731985; l=1704;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=ieijxoJ+Z395DXW1QlEoaITK3L8xF7mWwBby8wJ+DGk=;
 b=/uVlZ6ozpByZ8clNwP0NjCB4JDtnqv9NzXnKK2vpfHhw2ZdhGxVR0IoF5sT99Iw0cgW+z9uWP
 bIah0ICOwAMCLAlDAPAGWgscLLinzYElFp68cno5uNHbTyMNHyC1wx7
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

Fixes for cases where the decoder writes past the CAPTURE format or an
auxiliary buffer, found by Sashiko on hantro-dec-size-check v1 [1].

Tested on an Orange Pi 5 (RK3588S) with AV1: the CAPTURE format is right
after film grain is turned off and for 10-bit streams; VP8 and AV1
fluster show no new failures. The overrun in patch 1 was not reproduced.
HEVC and VP9 are untested (the RK3588 has no G2 core).

Developed with Claude (Anthropic), which wrote the code and the commit
messages. I reviewed every change.

[1] https://lore.kernel.org/r/20261112-hantro-dec-size-check-v1-1-e5f1180b625f@gmail.com

---
Changes in v2:
- 3/4: also replace a native format when post-processing; second Fixes tag (Sashiko)
- 4/4: check the control returned by v4l2_ctrl_new_custom() (Sashiko)
- Shorter commit messages, fewer code comments
- Link to v1: https://patch.msgid.link/20261114-hantro-fixes-v1-0-abb78264801e@gmail.com

---
Arun Iyengar (4):
      media: verisilicon: Size the VP8 segment map for the largest frame
      media: verisilicon: Set need_postproc before resetting the CAPTURE format
      media: verisilicon: Keep the CAPTURE format at the stream's bit depth
      media: verisilicon: Set the bit depth again when its control is rewritten

 drivers/media/platform/verisilicon/hantro_drv.c  | 12 ++++++++++--
 drivers/media/platform/verisilicon/hantro_v4l2.c | 20 +++++++++++++++++---
 drivers/media/platform/verisilicon/hantro_vp8.c  |  4 ++--
 3 files changed, 29 insertions(+), 7 deletions(-)
---
base-commit: ad6549a46748d00818483b535e5cd2a704685c98
change-id: 20261113-hantro-fixes-aace04d5268b

Best regards,
--  
Arun Iyengar <aiyengar1990@gmail.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

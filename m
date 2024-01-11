Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01B1FC47422
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jan 2024 16:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PeLEV74wMGr07lvPuKl7A1FEqd+B2MgjjK1RVSf6uo0=; b=NleNnRj69inucb
	zlf4C1qbA/9seqg3+Gp8QH2kU6fr+BGJRVMJnhk9LLy/gFOFfSmDrzz+bgTp6Aab7Kpv/SYss45gJ
	RqtcVkEo6YLN0+Nl5MnJVNoD9cevzuvHDsoYS2dJ8OCvnSwRgoSq6MWUr76fTgdP9GdgsiiBc1xuI
	MSMoAySzeyuHyjAFP+jpq48BIOi+G7/7zvMKcibDvUb88k5gpp2oMWGMSgjJ9H+qEkujoYIBaGEKu
	MuRrVnOpXvFFOTxlyS0VtoEwOecsphCKDIFCUBglGvS1q0bzjgCMCPdvmTjZ8DQKV9oLefbUH67Ui
	POigBbisQvOjSgSnpaRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxad-000XMI-30;
	Thu, 11 Jan 2024 16:07:31 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNxab-000XKg-02
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jan 2024 16:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704989247;
	bh=XCK1CV/VSM6OTw5gCljrP86qEptdNtFM4Wvlklxvlgw=;
	h=From:To:Cc:Subject:Date:From;
	b=BRv9/7oTfeVU9WWFVnq9RsczL7aWbPG9zpNpsQ1fVr4Mt/j1I4T9AJIOYasxixuqi
	 GINOWppUl4JrnfHS9N4h1eqIDYQZegj1qG2YmatSsTuTbVsSZ8OZ+We7wdbiLQSVqy
	 rB26OqhbLVpyOj0FHkUF3i5s1Ln98Y3rLzJGsCxfAAbBPkkxtiBx2aPqeJ0MLYM5vR
	 P2CGDtii9S7W8pUgALNvftE4v/SNCCe5v4py3UACe6vYoHlMU+YNm3NzzXUxpBsW10
	 51Zv4NotFOumRBQuml0uBzNr9A9z2dtnhw5D+Vd2RinBPnNhVF4tqaKnMko0iE2d8h
	 7ilNQysjPUpDw==
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D98E73781492;
	Thu, 11 Jan 2024 16:07:26 +0000 (UTC)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	p.zabel@pengutronix.de,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [RCF 0/2] Enumerate all pixels formats
Date: Thu, 11 Jan 2024 17:07:19 +0100
Message-Id: <20240111160721.50020-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_080729_226753_93A2842C 
X-CRM114-Status: UNSURE (   6.75  )
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

Benjamin

Benjamin Gaignard (2):
  media: videodev2: Add V4L2_FMT_FLAG_ALL_FORMATS flag
  media: verisilicon: Use V4L2_FMT_FLAG_ALL_FORMATS flag

 .../media/v4l/dev-stateless-decoder.rst              |  3 +++
 .../userspace-api/media/v4l/vidioc-enum-fmt.rst      |  4 ++++
 .../userspace-api/media/videodev2.h.rst.exceptions   |  1 +
 drivers/media/platform/verisilicon/hantro_v4l2.c     | 12 +++++++++---
 drivers/media/v4l2-core/v4l2-ioctl.c                 |  2 +-
 include/uapi/linux/videodev2.h                       |  1 +
 6 files changed, 19 insertions(+), 4 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

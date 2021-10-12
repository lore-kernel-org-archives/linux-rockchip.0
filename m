Return-Path: <SRS0=t7eY=PA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA248C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 14:36:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A0ED460E8B
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 14:36:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A0ED460E8B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MsEE2lM5NzYftSSk98Zch2ZOeN2CifbW4I+qi3+/IAA=; b=vHqYyEGUs5JqJb
	spM2GBfLWaX2gj3B0U1qGzMfuZJD7AUsaLzbIjLuvR7DclyvzD6FhR9zuiA2cpzUtvtMsAMSC/OCz
	+PBFGHyFAjm6+quowlr4JLkzvxw2Hz2pgCIZsbpZ9smD7zXT1eWiqJbNfrh4WC63y5dJmAlMZ1eyd
	uJvj85TAts727T9SepYa1L5uXiBwBQ7CtuoysnwQdk0XtxZ7XEArxbGoR8LpaHqtqJBZs93x0OoEL
	qHZsJqjkODlwMSEc9oueMtDo5HYbf+5+oqy6tTJzG2Gv0xsHPYHKH2ik69pYhrsGSWhqp3j8ILOzy
	3s65IzU6L1mwH6tXO9iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maItH-00DCqC-Fp; Tue, 12 Oct 2021 14:36:27 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maIsu-00DCi4-2v; Tue, 12 Oct 2021 14:36:06 +0000
Received: from benjamin-XPS-13-9310.. (unknown
 [IPv6:2a01:e0a:4cb:a870:dcd8:9f87:c3be:dc06])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5B5891F43BC6;
 Tue, 12 Oct 2021 15:36:00 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@gmail.com, hverkuil-cisco@xs4all.nl, jc@kynesim.co.uk,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 0/4]  media: HEVC: RPS clean up
Date: Tue, 12 Oct 2021 16:35:48 +0200
Message-Id: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_073604_282798_063BF49B 
X-CRM114-Status: GOOD (  10.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This series aims to clean up Reference Picture Set usage and flags.

Long term flag was named with RPS prefix while it is not used for RPS
but for mark long term references in DBP. Remane it and remove the two
other useless RPS flags.

Clarify documentation about RPS lists content and make sure that Hantro
driver use them correctly (i.e without look up in DBP).

These patches are the last in my backlog impacting HEVC uAPI.
From my point of view, once they get merged, you could start talking
about how move HEVC uAPI to stable.

version 2:
- change DPB field name from rps to flags

Please note that the only purpose of commits 3 and 4 is to allow to test
G2 hardware block for IMX8MQ until a proper solution isuing power domain
can be found. Do not merge them.

GStreamer HEVC plugin merge request can be found here:
https://gitlab.freedesktop.org/gstreamer/gstreamer/-/merge_requests/1079

With those piece of code fluster score is 77/147.

Benjamin

Benjamin Gaignard (4):
  media: hevc: Remove RPS named flags
  media: hevc: Embedded indexes in RPS
  media: hantro: Use syscon instead of 'ctrl' register
  arm64: dts: imx8mq: Add node to G2 hardware

 .../media/v4l/ext-ctrls-codec.rst             | 14 +++---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 43 +++++++++++++----
 drivers/staging/media/hantro/hantro.h         |  5 +-
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 27 +++--------
 drivers/staging/media/hantro/imx8m_vpu_hw.c   | 48 ++++++++++++-------
 .../staging/media/sunxi/cedrus/cedrus_h265.c  |  2 +-
 include/media/hevc-ctrls.h                    |  6 +--
 7 files changed, 84 insertions(+), 61 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

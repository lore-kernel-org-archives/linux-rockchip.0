Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93C16C5DF81
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Aug 2026 06:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zu34uvR5nX693h9sdh/dQ1f5vTjuxEov3tgEuRSCsk8=; b=XORAMiSfV+Njc/
	i7XhZXaCMa4ElrL4J9ClP9/6mD25re0zxpU0KPt8YXWH0HwwlfJYfNsfHlNsi5p6kvXelYrIrUR/q
	TmHmhw6yhFUvBeaVblXc9qwWqITOeeMqUObR+tYx3XA5ebxvX2t1ap5Tlfb5R63/2l9CKEiCpCQxn
	9vBVub9HEE5RjR/OHpb46tZPoXK0Xc+v4k8HicMinWAPKJ7NXrRT9OewXMdVYn70As9U/FPkxSyp2
	BtvgdKaK8yMHB/NycFxOCsMkNJ6HfEumaf03WfJet+yaoTTtp31ve0E3WCB+Yf94THRh0U4GQ/y81
	1SmfOt1MU1qvstxVk64A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOLV-0000000G0aa-3Xqp;
	Mon, 24 Aug 2026 06:39:49 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOLM-0000000G0WL-14cA;
	Mon, 24 Aug 2026 06:39:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C1DEF200F4F;
	Mon, 24 Aug 2026 08:39:35 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyOLH-0033ic-2A;
	Mon, 24 Aug 2026 08:39:35 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyOLH-0000000DClv-22qh;
	Mon, 24 Aug 2026 08:39:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/3] media: verisilicon: Fix error paths in hantro drivers
Date: Mon, 24 Aug 2026 08:39:33 +0200
Message-Id: <20260824-rk3588-jpegdec-v1-0-180a30a2852d@pengutronix.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACXni2oC/3XMQQ6CMBCF4auQWVtDKeKUlfcwLEw7LaNJIS0SD
 Ondrexd/i953w6JIlOCvtoh0sqJp1BCniow4yN4EmxLQ1M3XY1Si/hSF0TxnMlbMgI1SeNag6g
 RymmO5Hg7wPtQeuS0TPFz+Kv8rX+pVYpaKGWvrbFOddrcZgr+vcQp8Ha2BEPO+Qs7L4PfsQAAA
 A==
X-Change-ID: 20260819-rk3588-jpegdec-89e1cf4c8898
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Hans Verkuil <hverkuil@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787553575; l=1639;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Yr7A6reUyyDCMEF4I5SVOxrskAXy24WpmyQEjcaemrw=;
 b=Z9lYl9pt+cU57E8Z3IdiQ6jOYE0qMgAAci9SQfGPbifR8CQ9ds8PSD++6ezUflWNP05L7a0bN
 H8yQOMUwqeHBbBx2gMkoruwEo5h9TggfH3AxjaTZbSyOLsHkSdChLD2
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_233940_458288_D1355884 
X-CRM114-Status: GOOD (  10.34  )
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

This contains the Hantro error path patches previously sent as
part of "media: verisilicon: Add RK3588 VPU720 JPEG decoder" [1] as a
separate series. As the Rockchip JPEG decoder turned out to be no Hantro
compatible hardware at all I'll continue that as another series. This
series now contains the useful stuff from [1] with Nicolas comments to
the first patch addressed.

[1] https://lore.kernel.org/all/20260819-rk3588-jpegdec-v1-0-33d74cdf369c@pengutronix.de/

---
Sascha Hauer (3):
      media: verisilicon: Fix the cleanup when a codec ->run() fails
      media: verisilicon: Complete the request on the ->run() error paths
      media: verisilicon: Allow the EOS event to be subscribed

 drivers/media/platform/verisilicon/hantro_drv.c    | 35 ++++++++++++++++++++--
 .../platform/verisilicon/hantro_g1_h264_dec.c      |  4 ++-
 .../media/platform/verisilicon/hantro_g1_vp8_dec.c |  4 ++-
 .../platform/verisilicon/hantro_g2_hevc_dec.c      |  9 ++++--
 .../media/platform/verisilicon/hantro_g2_vp9_dec.c |  2 +-
 drivers/media/platform/verisilicon/hantro_hw.h     |  1 +
 drivers/media/platform/verisilicon/hantro_v4l2.c   | 13 +++++++-
 .../verisilicon/rockchip_vpu2_hw_h264_dec.c        |  4 ++-
 .../verisilicon/rockchip_vpu2_hw_jpeg_enc.c        |  4 ++-
 .../verisilicon/rockchip_vpu2_hw_vp8_dec.c         |  4 ++-
 .../verisilicon/rockchip_vpu981_hw_av1_dec.c       |  3 +-
 11 files changed, 70 insertions(+), 13 deletions(-)
---
base-commit: 0a0d1d55dad570724bf8c7ea83409639cfb4be9b
change-id: 20260819-rk3588-jpegdec-89e1cf4c8898

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

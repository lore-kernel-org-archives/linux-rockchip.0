Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 355EFCDB482
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 11:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/r4xo8Fy6Ntaocwfcv0R7Xj4xvXG19+pZJXXtnKacg=; b=z8nfYGMz6ZhKaq
	rPi4lqcfCwCOOz8j0cM73kSN5c+haeUMl5ACHWkjezCWhixKbj0rNRAs0rZAf6SKKC5HQoO1IntXD
	6jYHZF4URUd05i8/l9x74djf9WXe6vXdn6BQ7nHKOtFwdnGxb5htq2S2JUHt9rP0jG7ugPf8ZDPJv
	UQZITTbPn2UucmBkcZAYgEKdlITCkGQsIjiXo/i06opW9tpkx9W5EbGlzj/2tCW3Mp92VRCPD4Z6r
	RxUW7f4/i67bdwgS9D2NYDCp5/LJezhYJKCNSkUYWBt0AhP/3IavTVoJNP9UiJlOxR7FMgegUPFKS
	SO/gsvZlxbuxnv0N9vVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFuw-003G1q-1x;
	Fri, 13 Oct 2023 11:01:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFup-003Fu2-2E
	for linux-rockchip@bombadil.infradead.org;
	Fri, 13 Oct 2023 11:01:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=3uiUsBTMFA3PHRL1uvkc+WN3z0Y1T4XdD305eEP70GE=; b=okbSrQFfKL9Xuf2QAKuGA0x+K2
	MWKDLmulOKXevr3MN9GJq23Os7FWHc9PhC1coWo/rfXPe5VUutNUekIs7W9Y0In72XfIWfHCeMATw
	w4eN/I3zcmHQwpNUtR6GuswJr7VQxechD410KfVUjaLfGzln/1QcOt4SfFj8JUmk2C6gtza/ltjw4
	FlXYMiRGmuVrZaxamMS+sWhI0mAqshV0NekvFagMRN04N3ejFuCxvWZeEVB1aftXQw3NM9+Z8OKiu
	aQ97m27tCcYlR/MVwr1/WiG+DYKp2Fx/pp8TkZAEJX/P6X/hvhPow3jovYqz6YwdJ6zmVD9yJR8B1
	a9Mu+j9Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFug-002hWH-2h
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 11:01:09 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qrFuU-0006xJ-M2; Fri, 13 Oct 2023 13:00:50 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 13 Oct 2023 13:00:34 +0200
Subject: [PATCH v2 13/13] media: rockchip: rga: add NV12M support
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v2-13-bbfa6abf8bbf@pengutronix.de>
References: <20230914-rockchip-rga-multiplanar-v2-0-bbfa6abf8bbf@pengutronix.de>
In-Reply-To: <20230914-rockchip-rga-multiplanar-v2-0-bbfa6abf8bbf@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Shengyu Qu <wiagn233@outlook.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Diederik de Haas <didi.debian@cknow.org>, Hans Verkuil <hverkuil@xs4all.nl>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_120104_792635_F97CFDE8 
X-CRM114-Status: UNSURE (   9.92  )
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

Add support for the multi-planar variants of NV12. The RGA is now able
to exchange DMABUFs with other devices that only support multi-planar
NV12, for example the Hantro JPEG encoder.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2: None
---
 drivers/media/platform/rockchip/rga/rga.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 57d845c57d7d..00fdfa9e10bc 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -280,6 +280,15 @@ static struct rga_fmt formats[] = {
 		.y_div = 2,
 		.x_div = 1,
 	},
+	{
+		.fourcc = V4L2_PIX_FMT_NV12M,
+		.color_swap = RGA_COLOR_NONE_SWAP,
+		.hw_format = RGA_COLOR_FMT_YUV420SP,
+		.depth = 12,
+		.uv_factor = 4,
+		.y_div = 2,
+		.x_div = 1,
+	},
 	{
 		.fourcc = V4L2_PIX_FMT_NV16,
 		.color_swap = RGA_COLOR_NONE_SWAP,

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

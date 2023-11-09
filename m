Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7303FC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 20:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RxN6i19Sg/tUThGRjo2zaoHENCqQYdpUtd5VhN9oEbo=; b=gzM5kosM8WJcLX
	+6X7eGlH1Lfe5nXdefEELKikifHsEWfGlpzJ6T5noMX3dUm4vZ7JkKyiteNtAmVfSPYMART4QsyKD
	bhy9Si0qPIVXGZRTcygaTrQpDgHRj9CdTQKTl7Iv6aVLxLk5pYH9BK29bflPsY4OgWOyUH4Oqq2ew
	l5/Z4hHRJnIU3bfWyJxqZmYCoatKlQKn7CyhZK4ZO+bRXX/sht1efEqFd1ldasDDHWJQXyNuMOzG4
	rVYtrYZwXEUmMb/BY5BRuHFDRz8y6ypOKX+uwpa4KyRjeuuqEAdg5j3DN7phGkdESmKE51I+qYxJw
	jaQooJRjLvjvP2opIJyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1BSX-007AO4-1I;
	Thu, 09 Nov 2023 20:17:01 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1BSR-007AJx-28
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 20:16:59 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 93FD01C0006;
	Thu,  9 Nov 2023 20:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699561011;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zbTVYuvmRUaQtmj4VIv+6MHR+6X+gUKoXAkYu3nSfeI=;
	b=ZK5e/wDc09qPgtZXCY6x5stZszvLgejTsenovmCcTYYN//u7hv//TDM2gA3Jw3bYHIHuF+
	rjIHacq6EC/gtVzTHzcGpbb8DKHjRTnFlQunL08hd+GiWHKs9ezS4SISbT9Qjnnai2DIVN
	7RAf7X40ynDSQreWM5dcNUTA2skN5UkEGkyj4Ayi75H/irUJ5uqyCSkJ0ZF0DpKYPiaTL0
	oPjp205T8rEmqMUAZ/MOpudemsoEW1oW85DlbLW2pOWo81VHoxr6yUL/0DMc3HA4viHbCG
	tYOi0Hy8p3grRakL3cCTKL6Aqx+9LYhVnYD15zmD7rjAB2Z1ci+X0W8CwD9LIQ==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: [PATCH 2/4] media: visl: Hook the (TRY_)DECODER_CMD stateless ioctls
Date: Thu,  9 Nov 2023 21:16:38 +0100
Message-ID: <20231109201640.340556-2-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231109201640.340556-1-paul.kocialkowski@bootlin.com>
References: <20231109201640.340556-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-GND-Sasl: paul.kocialkowski@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_121655_898839_876AE85A 
X-CRM114-Status: GOOD (  10.03  )
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

The (TRY_)DECODER_CMD ioctls are used to support flushing when holding capture
buffers is supported. This is the case of this driver but the ioctls were never
hooked to the ioctl ops.

Add them to correctly support flushing.

Fixes: 0c078e310b6d ("media: visl: add virtual stateless decoder driver")
Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/test-drivers/visl/visl-video.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/media/test-drivers/visl/visl-video.c b/drivers/media/test-drivers/visl/visl-video.c
index 7cac6a6456eb..9303a3e118d7 100644
--- a/drivers/media/test-drivers/visl/visl-video.c
+++ b/drivers/media/test-drivers/visl/visl-video.c
@@ -525,6 +525,9 @@ const struct v4l2_ioctl_ops visl_ioctl_ops = {
 	.vidioc_streamon		= v4l2_m2m_ioctl_streamon,
 	.vidioc_streamoff		= v4l2_m2m_ioctl_streamoff,
 
+	.vidioc_decoder_cmd		= v4l2_m2m_ioctl_stateless_decoder_cmd,
+	.vidioc_try_decoder_cmd		= v4l2_m2m_ioctl_stateless_try_decoder_cmd,
+
 	.vidioc_subscribe_event		= v4l2_ctrl_subscribe_event,
 	.vidioc_unsubscribe_event	= v4l2_event_unsubscribe,
 };
-- 
2.42.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

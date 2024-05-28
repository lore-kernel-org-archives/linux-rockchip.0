Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48794C25B78
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 14:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C0/P/QgFTaPSkDSef0UyGMfY+0qLXjmYmEAOU/5m+jg=; b=iDLxsOO/88V6FH
	xbLgRJcNboFZLmMO1Rr516krr+iui0B2ImeMdKn6eEpzy5dRTAENbwbnR5b1Q/ocLOv+b/Z5U0V4I
	vwzJTYJM2IbsbxCSnMWG+eI9qz0rVGhIXNxecADtGHdl2sebzA14SjeYku8Tzf0V4r3Bbg2WU/rVp
	iLrnecgm4NiD3Q65wRva0mqw6J89/Cplxseyw4y7RJwwApsiFUQDs50CvRAKXjtX+80vJ9gx/GDr0
	g/Ujfi+niuVGIfn+WYJ3fldK3n2SDspv6g0tx9At/uTsghCd0HPnsZdag+PrbrCmYpFL5xBnp4nCW
	8PSo4rEzRiV1yBlm3+Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxSM-00000000vgh-11Iy;
	Tue, 28 May 2024 14:05:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxS5-00000000vWh-42gn
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 14:05:23 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1sBxS0-0005wE-N7; Tue, 28 May 2024 16:05:16 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH 0/2] media: rockchip: rga: fix v4l2-compliance errors
Date: Tue, 28 May 2024 16:05:12 +0200
Message-Id: <20240528-rk3568-rga-v1-0-b946e55d9d37@pengutronix.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJjkVWYC/0WNQQqDMBBFryKzbjDGpkqvUlzEyUSHQpRJKIJ4d
 6Obrj4P/uPtkEiYEryrHYR+nHiJBZpHBTi7OJFiXxiMNk9tTa/k29pXmcmpEELjvUaDnYUijC6
 RGsVFnC8l0pbrvKyM9V+6fqtQ4O2OfobjOAF4IILphAAAAA==
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 kernel@pengutronix.de
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_070522_051862_CC59C176 
X-CRM114-Status: UNSURE (   5.46  )
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

Fix the Streaming ioctl tests reported by v4l2-compliance for the
Rockchip RGA driver.

Patch 1 fixes the field of the returned buffers and Patch 2 the sequence
numbers.

---
Michael Tretter (2):
      media: rockchip: rga: fix field in OUTPUT buffers
      media: rockchip: rga: fix sequence number handling

 drivers/media/platform/rockchip/rga/rga-buf.c | 15 +++++++++++++++
 drivers/media/platform/rockchip/rga/rga.c     |  4 ++++
 drivers/media/platform/rockchip/rga/rga.h     |  3 +++
 3 files changed, 22 insertions(+)
---
base-commit: 8771b7f31b7fff91a998e6afdb60650d4bac59a5
change-id: 20240528-rk3568-rga-fff1dd0c2c75

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

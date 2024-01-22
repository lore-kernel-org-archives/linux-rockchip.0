Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A913C47DDB
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 15:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9llPQO9g2ncfGZh2h4IoOLFWTCkvWQhz8f+2aDGdiw=; b=vrKxd9q5crMfvt
	XxrfQO3rdZ1HFe+jUrXPgqLn4yaiTqQh0Ws3d3s4D/q8Av+Bwh/YLOONauUdh+B0hY+c2tW3YP6Zy
	E4WXIC99inI3pCwSPyQ4fPfaALo6qhRUAS6wMsOAprTujbGSBNaCs9x5+aZs5hgOW7nvmLyUbJves
	bSHAU6LUgffiNClKrZiXw/1sw3XquZaKWtQVMGcaVr0aQ1oilxu4JWAc+DqIsN4rlYyKeHNBcu7JG
	WW2961Ssa/tmbf+8MkMoCCEv2eNZdA9C7hRMsQt/V4lu72Y2jYpu+ElveKV7uT9CYBYCroYbfKVh6
	V6rGZrme57Bmr/ETDCXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvsb-00CaD9-1T;
	Mon, 22 Jan 2024 15:06:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvsX-00Ca9v-0C;
	Mon, 22 Jan 2024 15:06:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8C40F6153A;
	Mon, 22 Jan 2024 15:05:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DE81C43394;
	Mon, 22 Jan 2024 15:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705935954;
	bh=XcqHZjLopTn4lg1x7pKDpFDeFGze++k5rnwJFqSOoF8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GaR9gVsgZmxW0aj1HPpI7QBA4dq72GDk6v3WU4Wph7AxWroSNJk3IL7P1QR1lRnGD
	 xxrj0k8CctajBkjTYMF8keM05m4gYRTW7jrG6AP4ilAyvJNDI7I6ORzal94htrY72E
	 Vxt/mGwtPznNZgWF0OHJoUNQ7GVKSJAX3BYV4DbhPlcINpYMDDsgGwwRKhU7RSRCeW
	 GQ8MxLjyVElV1Y2cnx+6RzcqjsYyKjg+hsFUm00bA2gEfQsEK+gdJ+ZjoQuHhIZYJL
	 04Ui4OepkzGGVFRQWFDhZpSMkX0yfow+8tY4PnaDQL+msPgynOkrctZOg0+byDWsEI
	 J1s9PhgT6kMsQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Adam Ford <aford173@gmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	dafna@fastmail.com,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 29/73] media: rkisp1: Drop IRQF_SHARED
Date: Mon, 22 Jan 2024 10:01:43 -0500
Message-ID: <20240122150432.992458-29-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240122150432.992458-1-sashal@kernel.org>
References: <20240122150432.992458-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_070625_140609_92A2240F 
X-CRM114-Status: GOOD (  12.79  )
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

From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

[ Upstream commit 85d2a31fe4d9be1555f621ead7a520d8791e0f74 ]

In all known platforms the ISP has dedicated IRQ lines, but for some
reason the driver uses IRQF_SHARED.

Supporting IRQF_SHARED properly requires handling interrupts even when
our device is disabled, and the driver does not handle this. To avoid
adding such code, and to be sure the driver won't accidentally be used
in a platform with shared interrupts, let's drop the IRQF_SHARED flag.

Link: https://lore.kernel.org/r/20231207-rkisp-irq-fix-v3-1-358a2c871a3c@ideasonboard.com

Tested-by: Adam Ford <aford173@gmail.com>  #imx8mp-beacon
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index c41abd2833f1..4c4514e20673 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -542,7 +542,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 		if (irq < 0)
 			return irq;
 
-		ret = devm_request_irq(dev, irq, info->isrs[i].isr, IRQF_SHARED,
+		ret = devm_request_irq(dev, irq, info->isrs[i].isr, 0,
 				       dev_driver_string(dev), dev);
 		if (ret) {
 			dev_err(dev, "request irq failed: %d\n", ret);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

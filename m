Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27048C47DAF
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 15:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9olxCwX3Vp9leqMvGy9P6A+Xowv4ZzIQ/lNFjVNK0Hk=; b=RLdEcS5lgJTLMe
	FyI2LsZbVn9pu8wuuQQpYu/7S7KlxKsOvuGWyUXd9T9bUb69UUnGMGyLpaHdubXXYDLOqArXcubnQ
	e8HZtB1voFm1sF33kTzGiZPW8GU9QitfkpkjvZ+oMCziaTdYqUHbxnnCP2At+L6yrFtPeH9hUvEed
	sqNuN+ncw/96WssmwIzYU3/cRJ7v1EKDZaxYGR2MIA27qscGRm+nGsmuzrsVXzHUA+6eMR4/umsbK
	EWXyE5pwY+etQr3VyHhA3pWbHB+g82feYI+9EtuZW9fgw6dw0rS6InQus5z5BV2v3IXEbfuq8vd4A
	A3GhqoSgeFHaxOOG+Azw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvzo-00Cdgz-0F;
	Mon, 22 Jan 2024 15:13:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvzk-00Cdf2-01;
	Mon, 22 Jan 2024 15:13:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 85CBE61516;
	Mon, 22 Jan 2024 15:13:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CA3AC43390;
	Mon, 22 Jan 2024 15:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705936431;
	bh=6Kv7gJZBOWBZLuCsxITniTN+E+NwKG0Os4iFWCyMUsk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=p+o2EqLKUI2qu9sc9Pp6tqPzbdnRgQnkvyaDkNZZvNHuiylhSjhA7M9vxjtxztSSc
	 d1mgnZzCUyO/QjEPDuOXfXYqGM1qAckhDLChoEChmkDo437J1hZy0J5ipcdwaUruco
	 EQfA0ZElbshrQ3fpd63KA71sW0E4sLMbuqf7NI4ckQk1njLjYBnV3h4tv7f4vRI4+n
	 xzfZA0nd4mNZL+gW8rDKxEs0xPEP/bJj3VLjoyCaBkm0o2WtB+LsfzIgtyAucY43mX
	 31M3iqaGSMbGE6tcgNJiQcYOQRZi0Q83PaUVlHjix5TnlxSyA+HlkkcZ4ppoxp7c3U
	 p5Q02FRWGpsrQ==
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
Subject: [PATCH AUTOSEL 5.15 18/35] media: rkisp1: Drop IRQF_SHARED
Date: Mon, 22 Jan 2024 10:12:15 -0500
Message-ID: <20240122151302.995456-18-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240122151302.995456-1-sashal@kernel.org>
References: <20240122151302.995456-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_071352_095918_E49ADC01 
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
index 560f928c3752..036458542627 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -482,7 +482,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 	if (irq < 0)
 		return irq;
 
-	ret = devm_request_irq(dev, irq, rkisp1_isr, IRQF_SHARED,
+	ret = devm_request_irq(dev, irq, rkisp1_isr, 0,
 			       dev_driver_string(dev), dev);
 	if (ret) {
 		dev_err(dev, "request irq failed: %d\n", ret);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35A2EC9831A
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 11:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KN+f8KrRv/rPpqyzRSplovhK4BqKY3+t0QpPcKSsswA=; b=iHf61BfEA7HO03
	kaxjvTFgB1sU9tzhj2KkVZ6xldkCSfrLogPoV93GKhvBOPor2D0/Vl3YT4/Xvrg5JlmD2zNFEwW4t
	7Ws1txiuVMWjnQaAFgzPXZwXxPwAmGURAyVQtwDoNHWyIucJg4mLMM6A+Gei/Km8yBGet9hbjubym
	SNsRinoiQxlWfDzXgFbrG9dI3GwJzXSIyCtGFaWNs0TiTsN1c8ETsk748xaB4GV4NSYpB1yqnzq9H
	guG2NSeNZwfiCX2MHM60n6jcPhQmhCSGA4K++TqdozkyYwyXZv2an2XWEAViw1plduIfV/v3kxVwM
	L4SICcusbXIo9bmsyQhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hYh-0000000ArH1-2i41;
	Thu, 24 Sep 2026 11:24:11 +0000
Received: from mail-pj2-f42.google.com ([74.125.227.170])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hYX-0000000Ar8e-0fxd
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 11:24:02 +0000
Received: by mail-pj2-f42.google.com with SMTP id d9443c01a7336-2df8818fe1eso633585ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 04:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790249040; x=1790853840; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VVZyQuOx10W8AoQP9MzIvUBAsru1Ry+CJZYSEvVQ+/k=;
        b=StMe9XaDs4woaVdys0qXPeRdZjrcEcN7ZvipKvsqTI/b6TsTbzxQcZ9/B1FCNMCxlr
         6PLVwMYOXVYoaRobjR2hExoW/X7Gz/ejxcfKs5k1kikPMzNDI4loro+P5TbjLpinO0d3
         Sh16GhvRBwm6ZfrKPwFHeEnORhJ5UbQuo3xouMIINFD2haMWFp0OFz/n2FMU5IDW/7YJ
         PUe8XkB2WJJoxcGtuUAGRt3DhLyQXBn2NMxIKg1iYe76HnMoQt25VKZjV1SWQKv4MgSU
         8ODxQryt3EbIZAkCPrnDDK6OKH3DK42xXnojliqKhL85s7AGFKosFuKOb447nOMAHhXu
         z6Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790249040; x=1790853840;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=VVZyQuOx10W8AoQP9MzIvUBAsru1Ry+CJZYSEvVQ+/k=;
        b=o8jV5rKtqLMPnqdT3VGsUcvFket8HxdhmKmFUyTDu5yNVSYg3uVJJkLHa3bUpgqJvd
         /C6zOBiOY9Z0ifVG10gCaVgN8E/zjyl67p+SDvVOq6MnXvdtNrNxH5ZjLt4hG/bP2E6g
         sJVOYFfkldnWsJQYinVnFFe4lbQMybNuz1Xl+DR3U0hldo3KrSKTSFY6/M0+4WGJABH4
         Jc12L5K5WoXVLpwW6xCXpyVWlMjWmlfolCirSFTImFec0wQeFUgSdaPqV9CUx6aiK2h1
         4Op4xD01DBNWSaZwLuPCA34ILhDf08lLN/zJx2wymM4rIv6ZFJ0E+B5qtD/f9T/Y/uEe
         +7Qw==
X-Forwarded-Encrypted: i=1; AKwUvByvZthsZ5c9Vu1qmXra0NFJZZzaV3E/EeXto2CoAiSeOKI1AWdXnycs5aI5b5AGuSQkr/T66Nldx0S5mGZE4w==@lists.infradead.org
X-Gm-Message-State: AFuF++koNgsWxf1sMmyzVBPcAuvNZsvGJfBpsULGW2mtwD+N5Yiuoeq4
	TrsuWKZGtusIcVe7hIgqiFEV9SJHnLRHQ6a8Dw8IL4Xh8R/UAu43lI+Z
X-Gm-Gg: AYBFou2bpIhAeND/jJ0lX59MBXiC5pq5BlZcAdZ0dpud2nYl59qLBGyboPdkzE/Y+lm
	361t5qZgfmVW/9YlbmrZu4pIDbKQNhn1R1C/KLDz9h1dP94yy9ZHc0rMQDpue79CfBYxckX3bd+
	LkEAYzIYwXbHM3KskS8MYFa0bdjNisYW8jcuCiS1/p4gIaxuryALnuhsAuqnetBft53Rx0pnOvW
	vUzY6NdENwWd6gqzp3zgUHbb1ikCeVNW8z1b7U99RB10cqT6/yIIc/3Qt89R5JyrDDjVxhGM/ZW
	8CDGOljucuF6S3Vxb/QVGZBK+MeW+j1DzX/VLUb6BUGR+XDL2z6i+dzQ33h2oKNuJ2vHt4Tbp17
	gZC7zZtSizNmJWXzoRiDSK334n9/pgO/qX7jBP3UgFzd2lwP9vXcrSTXwrgn6aH82pOpuKvFBng
	i0wuZQp9m9wT351EFbnbBjLidjwo0aiJSOz2fOopgy9FXtUi7zPvVTdg==
X-Received: by 2002:a17:90b:1a82:b0:3a0:8050:2ecf with SMTP id 98e67ed59e1d1-3a098ac556cmr1232198a91.25.1790249035317;
        Thu, 24 Sep 2026 04:23:55 -0700 (PDT)
Received: from lgs.. ([2001:250:5800:1002::de93])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a0813318c1sm3586800a91.4.2026.09.24.04.23.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 04:23:54 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: broonie@kernel.org,
	heiko@sntech.de,
	william.zhang@broadcom.com,
	kursad.oney@broadcom.com,
	jonas.gorski@gmail.com
Cc: linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linusw@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	jon.lin@rock-chips.com,
	bcm-kernel-feedback-list@broadcom.com,
	noltari@gmail.com,
	lgs201920130244@gmail.com
Subject: [PATCH 3/3] spi: bcm63xx-hsspi: Disable runtime PM on remove
Date: Thu, 24 Sep 2026 19:23:29 +0800
Message-ID: <20260924112329.1566051-4-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260924112329.1566051-1-lgs201920130244@gmail.com>
References: <20260924112329.1566051-1-lgs201920130244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_042401_212085_C86BBDEC 
X-CRM114-Status: UNSURE (   9.43  )
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

bcm63xx_hsspi_probe() enables runtime PM before creating the sysfs
 group, but bcm63xx_hsspi_remove() does not perform the matching
pm_runtime_disable() after a successful probe.

The probe error paths already disable runtime PM when sysfs group
creation or controller registration fails.

Add pm_runtime_disable() to the remove path after removing the sysfs
group to balance pm_runtime_enable() from bcm63xx_hsspi_probe().

Fixes: fb8695e3749e ("spi: bcm63xx-hsspi: fix pm_runtime")
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
 drivers/spi/spi-bcm63xx-hsspi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/spi-bcm63xx-hsspi.c b/drivers/spi/spi-bcm63xx-hsspi.c
index 25f169a2a81d..80bf02bc324a 100644
--- a/drivers/spi/spi-bcm63xx-hsspi.c
+++ b/drivers/spi/spi-bcm63xx-hsspi.c
@@ -882,6 +882,7 @@ static void bcm63xx_hsspi_remove(struct platform_device *pdev)
 	/* reset the hardware and block queue progress */
 	__raw_writel(0, bs->regs + HSSPI_INT_MASK_REG);
 	sysfs_remove_group(&pdev->dev.kobj, &bcm63xx_hsspi_group);
+	pm_runtime_disable(&pdev->dev);
 }
 
 static int bcm63xx_hsspi_suspend(struct device *dev)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

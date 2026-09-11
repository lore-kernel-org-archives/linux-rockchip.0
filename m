Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03576C88E53
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2026 17:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=15sg3fTBlwa8hC8nwKx+Lt4Noh+9y/TF9Xzof9nknLM=; b=yx+7LUaVeo9lit
	W8M5synSFeiuzl3mP84bwCP7FnNVMkW2UOQzJrMoSXG5voJBBYgFWjg5QGdmdavy1JHISMTGi+ADH
	rYzeV7CXNxmpo/Wcf4FFHXryvrVIxg1zU9YN37w5Zee4PpnH4eTzBWOgjoP6LY7wqIfzg1EXMj1WT
	al30arIgcpGZ71lyKh3/Jl5/8MMHy2ci139huLqy8zFlbjxJAuQttoqxcarj6sLyLYrm9ZfQcePbx
	gfLaiRNZrTTNdeDFrXrIZCA4+v65z8Bgwadw7mZpP5LJe8FjISeTEWj71YeciaW82mS2krRz2gThp
	kakqC2JJUxAXwmC2n2sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x551y-0000000HKvB-3n1A;
	Fri, 11 Sep 2026 17:27:18 +0000
Received: from mail-vs1-xe2c.google.com ([2607:f8b0:4864:20::e2c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x551w-0000000HKu5-3pc6
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Sep 2026 17:27:18 +0000
Received: by mail-vs1-xe2c.google.com with SMTP id ada2fe7eead31-791284e24e4so816704137.2
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Sep 2026 10:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789147635; x=1789752435; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=BChxo31Ip5SB1VJHGoub4TIPtDJvGI/MxbOnDeYS06A=;
        b=PqnCvRtrXKTFq5Ef2aFDY/L86pN6elNEqN1lpbY+Y7yvV0distSk7wngMxMAIdYYK4
         OQYVNiIjF1iemaDVrkcztWU5oOMD3nlEe1MVm7wPh7qRsW9DNJnssohzJ+Osepp6XM2Q
         UbPfjdr+UP6XyhylH46Uy2+QEhZC4dJQzN/8vz2ezModhxJZGgzrj18Jzh3pGk9y72tG
         fgGrXz2i8lsHMOujcIKAL5F5UCot3g1bNNm6QvQz+XnnjvXa8pFSCe9ziKrwkkFMriWF
         7kqioY3kao//xdSRpEskH2EDj+RXu+qF8jw4Y7E88f6uDGoRRuawODVxHyi/R65fwV1D
         dmlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789147635; x=1789752435;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BChxo31Ip5SB1VJHGoub4TIPtDJvGI/MxbOnDeYS06A=;
        b=Fj4//aH2E9dwMwDUSU7qURgZunrGT3G5+lywL6v4ziUsE61XoogTmDvXURFvlSl/gN
         P1gbzlxo0nQhLijQp+Kfpi9B/3N4oTAIlswKLehz/sryWvj2Vc7aVjjy3HxIDB58kkjQ
         SktliptolxhPWycs3OSETXID24X15aF1FzNCej9ZlYuCc+JkFgWgZRaAM/81RF5Fb2Hn
         D/JpwxD9HUc7ExT4n49KBvh3Cf+6RI3lnR6d1p2/jJlxEBIJiC3gTwU1w5LvMPWU8nrJ
         e89SN3dXcpJylF2ydoB2Ldx146hcOz7BEtZPIhxheeKtorz79gIWyrnksOriCkkTBYne
         dFGw==
X-Forwarded-Encrypted: i=1; AKwUvBxR1O2SDLhL9Rz+yGkVOWi0c2/l8qFw94uEwd7CrhP/fIanMJVe75sMxsmpsis79Cgjt67lyfF7iKcZzSeFfQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mV7hpLXffMacSdTT2b1G/+1O4snnOar9ls/0s5Vk15/LNts2Ll
	vLR2/alP5el7006JxRYTnnf6q7o2+WIT9wJekEG8vtGux0YKysCr/HM=
X-Gm-Gg: AYBFou39yWW/eINOxPwo2QrCqFidyT+StKn2nd3fdPJ5kCcShxOnxjzh0HPYMzRJQjW
	UJbV983kRoB+qHNjZA78Q+b+NLgam9XG+mZ/TmJo+hvEwkgCxcrENMzjSFEN+aRWNb1gpp/xFQq
	y98ZSXuiXM+7nNyyHZAUM+uEzo3DEh9yNNxJGHj7u5HIP75wAk1JP79UnjFbeLZ1ooSmUY8kC6f
	c176kdZDxKI+IT8yiu1ZsSbwzbLGD6fgA0X7UJSOsix+4uMcoAqpihTLHkz9jFqtUiC49ldUTuj
	dwLtPe/d21Rxe/kx1zYoGnibsslWL6PT2IN09XBo5dKNVXiG0v4o04EdaCnXS7z4wQrpudVOYqE
	rcR+HhDcnN518Fpb7jnKvVZ90Sf6UR6RCqDLt4l/7DtLQrNAR1tT1QcwLyqg++nHoLJjZ9sO19r
	4YBMrXIpw/EIaah2OTHipC5kYFWSH3jFLYoGs7Y0b7y51bkRAftSprXjAqNRlqaoz6O4ro052bs
	4mDbu09kFQ/8Z3sGKocLuErpoPNfHTCxBXEZdlyKyn/8fcIBG46zrwaKllUOo2z8TeDfebpNvP+
	1Gq8cVa28igmpYsaOJ2KtZhgw3GsfZnJ3w==
X-Received: by 2002:a67:cd84:0:b0:791:8f69:b7f3 with SMTP id ada2fe7eead31-792a4fc8bd1mr5864944137.5.1789147635238;
        Fri, 11 Sep 2026 10:27:15 -0700 (PDT)
Received: from localhost.localdomain ([104.39.73.78])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-9120f478bf1sm25569566d6.25.2026.09.11.10.27.13
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 11 Sep 2026 10:27:14 -0700 (PDT)
From: Myeonghun Pak <mhun512@gmail.com>
To: Mark Brown <broonie@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Ijae Kim <ae878000@gmail.com>
Subject: [PATCH] spi: rockchip-sfc: skip DMA cleanup in PIO mode
Date: Fri, 11 Sep 2026 13:27:01 -0400
Message-ID: <20260911172701.58177-1-mhun512@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_102716_964396_90F6366D 
X-CRM114-Status: GOOD (  11.50  )
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

With rockchip,sfc-no-dma, probe skips allocating and mapping the transfer
buffer. However, controller registration failure and driver removal still
call dma_unmap_single() for that nonexistent mapping.

Skip the DMA cleanup on registration failure when DMA is disabled, and
guard the buffer cleanup in remove with use_dma. Keep the existing
cleanup for allocation and mapping failures on the DMA path.

This issue was identified during our ongoing static-analysis research while
reviewing kernel code.

Fixes: ee795e82e101 ("spi: rockchip-sfc: Fix DMA-API usage")
Assisted-by: OpenAI:GPT-5.6
Co-developed-by: Ijae Kim <ae878000@gmail.com>
Signed-off-by: Ijae Kim <ae878000@gmail.com>
Signed-off-by: Myeonghun Pak <mhun512@gmail.com>
---
 drivers/spi/spi-rockchip-sfc.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 662a994da60beca33358dc6af09017e88771d017..21bd2e52d3989e3b371cf5c9ec8e4a22e22f17ed 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -719,6 +719,8 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 
 	return 0;
 err_register:
+	if (!sfc->use_dma)
+		goto err_dma;
 	dma_unmap_single(dev, sfc->dma_buffer, sfc->max_iosize,
 			 DMA_BIDIRECTIONAL);
 err_dma_map:
@@ -743,9 +745,11 @@ static void rockchip_sfc_remove(struct platform_device *pdev)
 	struct spi_controller *host = sfc->host;
 
 	spi_unregister_controller(host);
-	dma_unmap_single(&pdev->dev, sfc->dma_buffer, sfc->max_iosize,
-			 DMA_BIDIRECTIONAL);
-	free_pages((unsigned long)sfc->buffer, get_order(sfc->max_iosize));
+	if (sfc->use_dma) {
+		dma_unmap_single(&pdev->dev, sfc->dma_buffer, sfc->max_iosize,
+				 DMA_BIDIRECTIONAL);
+		free_pages((unsigned long)sfc->buffer, get_order(sfc->max_iosize));
+	}
 
 	clk_disable_unprepare(sfc->clk);
 	clk_disable_unprepare(sfc->hclk);
-- 
2.53.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 415F8C88E53
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2026 19:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4fUWCvknFrrSVk4YT3+T7tun+lFtjq9IT5bwkV7I6Y=; b=HMsKEvuOB4XsNs
	K4asF4qYHV+TC2s3vPtCmFEAjCECL6w1o0I1QhoNdn+ZC2ddBb4En1/6Hqx6cWH4oLTPcyI1DViGb
	MJn4jUBhXBfMRyDBA/xRDuQR1gbq5JR9SQVCV9TqOfsJSkLHWAPc94+EWtGSOmvac2L6k+rlCxiXs
	6Mfzqx4HyrQBzqmfTaalgfUK93OWDtf8ldFNSSNR+RDSAhMsYBbRpKAixTnm6XdDt+MgpdfApO7CB
	HErndU8TLbDUofMMk0QuwZ/8FhomIMDZyEYdnSuhw9lBUoxoDRi+DLg+xL0JIrg72eakpj7Ta+yGB
	SDsyAAA4NdrNw7M7k+6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5SyO-000000015IT-0D3G;
	Sat, 12 Sep 2026 19:01:12 +0000
Received: from mail-qv2-x10.google.com ([2607:f8b0:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5SyJ-000000015Hc-0MGf
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Sep 2026 19:01:10 +0000
Received: by mail-qv2-x10.google.com with SMTP id 6a1803df08f44-91219376dd6so10107076d6.2
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Sep 2026 12:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789239666; x=1789844466; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4AaS2W86AtkX5bjhTKY8jGngBhIYNaOT+HF7QmT5cMk=;
        b=klCSjIdDFzD803DH9w7a4mAYuJe3rCr4bACVWpcfBl3tiHl6k3k8mR2ITcDntbGy8E
         F6udQQe3p3JaRmRK3QTFBoTbupPCvhLtQRICWyzwifDiqa2afRRZs4ghR1i78zz60tEm
         2vBtkm9CLeavrLUMQKte9bEN8Ku9OX5hCcMPA86MesCuOpTUsHwQ4wf9orr0gCBnc3nd
         RLBFdpUhO1n7jpC6hnXnC3DR1LhIw4INfbmketMbnTp8VkSd0eNDAbwujgl22GdpXTST
         ASdO4dJWqZnnnftLVwDxaJPYzmdsgOgESBDxHXQfCjA7iquSsQ3g6q0D61V6uL5CR0j4
         Zsjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789239666; x=1789844466;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=4AaS2W86AtkX5bjhTKY8jGngBhIYNaOT+HF7QmT5cMk=;
        b=DcpbarHmPy6OjzEfzOW9NIR1AafV+YI4aubDdccHtJesaVdGL1AlRikyPtTHP3lPwg
         KDjrIQYAjnE/mSnltIWM94a6JA0CdtePcDTP3OL8Y+8D778xP5XzmivYNmjMQH7bJJbL
         iu9UHuCm0HOuN/baNLxjAYqv4BJB+C12R5PLDxotNyXbEsdeck9t7hA1yeIoGgqJgn4a
         n6Xi7VvWudcVIAZpFYwzJnXu1RQuvOUVBfIRSWyW4RGsqJ2og/8RWSCVd8KWBLBg5JQm
         WJEaU6UmcMlqVHZKHFDko+PxCpM9Zjy1BwUEGp9zvH94fmU5gmKEj2wwb/A+/nIKmxE8
         ABzQ==
X-Forwarded-Encrypted: i=1; AKwUvBzfZQQ6i9CNVonQVMzGAStfi3fKGMGAPPmvTqzEG0pc9l62O3gADh+xhzwch5TKjoqCT/h76yn4VHjQDERkeg==@lists.infradead.org
X-Gm-Message-State: AFuF++nTXcdyjx8nmf//7rSYFp2ruXooViBqdLfZCpCF7KiSlQl2BCw5
	FG1vOT/oRaY1yt8pUwHziGZovoH6Q1yx3C4WUT506vVnIIUM+EUGtgeF2wFqe7U=
X-Gm-Gg: AYBFou1nh+ctsv7Le9WqPe/O1koQOIQe9HwD4APFvAapilAjKm1rEtQhm4eoAgr1FM0
	RzwEhfa32obbSQoIPFSu1XOVRBOLhlvm8vOFABO9PX4+ijK784LHLgAkGyvfc8M7IJWab68Dip9
	iW3s0tN1Y5Ef6Rjg5ew75vfJJLIz4vZ5KFi/ZvMOcwudoZ3UDDyM1rckx5D5UJ+uC6YIbiB623l
	L+xSyqY/bw5S4lUG/MV6399x5AC67DBCTZ48ztjw/hF5hwUvQMI0SiuzC0GFO9+0xWMdBBZwrlc
	G/Tza49ywGiP7LXb/axcpkhlZkzPEJYS5YPaBdGKk5Dd+I4K9oYeY+pzSX5oOJOkhDjYXPG4IdY
	Baq3tFdAPWdBE4O1HH0RhTJwH9KUNfHY/VdWsDe4etnk4w/2GZgj3OWeQHP2dNaYqtjjxIXy/GX
	w+fImXRfsxUKHlG1VQASILf+G93Mgji5kY7pRgD4uaD9pdPKDkddAx4rGC5EzWh+4lQubGyUNez
	aEQwMinuYXtDI6iIAqXKu/du8BYjpH4UbVFI/4aXRRSgagTLYgPDZd9lfPO4Mg9xarrkLtk7zaH
	upL2Dgoii3TyijjYJRDR7rM6HbyqJC0fBw==
X-Received: by 2002:a05:6214:3983:b0:90e:96a9:4c5d with SMTP id 6a1803df08f44-9121d91c1famr77743116d6.15.1789239665588;
        Sat, 12 Sep 2026 12:01:05 -0700 (PDT)
Received: from localhost.localdomain ([104.39.73.78])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-9120f45f1fdsm52597396d6.16.2026.09.12.12.01.04
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sat, 12 Sep 2026 12:01:04 -0700 (PDT)
From: Myeonghun Pak <mhun512@gmail.com>
To: Mark Brown <broonie@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Ijae Kim <ae878000@gmail.com>
Subject: [PATCH v2] spi: rockchip-sfc: skip DMA cleanup in PIO mode
Date: Sat, 12 Sep 2026 15:00:56 -0400
Message-ID: <20260912190056.42192-1-mhun512@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <aqRM17TZ0-5pd6Y0@sirena.org.uk>
References: <aqRM17TZ0-5pd6Y0@sirena.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260912_120109_403697_57514244 
X-CRM114-Status: GOOD (  11.75  )
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

Guard the DMA mapping and buffer cleanup with use_dma. Keep the existing
cleanup for allocation and mapping failures on the DMA path.

This issue was identified during our ongoing static-analysis research while
reviewing kernel code.

Fixes: ee795e82e101 ("spi: rockchip-sfc: Fix DMA-API usage")
Assisted-by: OpenAI:GPT-5.6
Co-developed-by: Ijae Kim <ae878000@gmail.com>
Signed-off-by: Ijae Kim <ae878000@gmail.com>
Signed-off-by: Myeonghun Pak <mhun512@gmail.com>
---
Changes in v2:
- Guard the cleanup calls directly instead of jumping between error labels,
  as suggested by Mark Brown.

 drivers/spi/spi-rockchip-sfc.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 662a994da60beca33358dc6af09017e88771d017..bc5537aee449e0c33c2d6ecf9d57205d432ec7b6 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -719,10 +719,12 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 
 	return 0;
 err_register:
-	dma_unmap_single(dev, sfc->dma_buffer, sfc->max_iosize,
-			 DMA_BIDIRECTIONAL);
+	if (sfc->use_dma)
+		dma_unmap_single(dev, sfc->dma_buffer, sfc->max_iosize,
+				 DMA_BIDIRECTIONAL);
 err_dma_map:
-	free_pages((unsigned long)sfc->buffer, get_order(sfc->max_iosize));
+	if (sfc->use_dma)
+		free_pages((unsigned long)sfc->buffer, get_order(sfc->max_iosize));
 err_dma:
 	pm_runtime_get_sync(dev);
 	pm_runtime_put_noidle(dev);
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

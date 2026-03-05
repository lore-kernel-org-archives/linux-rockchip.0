Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97CFEF3D311
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NLEHAb0Pe69aeAHMTMYvrGYy65Y4qLAtVVS4bvZ5m1s=; b=0T3srRxTKqyDHJ
	NGs2I/DjI2Qe/i24oPvheQlp/hixMk0CFT9vA3QxF3VJVms9O84DkRXqv4KLb4UGa3eOrsEn4ce2D
	25IM9QsWXCeN5HnqaadPFmkbiEybhMwNEGtXG08zALJ8oiZ4xORnykQ0Nf8fyANnVcj2Y4FtI0K6R
	Hxz5UQ4DAZUZeHWLZgfGp5eQp1MKa1MuCWIhNcw2Y9DrAYzWVQXBFSS1WD4jkN4OO92ORwOH+IDO6
	kt/HBvjOWwBrarPZCa1sIAZ5slLVdNg0yFEACWFesiG8xSTWMiK4vT5rKeiJf80gIF+gXyCUQyqsu
	wDA/ep7MlY/staxr1UGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyAmT-000000028Ny-3pSX;
	Thu, 05 Mar 2026 15:38:29 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyAmR-000000028NG-0kKb
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 15:38:28 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-829928e512aso212779b3a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 07:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772725106; x=1773329906; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p+rLnJ3aJ6D+F+fZbg2d06YcvZPxOEiVrOGPvy9ur+c=;
        b=J8mHWCkqlam2c7O9G37hWOEVUkF/thLl+MZbHUo6EanCJqLhPGLiHQ4qliITopFLLL
         jB24Z7OAYt4TC0S3ZUNfj6U7jOE3KT4dllQEK6aSlBESr3FuIB4VyTi1lAu08R7AJ7+8
         5KnltVhkz5S6vwM0oYlhLsGgO0B0cFVUEAC8RIbD1ED3BszeHA1w8jU6EBk4Ww+PteJr
         C63gMufgWt/700uOvNUKRU5Uz1VLSfUsd4YfGHsR16xQRIoCib/l8Rcw+eAq7KMRKB50
         EVGZs08Y9esnCrUrUp86fGSUdmBkTW+ISIhJjz01kvCtwmBv8SRXWt3BvThCZ1+TIBQy
         FAwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772725106; x=1773329906;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p+rLnJ3aJ6D+F+fZbg2d06YcvZPxOEiVrOGPvy9ur+c=;
        b=eaS/FzleGwqE09TfS/7Y8jmSc4P2R4KYGatBQ6IsnCvBjkQGTtwpll74OaS0VVCgtG
         AirTm+bQEBhTP0+dyfz7u2s+p7NU6tuEek+z/ojo7Vs4kkvJv6oDiY7TgwPatcVV7zBc
         SdR8bH3IoCRNciIJhPfvGOQrwZ18/OEV9J18OC6mt+6WU3V8YAiWWXUcpYeiV9deg9Hb
         366oWDzvP/ge0j4Y4mXCHUx28eB0TMpOUCNY4R4LCh+pJun4rTHusKu5yrHUtvXM9a4k
         Y08xKCTcirlKkk1HOHDSlrFDzmwpOZgSW8UL/GTtLMQyeDPEZKXhczWxIf2l/1824sJ4
         YclQ==
X-Forwarded-Encrypted: i=1; AJvYcCWpQf899h+LUVI5JJOOI5rDbmTVEt6fsx1CdFSqrKCbdBUmvvBCzsc+knm01uXijj/xrvCOpIVZS3t0glA9nA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjWczULyatiughlX825cdPa56wuuHtWOLF9swAzSktNRy6zKbH
	9xTjjHMG4Qli7haq0kCiTjl1oagxswalyWcwsvD4svndXMUMHqstmVuGvz14y1mOQpQ=
X-Gm-Gg: ATEYQzzxu2iVAF6sy4vdNIaUx5xZut8GLFbE2ljIJiUq691AjPhjIg86FJpAB2Pkwz6
	OMLm8X8whbxr1xYV/L3lZCuePUg5U5hEydtJMO/iJ6rDNGh2s+MK1+5huNovO2I2SivCpp2TflP
	eSJPC1PjYB9ldTbAK8QqQOuRgVuYbpLDKV46+hNfblIPFhSftZul4YNHUj+uqlfUJCERp6VbAeB
	RDusrQ6nXLE7uhPVekOpwZuREQHedMsgSO3TeCQSz/Lg07F90dN6qFjdaebl+k40nn67imD6P8a
	puiMLmMf42XOGAqTNUcJFczEbvRPb8+YH5LK7mks21vXjkeECCzW/tjYt68l5e1pOFx0diZHLjS
	lgTxtCOZXlsHJkUh1wdwz/LC0RfUZSAkllGxfukeAaHkOKGFYhzjNipMMqdTDu74mgwgQzUB4n7
	lQmBp65nKbZyIaOBo2+w==
X-Received: by 2002:a05:6a00:3d4a:b0:821:7d7e:41d5 with SMTP id d2e1a72fcca58-82972cce807mr5929465b3a.52.1772725105728;
        Thu, 05 Mar 2026 07:38:25 -0800 (PST)
Received: from junjungu-PC.localdomain ([2408:820c:9009:3f2::3a87])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8297d3d6aedsm3376850b3a.31.2026.03.05.07.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 07:38:25 -0800 (PST)
From: Felix Gu <ustc.gu@gmail.com>
Date: Thu, 05 Mar 2026 23:38:21 +0800
Subject: [PATCH] spi: rockchip-sfc: Remove redundant
 spi_unregister_controller() call
MIME-Version: 1.0
Message-Id: <20260305-sfc-v1-1-6fbf6df0e899@gmail.com>
X-B4-Tracking: v=1; b=H4sIAGyjqWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDYwNT3eK0ZF1jA3NzA4tUy5RkM3MloMqCotS0zAqwKdGxtbUAik9DnlU
 AAAA=
X-Change-ID: 20260305-sfc-307708e9dc67
To: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jon Lin <jon.lin@rock-chips.com>
Cc: linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Felix Gu <ustc.gu@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772725103; l=1268;
 i=ustc.gu@gmail.com; h=from:subject:message-id;
 bh=abxR5oIsLcrkxbLIHiQZCFRJOUOd6Ae6V6Vg+uXUVjY=;
 b=J6tc/xqw+Xy5g7gTlKOpBVM1cXwg5atz100uVzTGIdf5HIjfSEWQs+6wpbxq6GRY/zxwHcmAr
 vgb60XU41OnC3/BsuE0mAYuLmktzO9OE35d06KPi0QWgA3YedwXJ0WS
X-Developer-Key: i=ustc.gu@gmail.com; a=ed25519;
 pk=fjUXwmjchVN7Ja6KGP55IXOzFeCl9edaHoQIEUA+/hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_073827_211506_6803C35D 
X-CRM114-Status: UNSURE (   9.66  )
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

The driver uses devm_spi_register_controller() for registration, which
automatically unregisters the controller via devm cleanup when the
device is removed.

The manual call to spi_unregister_controller() in the remove() callback
is therefore redundant and should be removed.

Fixes: 8011709906d0 ("spi: rockchip-sfc: Support pm ops")
Signed-off-by: Felix Gu <ustc.gu@gmail.com>
---
 drivers/spi/spi-rockchip-sfc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 2990bf85ee47..19e832f045d2 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -740,9 +740,7 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 static void rockchip_sfc_remove(struct platform_device *pdev)
 {
 	struct rockchip_sfc *sfc = platform_get_drvdata(pdev);
-	struct spi_controller *host = sfc->host;
 
-	spi_unregister_controller(host);
 	dma_unmap_single(&pdev->dev, sfc->dma_buffer, sfc->max_iosize,
 			 DMA_BIDIRECTIONAL);
 	free_pages((unsigned long)sfc->buffer, get_order(sfc->max_iosize));

---
base-commit: 3f9cd19e764b782706dbaacc69e502099cb014ba
change-id: 20260305-sfc-307708e9dc67

Best regards,
-- 
Felix Gu <ustc.gu@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

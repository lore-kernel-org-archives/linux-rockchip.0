Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87396C47DDB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 19:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JepI0J/sENHUp01vXu8g0XKgyRqF/3VJ3ic3RjiYy9g=; b=kPaD9zjiBxuWSS
	nxo0ltVL6hZQ0H+En2icbTcsPC9L4P1ynO612jCWtJ/ARGpd1CFQ9N4XJ15bYlnAIp+WZ1RHNVz+V
	u/7Tygi11IO86PGT1HWOSKYhLAMakGDXAVS/0xzInilcNf1ZJAaokw6fsLAzRKN9MCDsmtavSEw4P
	SUsqLxUATZP/SKBm2FwqedWSoDUmlaaSssu/BHViEaTr6HyNAs+Zdizyth/Yhlzbd4rov5gc2HJRM
	FJfkE9yKxsLq4+fBfR8XvuL/XznOSgs0L+HqE1r66K+UfRsLelFLtiEgUp1FauDeQwXxb3SYsEzbb
	lmme3aPgVO2ugtYFb9Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTSAb-00000005H45-2kqj;
	Fri, 26 Jan 2024 19:47:21 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTSAZ-00000005H2Y-061w;
	Fri, 26 Jan 2024 19:47:20 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-339208f5105so975332f8f.1;
        Fri, 26 Jan 2024 11:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706298436; x=1706903236; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=GSMFl5nllj5v1PrRTFHuxExKyyAx3NuOJlgSRm6sXPM=;
        b=MTs7KeuIP2skoyTjNzwHspDgBLEOGwWyxdPzKzTbPMBmlnm4SC2qlvbO9HApaUcE6a
         ZaMe24MEDGEa2/+owm6Zf/wk1aNstFJjY76S9iPj9WBzcwZfYuLwUa43HQOwzUfVghu8
         I2JVxg2kxK19IVU3tGHvOyzJiSTpqe4JSy80eNLp55WLqvwLK8MS57xi9K69ekSA8Du5
         yhn/pu+GLF0zN01EbOPYzoVpmK2Zw2BGwz4MbpUGYp2m2NJaFlKFjh8XhZYrc/mDR3bI
         ztnPRDz/onKncF7o5DZnAdsuSy+v1law00eunkAUA86SthaC/kZzbSaMDoQdISHVKt6a
         DrqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706298436; x=1706903236;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GSMFl5nllj5v1PrRTFHuxExKyyAx3NuOJlgSRm6sXPM=;
        b=YFU5PhkWRr3M5ti/lYSQ+/3QEgnjsy4zv7QNbklZeo9m8S+/nde2Vwhi9fxJPDElbx
         1DZ5K8kte2gnTIuQvNV5CmoEUKKd/+YloDjhrkH+HDlArd667ccDnkCsTSG/AeCtl/H9
         HvRMeuS4k0KdHIhtANfP1NsON9nAqokUTHnkW09mgxW/jJ+qyJzPJ+DMfDvevda9jNs4
         gBt47v71cLMYumFaB0O1GVAwdwFaJAkaZReGdpkBDHBOGWPydEc6mgW1Flai7y1Ve6ON
         62tJNV63/TgXb90k10/+L65yTlXXEmuFyPrB5C5rZSAphuziYCF9SSyD9RDTek8oGRgm
         l1KQ==
X-Gm-Message-State: AOJu0Ywv181mIjhhvNFPsWdfdlNIbmSUPgk5ZsaBRDu7R2klNOUhXTDj
	b7Xd40pBhSdP7V15Ka77yQT4qvsKq0PFpj6Gx5i7u2LUiun/FryV
X-Google-Smtp-Source: AGHT+IF6Rga6mv64blYjD/Oft6VTs6a8MSrYnbKYGuy3EC8KRzyRoEb9bn2yxKYI0PL5WWPkLS1yNA==
X-Received: by 2002:a05:6000:1b07:b0:337:67e:a1ef with SMTP id f7-20020a0560001b0700b00337067ea1efmr100398wrz.7.1706298436373;
        Fri, 26 Jan 2024 11:47:16 -0800 (PST)
Received: from [192.168.0.5] (cm-83-97-153-254.telecable.es. [83.97.153.254])
        by smtp.gmail.com with ESMTPSA id eo9-20020a056000428900b00337d9b772c6sm1891773wrb.37.2024.01.26.11.47.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 11:47:16 -0800 (PST)
Message-ID: <fc9519de1d278c3f0f0ba8a9640b0499ae2bedca.camel@gmail.com>
Subject: [PATCH 3/3] spi: spi-rockchip: Fix unused chip select line when
 using gpio cs
From: Luis de Arquer <ldearquer@gmail.com>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org,  Robin Murphy <robin.murphy@arm.com>,
 luis.dearquer@inertim.com
Date: Fri, 26 Jan 2024 20:47:05 +0100
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_114719_087941_BE0077FC 
X-CRM114-Status: UNSURE (   9.41  )
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

From: Luis de Arquer <luis.dearquer@inertim.com>

This change allows the DT to use native c1 for a device while leaving
native cs0 reserved for allowing gpio cs operation

Signed-off-by: Luis de Arquer <luis.dearquer@inertim.com>
---
 drivers/spi/spi-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index e1ecd96c7858..e1ae62e8765c 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -247,13 +247,13 @@ static void rockchip_spi_set_cs(struct spi_device *spi, bool enable)
 		pm_runtime_get_sync(rs->dev);
 
 		if (spi_get_csgpiod(spi, 0))
-			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER, 1);
+			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER, ctlr->unused_native_cs);
 		else
 			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER,
 					      BIT(spi_get_chipselect(spi, 0)));
 	} else {
 		if (spi_get_csgpiod(spi, 0))
-			ROCKCHIP_SPI_CLR_BITS(rs->regs + ROCKCHIP_SPI_SER, 1);
+			ROCKCHIP_SPI_CLR_BITS(rs->regs + ROCKCHIP_SPI_SER, ctlr->unused_native_cs);
 		else
 			ROCKCHIP_SPI_CLR_BITS(rs->regs + ROCKCHIP_SPI_SER,
 					      BIT(spi_get_chipselect(spi, 0)));
-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

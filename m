Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D34BC47422
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 19:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v0lNAeAdWmObjmKB4LPNTmktEmvI9QhXt6Jme1xJxeA=; b=avO1UOOjADMCyj
	RI6sUKm7BR0pjdq/118PcaDak8yCLRijV61MYnkU5bWbaAwlCfKxdVBh5haDKfxVYJfX6Oj47TYa5
	vUgIbYUumEJWpZ/FKXjlg2D6zhhYhcIRD1/1RIjKWPqn+206Ade2cX4nfgob5pM7R5BYr4+GaSWn9
	3fg7ISSnXS5Zaufd5M02BfbRC6QNtBMXEojOyKhROiukp7ZP0/KKcYIcmC/M7s9sSQnW/Z+Z7z7Qy
	aVFbp7XoQkQcLv11WfIzfzwfqRqqm0JGc9J56oFe2RoRWdQJclL31Vlq6z0KDYRTiwj8UP3bVLjIp
	/bSkAU0jggcqv6xGNSaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTSAG-00000005Gx9-0SHw;
	Fri, 26 Jan 2024 19:47:00 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTSAE-00000005Gvu-1aV9;
	Fri, 26 Jan 2024 19:46:59 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-337d32cd9c1so905018f8f.2;
        Fri, 26 Jan 2024 11:46:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706298416; x=1706903216; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=0IIrz90wxugAXxqo1oEKAPrbqAXFmZOvUWx/sZLFUrc=;
        b=TxgpKbrK+KElIzmCo766IQRM9Zh0hqgEzGU7u7rMaeaXOqNg308S5D1Gz0YWRzbkM7
         yGcrn56wkLlYaLqowgglPSaK4xhG3pEzfAcUdU6ifORoOuZbbN6h21ZxZCo464K8IT2F
         6FtvpQ0YlgQmnNMPNQS50QAC2QEhC+/EiS3QwrM7jVfBVuTthVFRoOSQp7k0y8GcpWdi
         qRS6jf+di0CwHAyvZotMlfZDQmLlnZNzs/ExMXayb7FhxefiY6zAf4IF7NYw94+r1IjJ
         8cUCSYlmMkTcWub1jFo8VOd4n6DbgBeEEOHzPj6uvnG0fvwPosUOuTxGsKXEI2eIXzn/
         Tqqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706298416; x=1706903216;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0IIrz90wxugAXxqo1oEKAPrbqAXFmZOvUWx/sZLFUrc=;
        b=VjQwGOc2kbUqV7ivEHIJgZnHt9Vv2p4Em5uLJeaQYSYeqixyddXwDu4McxTSQW5wnL
         yygA8x020NQPWghALscnSMD76rjyu5FkTqsflYix7funwhGT5OWU6Gonhgwxd5bzHHST
         hCMTVQGarMiZZLmZRgCt0dxrOCE5EWqjho/W/QqBR9Dsb6wechvG5zT6xzugV+K6ZwjM
         DQMUfL6E1VBltAKNWwNVhx0JSztL1Y2rx9qGB3fV29nUkRc3Y9IFo5JlInbLWaXs8dF9
         Xec/9JfuW1eSPPt72BKd9hQuCTErg7F2J2KGmBpqs1jhBASAxH26cRbBp/0yPBfYBdKW
         1dhA==
X-Gm-Message-State: AOJu0YzLz/Bvpnw0N61dnd9YqmdS8JG5Xy8Hv4ODULsjV6ABG/J4G3jq
	1aV1aziV+xEvN4i08nM8j76z6Q0qIyk/uIPQErbl9Ztxl1Tovs//
X-Google-Smtp-Source: AGHT+IFtcvfcwyggy7yof16qegpXOAcbCVaLwA7I4eH2tEs0+zqJOppVHA/couG3saqmW2UUqbqyiA==
X-Received: by 2002:a5d:694b:0:b0:33a:dec1:308e with SMTP id r11-20020a5d694b000000b0033adec1308emr138083wrw.116.1706298415756;
        Fri, 26 Jan 2024 11:46:55 -0800 (PST)
Received: from [192.168.0.5] (cm-83-97-153-254.telecable.es. [83.97.153.254])
        by smtp.gmail.com with ESMTPSA id j17-20020adfe511000000b00339214d70b5sm1876673wrm.85.2024.01.26.11.46.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 11:46:55 -0800 (PST)
Message-ID: <4d18808e85b85077761c5655083f20ebfd7d3770.camel@gmail.com>
Subject: [PATCH 2/3] spi: spi-rockchip: Fix max_native_cs
From: Luis de Arquer <ldearquer@gmail.com>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org,  Robin Murphy <robin.murphy@arm.com>,
 luis.dearquer@inertim.com
Date: Fri, 26 Jan 2024 20:46:44 +0100
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_114658_459428_372CB976 
X-CRM114-Status: UNSURE (   9.74  )
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

Signed-off-by: Luis de Arquer <luis.dearquer@inertim.com>
---
 drivers/spi/spi-rockchip.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 2fb2d65bd5f4..e1ecd96c7858 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -160,8 +160,7 @@
  */
 #define ROCKCHIP_SPI_MAX_TRANLEN		0xffff
 
-/* 2 for native cs, 2 for cs-gpio */
-#define ROCKCHIP_SPI_MAX_CS_NUM			4
+#define ROCKCHIP_SPI_MAX_NATIVE_CS_NUM		2
 #define ROCKCHIP_SPI_VER2_TYPE1			0x05EC0002
 #define ROCKCHIP_SPI_VER2_TYPE2			0x00110002
 
@@ -839,7 +838,7 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 		ctlr->target_abort = rockchip_spi_target_abort;
 	} else {
 		ctlr->flags = SPI_CONTROLLER_GPIO_SS;
-		ctlr->max_native_cs = ROCKCHIP_SPI_MAX_CS_NUM;
+		ctlr->max_native_cs = ROCKCHIP_SPI_MAX_NATIVE_CS_NUM;
 		/*
 		 * rk spi0 has two native cs, spi1..5 one cs only
 		 * if num-cs is missing in the dts, default to 1
-- 
2.34.1





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

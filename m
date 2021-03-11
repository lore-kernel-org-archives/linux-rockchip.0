Return-Path: <SRS0=iGaN=IJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1420C433E6
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 51CB464E31
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 51CB464E31
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aJ8Ox+Iwt2Q9rloGkb8jgKc/fxCp1XPywbbKbeN/hXQ=; b=EsHUETS9/A/cesPRUzVUHzN0G
	qL7tkXTD2cDXuRTQpqQGbWaQimtRDp7Jubnp3kba3GmVnkhfsoo7R1yoxXU7lj96IxjEFUevjPwu7
	LF9WL6q0W6Njs6uy3u9tj8J13Ls4dw8dbCDE0xTW8XoY9eg9cfJio/+U7re3SRW6eP8GLWEZ6xCg2
	urYSykt3mqlq6IwWj1Ftts59B53TZQPVilodUtrGG/O4kY5C62d00l5/NcwGZ8aD1nz5NIqdG60JQ
	8iWSM1zS7oW1E6elMn1WPBYE5b3XVwUF2RrGk8XpRQI4SHAhFjlKxQugNzRfp9K8EmMEFD0aHYLnB
	/ASypiDMg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKNRA-009UIG-7e; Thu, 11 Mar 2021 15:41:21 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKNR3-009UEd-1W; Thu, 11 Mar 2021 15:41:14 +0000
Received: by mail-wm1-x333.google.com with SMTP id g8so1583213wmd.4;
 Thu, 11 Mar 2021 07:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MLfi50uYgnTaoRAwVdM8rA06MiTyx2y/gOOhlp7gAUM=;
 b=mElIjjBS5Gwjfkc14YbmdXNf9qs87wJ08dzZObe5fEyfu0me0PGjGxeJriDc/LxJAx
 aZhvoX4Jjzk+ElUgr3rZR4iEMxYhbjK77G5WaPa3j6ekfFBXflFj2uPVj8HZeePjtfGt
 cV+5Qh00VDY9mhPo4zY+/c/rigmRJgH2ZW2N9yL5+BCaSlBtYqBTMNz47ZKG6TDGSJRj
 u2gYxNoAfgI4LUNmsfDqa/OAlCSgk1yN2l7DbEK756jaRk3TXOGiGbjVDBXaxTRlhvE9
 wIoJOF9SXRQk+Wc9uTryeQKg18VW3UyfNKQxrI62YKBgeu2PFOCgodCjnnSN/DpKEWHW
 GkVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MLfi50uYgnTaoRAwVdM8rA06MiTyx2y/gOOhlp7gAUM=;
 b=Hnm+wQqx+bgtxjY6CvSl80XnH3U7UxDZJWyaVsNOdF6cxuSFzxsgS2V9Np46bUctZI
 34u0t+iZ6ZEacYek7hm4bb8VkJY27rtvRKdebgEGMA1JF+yk1K0it8JmsoTm+iXZ8ROs
 wgJITCC19aRQbL8vyTAyxPfRUbXD9mYUIHFj+7pSU155zg/GmHn0/P+TNFqa9vbAIVSQ
 nifTw/1e6IALBanLT3Wcu3tvTsM28n+6qeOh4+re6giRr2oq2E0E+QoeWC3e3ix0aFmM
 sc7XWrkRUv941gKCpDMUVX3vVTWUJOXb93S1Uzub2/5NOmry40cGtcvYpaHXLSPIHA76
 7WfA==
X-Gm-Message-State: AOAM531EsmsuM0o6YPKIoWCQmMvH2zP9WCRC/GKrlmAc0X7cNBpAsJ7+
 wCJ8yNkAwqkcUz9/M0hBcJg=
X-Google-Smtp-Source: ABdhPJylGQtM/x2x9fB8CpajlovzBFYcjziolbH7jjBKfsNn5FDHoIgzRKDtgrT22KZ4yv/3YPHtag==
X-Received: by 2002:a1c:5f89:: with SMTP id t131mr8527466wmb.173.1615477272567; 
 Thu, 11 Mar 2021 07:41:12 -0800 (PST)
Received: from arch-x1c3.. ([2a00:5f00:102:0:b16d:9752:8f38:7d6b])
 by smtp.gmail.com with ESMTPSA id a17sm4008547wmj.9.2021.03.11.07.41.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 07:41:12 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: emil.l.velikov@gmail.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 10/10] ARM: configs: at91: sama5: enable the Hantro G1
 engine
Date: Thu, 11 Mar 2021 15:40:55 +0000
Message-Id: <20210311154055.3496076-11-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_154113_249934_E361F178 
X-CRM114-Status: GOOD (  10.40  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Emil Velikov <emil.velikov@collabora.com>

The SoC features a Hantro G1 compatible engine. Enable it by default, so
people can make use of it.

Keep it a module, as suggested by Nicolas

Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
v2
 - Split out of larger patch (Eze)
 - Build it as module (Nicolas)
---
 arch/arm/configs/sama5_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/sama5_defconfig b/arch/arm/configs/sama5_defconfig
index a5f274e39753..5bcf16aecf2f 100644
--- a/arch/arm/configs/sama5_defconfig
+++ b/arch/arm/configs/sama5_defconfig
@@ -200,6 +200,9 @@ CONFIG_RTC_DRV_AT91RM9200=y
 CONFIG_DMADEVICES=y
 CONFIG_AT_HDMAC=y
 CONFIG_AT_XDMAC=y
+CONFIG_STAGING=y
+CONFIG_STAGING_MEDIA=y
+CONFIG_VIDEO_HANTRO=m
 # CONFIG_IOMMU_SUPPORT is not set
 CONFIG_IIO=y
 CONFIG_AT91_ADC=y
-- 
2.30.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

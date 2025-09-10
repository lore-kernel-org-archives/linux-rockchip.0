Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 467DBCAC58E
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 21:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBFEuUnw/qc3nxMVjQjsgi7pAIjhY8Bi+U6jgKKCPA0=; b=u4NiX//oYlROsw
	sN6fWvELNoitNrMvuMZ4ZglUUMz1dcNYPsMrHdfF8zzAmjYZVruYyk79vO6V5gGy6GYZ8O9lVH/Uj
	jLt8Ptyn4V8v1UBdoiz10j1PP89azDwFE6iW6+Woh5RTcRUHtm7AWCxN21R6MXutLuDmHBLThAUM3
	Nbt9htuX2ntWFgVcV5Fld7obuqPMTxKJisuSfMyeYE+fRrQhQkFKgJlMi5gxFEc3Pms60+NWUOvNf
	J98ZOosdv288JbG6yUwubkoHElnSQ77zpWC1yE+u1qmdsfBvhX3JbbmnJL5ofAfFLpWFHksUtDNd+
	r7FJYP5e3fpasvrJ5YaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwSma-0000000Gxze-0blu;
	Wed, 10 Sep 2025 21:55:16 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwSmX-0000000GxxG-2ZrM
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 21:55:14 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-b0418f6fc27so7647266b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 14:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757541311; x=1758146111; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WZJ6ySHHCRO2i8bugxvlcllCxVvLcZQKzmQs79wjff0=;
        b=jZKLmALe5zfQW1lfZ5sTnkS4LdhTG6k8woYgzAeHJ3leWOcT60uaUCMVo5bhyA9y29
         xPjx1kVRsnLtBF1Z0/98bh/GN9imaFsRDO4rNW9ckXVAcf9Wwcnvo4Grm4QgBpVt13H2
         M7VC0h/Zzn7GsqjKugk3fR2aBYjhLyECLSR0tFf+xMLqwUA4yu22pHgIVCl9/urRjW2I
         FKKO0Jf6kDli284zmg/oYAL0TvOgo63huD7naLykQVOtspYsGkj2+1vtSR0V3Gxg2rZs
         P/gwZMFVrSyn8a+eyGlKkgdLmYuoWDokN+cX9KYjbMNoRwRg0gxem5MGaSDTyZ4CJ4cv
         jasQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757541311; x=1758146111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WZJ6ySHHCRO2i8bugxvlcllCxVvLcZQKzmQs79wjff0=;
        b=QVw+IHqbTX/byRlwylZ9B4qzyPP32G9fdwdHv+kW+nskgwnjM2QXVYfwWxLlUPMrnN
         P9B11Yr4icKttgLe5fvToGnHhPJpfm5T+17omwkA1PpvIfqIWc6Vf5yYd/ZdHsXoqWwp
         sEzkXb7C67+loCzu7uP5P4myVb0R9rKZ1NphfAj/bjm6ttxzlHdrh0Og022MYJ1bFaP8
         gtMUTo6kzeW92Ri35UeAaRw46LzqyHfrp7vFmyZJIPZMsjOJwccRGHG1Ci6p8J9GLgzc
         FwzOd3RVpjeQv2T7hhVEZNcMrFTZ2mB/EJrto/VvmAkKHqbYSMayEZ8Cukd6YVH9zukW
         qotg==
X-Gm-Message-State: AOJu0YwXfVid4JRVqy4oPJ9t901nljGs8TVLzq12vzuSRiU8TU53bWtT
	vEZoWuHHqD20y/POSmGXmLePIqes/P5D1tGgNdxNBbqZ16SZfJTN7Y5NgMrIQ4sJ
X-Gm-Gg: ASbGncvakB01SQaYU9rfBG+SUqzYy1Lmukmk31dfbKDrH1lk3wD3uTgeovvoETotJjz
	J2gRhIc6oJZUg+fsXnSqDSfeeGmLUFu5JqaRuQJ++oUP/U/U3APgmYAMZQNWa/91ry07Dq0yG8S
	QA7SRRx9foQbXy9C8WqLj5mmZ6teYP+2eDv7hJmy84PcqZ9PiP6j+UzceuCvfr3ObBXdJzaoBUM
	KmZIY2eBcquNmz7orO/3Pw6W9N+H3lUjv6uPGKLqKRRTJe80qWEQRYAbnWjn+v4xQams/YQXL0a
	C5TZzVUd4y1OPFYGv1TNfiYPu9qP3v0Db0YIji5qwbQmR87d/bbWbNl3ivlReaf52UVfqCcBIaQ
	Fglw42iNQqKvd8vQ5mEVGtEArjs7S/mp07eJZRgzmZAi+QJTd7gVOHcH3/w==
X-Google-Smtp-Source: AGHT+IH4N0RyLu0ma8U45fXIeHPchQTZgWd9YRyqf9UWVglJb8uEJSZ7pTdk0RS8QFODUxyGB+5a6Q==
X-Received: by 2002:a17:907:3f21:b0:afc:cc64:86da with SMTP id a640c23a62f3a-b04b14f5015mr1639597966b.26.1757541311277;
        Wed, 10 Sep 2025 14:55:11 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07830ac2b6sm240517166b.27.2025.09.10.14.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 14:55:10 -0700 (PDT)
From: Andrey Leonchikov <andreil499@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Andrey Leonchikov <andreil499@gmail.com>
Subject: [v2,PATCH 2/5] RK3566 BTT Pi2 - Fix GMAC default delays.
Date: Wed, 10 Sep 2025 23:54:44 +0200
Message-ID: <20250910215451.2244192-3-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250910215451.2244192-1-andreil499@gmail.com>
References: <20250910215451.2244192-1-andreil499@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_145513_658785_F0320141 
X-CRM114-Status: UNSURE (   5.44  )
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

Simple patch to avoid a warning on GMAC driver initialization.
Default values same to a manufacturer DTS.
Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index fdf7d00edf4d..d31b9bd54162 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -265,6 +265,8 @@ &gmac1m0_rx_bus2
 			&gmac1m0_rgmii_clk
 			&gmac1m0_clkinout
 			&gmac1m0_rgmii_bus>;
+	tx_delay = <0x19>;
+	rx_delay = <0x05>;
 	status = "okay";
 };
 
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

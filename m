Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28073606A330
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 20:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=a8ZFKSuz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=gV/RQ3On
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9/sePwbJfv9VDxyypbbvA/WD1iImQOV60NM3aXPSMO4=; b=a8ZFKSuztxj83/u4HY0wVlPJ3v
	dFYFVHB1fl5zAiMVCpdVYXOJcfunsDuqj2sMDAabsimqZqWgOnf5ZM9OPXfPGQRWzUYhNkrRAzRzj
	C2k58Lc0aXYYpjCbpsXDwPirU0zpdK2vQ+gvgSKYLfCRkzhD6RRYYdtc1Fsrz4mymFTQa2VcfOJSG
	tLbf8CBHJN2dyAuofrv6vmLXDZc4RS1qpdaTjvcaynczJJ948JPDKDhE9WQ8JW/Xicr31pVbMGuHV
	SatNdu2J9RBaLy53o9sL6iGNTTo4hWHZzWYkb99fIP6Rlistw5ViK5ERLpNRRqN52d+4/yL73XSfr
	iZu258Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFMz-00000007hDR-2hfo;
	Wed, 11 Nov 2026 20:56:37 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFMw-00000007hBp-2OnL
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 20:56:35 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-4b190cdc9feso2060294b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 12:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794430593; x=1795035393; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qGWgS1kK7bTN+UKMspP8Lj57f8piI162PVpn3s78g9w=;
        b=gV/RQ3OncSBRsCcn0vJvD7zhFqExS6exCSQclJ/Y6qXp+jJYeuM/hPjYE17V3Gz4wA
         /E/GyorPH3eD41nv4BCh7BFGHP9/7XTtkvwNV/eebdBv5Gy6NY58pVy0ONNw940c/5Ga
         L2uALX3ccZ9PCkAuzukh84v3+oqt2wS8D9GOhsXqfLkjfJ7NXqAzp4wMigymK+KU+9wE
         U0qp0FKetUTLXazbW4mQQtQ2CBlzoikamN4Ei2iA/yUGH1vAdWX14FLf7vbEnIwCBGdx
         n2DnK+jXoFBw9yIRxne0JW2PcyHSV9I4hcbb9RRac4bVY8w/2VYQ751gulPxNDw7tDlm
         FciA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794430593; x=1795035393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=qGWgS1kK7bTN+UKMspP8Lj57f8piI162PVpn3s78g9w=;
        b=pE0vGJV6HLUkFNU9WFzjp5+lw6t+HhBSLg5h0jyKJZbcawWjr8IaVIML9nK4GxRUnG
         ec6RWfKp8EUViP7c/i3bq4lF9JI2u33Byaa3Bi6W3nqNRoapNyzIvsvlW70v599mllGh
         mOjuMm4qev10VOJ0voqZwTin+N/2M4F6ELcAujZK9wQNOlg/rwSt3rGjTOVVrYWW7B0d
         1garhgBUBhLfVIWVk+QCAt1mKvl7R1EoZlmb6/szOCJhF/p4GCMWcJqFbX/F4a5ZcYCE
         ab4ZljF7ul1nYkk6rrwS1GowXTvYLpFjbHRdMI0Phgl63HtqykUeCcaWvD2/Lk71rHLv
         JIUQ==
X-Gm-Message-State: APuU4Z86sZko2IvvuAOu6bKrIQEY6Z99ouvVgISIvZ+twP/7P3LlGVRV
	ubleEOEXpSffusIE6dbt5/glXxDz31kXgt5lstXNT4MXagds5BBaTJTgRGxmtZQ4
X-Gm-Gg: AYBFou0/+rSqOQJtnntgdb5cnsqlWgohZYZ+u7Skc/32hbuTGmRUPCUpRP3ulGJwNtT
	aXEjTejNgk8ayMfhEIF7/55aNoLznNRmiSswSZ9obT8+Q2BJaYBKg7+o//R2h/vXbcAgojzVZe9
	N5mxn37QIqFIqpJiPP3iOIO7bFvHe1n9T/4OO7fB87shR9mGsyCrSweJjQsG9tv4+ofZAHxFAGz
	Fex84CuhLswSHL6XVIeSKedM7E2ZvsrFPFgAEqbQvD0usBBey58azQJd1KxNleM0lX6w6pbQaL5
	zYvIrJeAbmqCFAF1v1GBLCv12Vrrfzp+b7YXkhA3b4LZx2WHU0nXYxWHRLngaHJITvkir1eu0V1
	sEl8qzepJSn/CpCFUB1FqRFU4GQ4VJYPEn7WGde0KyPOF3jMno8w/lb8y/bBbxUrmPpnMXFLTvR
	jZ5S2i81tO2QJzHPpOU5KLJsMVuqbZR6YYJELJ2aNAEicOKmwXeA5FLQVTPPlLy6/huCT7EQLJ8
	wi6oLaeFnvgvN6cgN3EM9ld76CogaMg+EQlY9FH9CCyrl/L9FR14VPqL6Q5eA6bStvtq3MITGc/
	ilDSOcj8LE25SovoFQffsBJ4zH+s7g==
X-Received: by 2002:a05:6808:6605:b0:564:347c:5aa3 with SMTP id 5614622812f47-56b9344c04bmr3276602b6e.2.1794430593243;
        Wed, 11 Nov 2026 12:56:33 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56906036028sm6564231b6e.11.2026.11.11.12.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 12:56:32 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mfd@lists.linux.dev,
	linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Jacob Cook <jacobmcook1984@gmail.com>
Subject: [PATCH V4 2/7] power: supply: rk817-charger: Fix NVRAM SoC value
Date: Wed, 11 Nov 2026 14:56:22 -0600
Message-ID: <20261111205627.56652-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261111205627.56652-1-macroalpha82@gmail.com>
References: <20261111205627.56652-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_125634_639630_8042B01C 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

The NVRAM value is stored as a value between 0 (0%) and 100000 (100%),
but the bounds checking checks and truncates with a max of 10000,
causing a value of 100% to get read as 10%.

Fixes: 11cb8da0189b ("power: supply: Add charger driver for Rockchip RK817")
Suggested-by: Jacob Cook <jacobmcook1984@gmail.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Lee Jones <lee@kernel.org>
---
 drivers/power/supply/rk817_charger.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 674622398efa..39c945622c4d 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -728,7 +728,7 @@ static int rk817_read_battery_nvram_values(struct rk817_charger *charger)
 
 	/*
 	 * Read the nvram for state of charge. Sanity check for values greater
-	 * than 100 (10000) or less than 0, because other things (BSP kernels,
+	 * than 100 (100000) or less than 0, because other things (BSP kernels,
 	 * U-Boot, or even i2cset) can write to this register. If the value is
 	 * off it should get corrected automatically when the voltage drops to
 	 * the min (soc is 0) or when the battery is full (soc is 100).
@@ -738,8 +738,8 @@ static int rk817_read_battery_nvram_values(struct rk817_charger *charger)
 	if (ret < 0)
 		return ret;
 	charger->soc = get_unaligned_le24(bulk_reg);
-	if (charger->soc > 10000)
-		charger->soc = 10000;
+	if (charger->soc > 100000)
+		charger->soc = 100000;
 	if (charger->soc < 0)
 		charger->soc = 0;
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

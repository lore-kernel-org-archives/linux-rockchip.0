Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094ED606A31F
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 17:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ubA2h0/b;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=sM05TuBf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qP8fFUshj+vwfupzR6ut0ec5VeSryMj/CNc0twnfuZ4=; b=ubA2h0/bP0OwuJc7T85tzXmAwO
	4csnrLFnx0toPBOb7O/sbPJoduKVfGLSU+ONqGWIWNfKr/W1x+NOlnazaC2L6a7PZZcKz5nLaeDgu
	bl/s9QY1CX4WbWjPvecrGqfBx1EcAMX0RKBG7rghfJqxIslCloHk/Du0GUqJMRtMzaE81ZqOlDVsY
	KQi9cDcKmJn7eJ3SbNpNnz0Fb48ThAKHUca9rlNjCaNpVpWv9CE3DFRhS+VICQt6JhfUN4WrXCPGz
	BqcyL/sfOJXufHAI7kWvtGMGPwG5QBVH9ytoQ28n34QQxzJG2pjmywYf2O5YVji1ow4TULG/kAsHv
	I6nUF8zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLOoM-00000003183-3QGD;
	Mon, 26 Oct 2026 17:48:42 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLOoK-0000000316c-0dnN
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Oct 2026 17:48:41 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-4a77dcc4ca0so1568440fac.2
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Oct 2026 10:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793036918; x=1793641718; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=no08TYy9z5N15Gfih7t9dZs8POOT+RS2X8Q3gds+d0o=;
        b=sM05TuBf+2lc/5UJlF6t6SCU7lBEp1gvFa15hHqoiD7uEpBFFVY1lJji/GsZVYowbj
         55HGv/jGOes723so+GO12LwklJMbNDWNXg4qV7tCUPUCLJ6BwsjbAoxe3ZHoG7xECkfc
         FUJs+UZDxORAFQaoOD1nEjpxxADbeBOn4+5iWCyLwJ3wmojKhJ6+vi8aQF1WU+0BOieI
         zgZR3yenNjn9PmGmzoILwDp6OWqXDGHZ2HvXDdhty6SngDJi6+O8rWus7SmS9dgWaID7
         JHAlwxB8S3ntJR0SR8FhRTnfSPutXE2t90Sgf4u/oofrGqS5sUOQpecruwMnnFB3tn7H
         +IqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793036918; x=1793641718;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=no08TYy9z5N15Gfih7t9dZs8POOT+RS2X8Q3gds+d0o=;
        b=YkuNIrApM2U9j5dhPmEFlQCBQLN3SyoUcVZCTCZjh8TPUC6b+q2sC5hpO1rSeiN87u
         UtHLDP+EQ19tPvQMRImW+koDzrXF2c+KPzaj2HLAv5FAtjhBCimWgx7QZl7jCbDeik4K
         yAJu4Ak84cihz7/Uigqa/F7TlVul5FABaMOuV1i2nPxQ/uT3/bo2A4z+r96B7jH5xIFg
         fZG3YBXPP6ZzJLmkcVWheboy9D94H/6hlEk+YiHSZl3iJGlDK1wwhbAUspLKiZkdi/QD
         zmd4m09wUueINMOxyfXPUQ0QazqrzsQMwn8CO+4GO86gt7HZLoRn8tSkXVUAmJ4JrsGO
         m3NQ==
X-Gm-Message-State: AFq9FYLedYOONxX4bW6PH4sKFptvQXsYg/PZkXAFiIrVndH4Bx3YHVq1
	xX87wydtXJwR7c7QWiQmALGaSg1N9Ktbe4sBWnP1Jz9uPWDnjlYB6dpgopOe5e3E
X-Gm-Gg: AYBFou0Ory7yLGJklbm/2oB6liWl+DM4A8jRjcP/BC39IebArOvpqkDNQI8G+HIItnZ
	W3f6KoR2mUpjbRjDO7JFp5HucIHMB1TLPEE331ZNZCqpUXpBE4d1iqEi0noar2jUR0ratbjaiHK
	xUEMhBH9XQp9t82ZyhYN/+28uik0vIIlEO4nPzy25xRESgvnoPb5VJbvYJvOBcSFKF+0RH8zawp
	LYlMHeP61BEcT7f4xUTVxzOOok0FAZGwk7iz5rZfBcEZlQqnn1WNqxr5GVrsBQEt5rd1nZzNMWX
	WGuuSq1eXD6//p1ZMwVQBUFveKxKrUXDemmr6PZRtRXiIKCM4xi7stuwmsEjUgwngqobRRe6BfJ
	df5inQDpqR31jtoALmFSxnZ6qQX9BsNBhlPlKUjaa7KKDzFAkYzDI9G1MF1eAuycI9DhO+WfHI8
	hNs/Mvnewgsi3r6YgIGfWMefKIGPDlQ7KI/XtjDgIUJHmvwXIJSebR1G8pgzxVYOt9sWn+HZbS1
	B/tZFVHMGtf6WGiOGGBYfKVjm5rCr6I5/rXzHuU7+dKIeMchLyUeQQJPjm4kFMeB1GzkmhhxynJ
	9eG00F8bCUpQhXxRI2rB+6VypsxAoQ==
X-Received: by 2002:a05:6870:2c49:b0:48f:e107:317e with SMTP id 586e51a60fabf-4a83f5d590dmr4738136fac.49.1793036918122;
        Mon, 26 Oct 2026 10:48:38 -0700 (PDT)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4a842e89e33sm5034753fac.1.2026.10.26.10.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 10:48:37 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Jacob Cook <jacobmcook1984@gmail.com>
Subject: [PATCH 1/5] power: supply: rk817-charger: Fix NVRAM SoC Value
Date: Mon, 26 Oct 2026 12:48:30 -0500
Message-ID: <20261026174834.1652309-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261026174834.1652309-1-macroalpha82@gmail.com>
References: <20261026174834.1652309-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_104840_209429_78C6206B 
X-CRM114-Status: GOOD (  14.08  )
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
---
 drivers/power/supply/rk817_charger.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 5558b182a1a6..86da0462fb59 100644
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

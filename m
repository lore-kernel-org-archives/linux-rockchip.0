Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12AF606A338
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 14:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=up3XUKfh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Oplp87Or
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9/sePwbJfv9VDxyypbbvA/WD1iImQOV60NM3aXPSMO4=; b=up3XUKfhlBt8ckpFNYhRkRXbk8
	WYeWaNYkQ9XJbT3yRkiWnBv0fIN5PDtzt7V6t5G4mkfD4KyLJi5JtylqHzGqXi6jFWyMQpyldJlZH
	nnxPSWSmqt5/QI2fyGVyCHDmS7bIvz1oGy0GrFdDz6YVBsJTkdLYff8A14ihlO0oOz5AwRFKDOiiI
	RX0y1y26DmMlbowxgmNs9hgddrBFujNwPXwKHymAhiFury7mLKrC40R6O+XJFXa27F+9d2MHoxmeo
	RQcR/zeCfxeI1vcXRquAWtbvcJanDIH0gEHvj/M/YlzBN4J9Hbimz/dVfuqozB0ZR1S4/JGZ0vpKG
	D5772RVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpb-0000000108r-2rTn;
	Mon, 09 Nov 2026 14:58:47 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpW-0000000104Z-0kEq
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 14:58:45 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-486f013db83so316429fac.0
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 06:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794236321; x=1794841121; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qGWgS1kK7bTN+UKMspP8Lj57f8piI162PVpn3s78g9w=;
        b=Oplp87Or7SV3gCht9B7WRE3zlFV+sw6jCMjwifEBbLj5stO53y0981HgVcBg3IqBAp
         W8gIyUJZDAqi/czBZP0P2n/eH0AEw1zZdiHGRRT9uXqx35J5AJV9iCBN6MuJ7lF4FOCK
         nClA1FC6d4aieqP5ux7M3ibomLmvDBS2Xur+kdurMQK+YPJge00YoUEXmGM/KscVnaX8
         2677VRpEKIBh3Jdqq4qYYLIEiOWyBbAi/OqgjfMcCd3PZz7SG73HvQalhRs3q5ncNqS/
         /oQ7vI/xiftV/+kvkrQBB4+lt1Jfwf61seO4HR6zpEDZENPSWLatozXDjjz+RHbqpXHs
         cF6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794236321; x=1794841121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=qGWgS1kK7bTN+UKMspP8Lj57f8piI162PVpn3s78g9w=;
        b=TLcfzO/ujJlt7PyTyBJ2XUAlwCk0wRYVKYrQ439BYsc4oPwDkxnYOCb7bK/8M6S/KA
         vM3LeoBDMF6N6HWMqYkRn7K8K1EVd1qDim2KrAIrH+g/ENztdnBNOpzvYh+31K2xgypP
         XTQK1Z1s75npSF9xMIHPeNSXhBdjCX7474Tr4lXb7EbA039R6Kx1LO7zXC9b1TjY1PUj
         +pwroNC3P5rJAxRW2R1ernnnvfOzHcb0arOqgUz8Ffu2Orw1DMZN7ktEUDXtGl5AHkNK
         IDqffq9E0Lsv6nDEqQD+1dDRDSKflZZ9CtqDfrSOmz71qTYZnG40h9z2Hqm4ZF8WfgrO
         G4/g==
X-Gm-Message-State: APuU4Z+g8hKNYgEk1WPr69rprQFkJDxiifFnM80l92Ku2uLwtFnwxbc7
	gbJctdIWn+/DF3MFX2bcgB9bFuIlOIQLv2+KpSsAmE5aB5jFKk/d8vr+VgTJ5Hu1
X-Gm-Gg: AYBFou3F9jGs9LApe6gpYnO4Jn9GQvQW+TjtYsrAY00M6EXmiJ+GUtVIobzBz0dkM1Y
	zVa5aWJ4AEm87CQyjvMcRhNJ1316ZFRE5ui9eBvFH3XmU0wAiLLH0TzZ7jnP+i2WXK2/Jp0mjDr
	1Es9DBVpTt1LhYBAaYGVWZxiD7PSAda5KPQ6X3QUOkgOWKpI2rStvFVI9DeC0/Z67v857VkmXOb
	1tkMuovIVoEUShLUd4/54GOzBQxmnf+7jOkc346+IYJmfjCzwiZF+1P6LdH5+hlqk/78TL+1NgV
	aju9fRYGRtAQApfloxlXuAqEG6a3RJ4jeZKTXacjlrlepybQzSS39wRmNQE0o4J+hnXEFF8Jcvz
	kLCcS668j3UyOUvlST3XWONxCrb8mh7Gbjgjx/812Uyq30At9gOucQMobi7jne1a60aVsfsYL0W
	Rk4tJm5nSwPVvFlxSAgDJLzM959SEbpyFAME3OKd2z8Ug2nb5CsDXr9wELwV6ZHzm5oUMYYTEu7
	zdRcDqmkIkcBJQfZV0HL1H+Ckx/9kkU0K7rLHd07a9kll4L/3BnQuxPFM02qMPaRSLrzbWyraKU
	7Fz7O0ts2zPEPfENL9BHt+BaVpADAg==
X-Received: by 2002:a05:6808:2211:b0:551:eea6:9397 with SMTP id 5614622812f47-5681463f7b5mr2639979b6e.59.1794236321012;
        Mon, 09 Nov 2026 06:58:41 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56813e54ff0sm4667618b6e.16.2026.11.09.06.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 06:58:40 -0800 (PST)
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
Subject: [PATCH V3 2/7] power: supply: rk817-charger: Fix NVRAM SoC value
Date: Mon,  9 Nov 2026 08:58:28 -0600
Message-ID: <20261109145833.1363319-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261109145833.1363319-1-macroalpha82@gmail.com>
References: <20261109145833.1363319-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_065842_221986_B112C47F 
X-CRM114-Status: GOOD (  14.06  )
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

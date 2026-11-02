Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58833606A5B5
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 14:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EIgfEu1J;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=cldM5PV2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qP8fFUshj+vwfupzR6ut0ec5VeSryMj/CNc0twnfuZ4=; b=EIgfEu1JWPlLv0TcMUexrYivOB
	zkGDjKEn0fNBC512nmXguAlg/Iq0vPxGBGSE5OVFjXb2b05DY7uLFdA/7ISmYwI2fHAJRdbgiZwzL
	cc0PG0wTb34Wd9n9u4He/+t5NUKmh8v3jkkDSEqPUu+ZTkQnwPI3OMhYrCoWV2KbO8TqwGqVvLWkB
	BiAlIiD8x/RAc2TDU0RlSmn9JBw8ltB5UNwVeWCKjAH+F/4QPjJOeW7TgjfgYWcyzqvrYup17vUOm
	bQ/xp1b3qQWNa1hifxc/avik+MI4xqPor1NfWq7cNTTMLUZYC9K1ArJmN6pP2qJnnU2ayZdbza5Pz
	87IwL6Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtCR-0000000GrNQ-18G2;
	Mon, 02 Nov 2026 14:39:51 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNtCP-0000000GrLL-1296
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 14:39:50 +0000
Received: by mail-oo1-xc31.google.com with SMTP id 006d021491bc7-6ddef424972so2166276eaf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 06:39:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793630388; x=1794235188; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=no08TYy9z5N15Gfih7t9dZs8POOT+RS2X8Q3gds+d0o=;
        b=cldM5PV2OSB0TYRHIoOq7euzP4EBIJy13HeZpbn+SLfdwqaf3StwwsGpKWLsuIsFyr
         uN0AqmDNR+rKzaccznPT85lrX4hD7wYqk+lk+yUyNiBBV+DXzFyBAGCuRr15XACPlI07
         M9Aj1lHM0gJ5mdHjGZ1LRhZVu4vPbMPZ61pAv8p5W2fUN3jvlkBap3vLszyAs+PbuaZy
         35T61ZD655e8dlrqK2jcb15ITpYkzivkBE0Ga2rFoVNCkX9i1RReMUPIOVS3Rniyh5p/
         pq9lsty/XDXbab8qJ+qPqZHxCQOkM2G7dv2DbGHZqoaVrrKQE07FOxOy4HCyVRvO+H86
         xcSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793630388; x=1794235188;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=no08TYy9z5N15Gfih7t9dZs8POOT+RS2X8Q3gds+d0o=;
        b=PqXLoX8q98R7WcDqI4LZPvBbP4FHsz8NeW/Hfr/c6YcvTdlt6xLlH05nFk2YIb8EGz
         kgucfsXGci8F6zZz1Gum5+LE55f7zU3InygTysae9Lw+eREElnYVv8uml2mf6b6FacPJ
         CE1JaV40TqmAPMbioGmREkra5bSyf/ytSjDsfcljGqmUP0ogC192dVLinOUbjx4u6jKf
         qgyotCHCPTMK/5m+7Vvk5QdlFkC1BIbXp5fV7qbKT0Uivlsm5IRBU4W0ZbzYHTsbd2gO
         Kcj76v69g6uNahBM88BJqJLSm/1Pk3M7RHxBbqOOFeuMzxWvQlywzak370yvwXA5AyqP
         lgKQ==
X-Gm-Message-State: AFq9FYIy5Oobk56vi5cswWxBSrZ2Y4fXa8CsIo9j53qq9uFVP7sGdraC
	GXaxW8jsPXxPMJOEKjpAPX+s/DjCHEo7o6HU27rYrlgFw1YzNpIyUlsb9YSFS6aA
X-Gm-Gg: AYBFou2lE+w6qmiD63VikY7rspZhfT1CSND0hYr4Hw9/g9hNEn7YkhnZ6OR3RAUcf3i
	QevkLtRaNtdjZyhW63waIcq+pupavxzVSRPWhBst2Scr0NeJQnUSTkSVi+N/IFX29VUvIV66Sq6
	negFSKOXGj8AeGOdD+n4Br2OwdyydxMalbPHpMAnWqOB/cOaS1jE0Pby5bGnlFpgZ7xxxyFLx94
	kW1xwTqd+va4IxmALMZ0QGWTykzyzX4d43e58GMnpZnj6z9sHqv0x6w7MZi3+nAM8uMuA60zxyH
	sIVWblE5qODFVB+Q2nfYRk6eqQvkbVFcazcXuGIS0/IfJN/49m4pw7jtzBD+TLWUZO4vrDVQ4Iv
	jtTplp0oNsQMTJXpLkGi40dSqU+r/tbcGVacHQGeMDfH4WjmvGH1WafeFAm1+iMVhzvvJvDnGW8
	BDkKrcNrOlt4a5DBk37uuT5hM79NX87a/5o1CNc+gV+UlMHj+37FwAgBwLwqBGdmzo6T248/WvF
	gxpLUQXS4Od/oqJX8YqF/ggBIYAtSXogdxZkUeSFsOkl0jqy50Tx07LcpuFl4SrzDKGkZf6BKZA
	NIXRAClq8gXk186oLOpbFgWhTrZ9Ww==
X-Received: by 2002:a05:6820:1343:b0:6f9:59ee:cfb7 with SMTP id 006d021491bc7-714f29880c0mr5282986eaf.23.1793630388011;
        Mon, 02 Nov 2026 06:39:48 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-85d3545b875sm9516327a34.5.2026.11.02.06.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 06:39:47 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Jacob Cook <jacobmcook1984@gmail.com>
Subject: [PATCH V2 1/4] power: supply: rk817-charger: Fix NVRAM SoC Value
Date: Mon,  2 Nov 2026 08:39:39 -0600
Message-ID: <20261102143942.305293-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261102143942.305293-1-macroalpha82@gmail.com>
References: <20261102143942.305293-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_063949_290456_73BE0199 
X-CRM114-Status: GOOD (  14.12  )
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

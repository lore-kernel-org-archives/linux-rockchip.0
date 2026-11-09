Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4D02606A323
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 14:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RVwuOjsk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lMgYdYUc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0IcgFSPvUUCd+9tTMHtsN3cAqJ/SxDducwnhSKy2Lpo=; b=RVwuOjskTfleQxbEHO3Oi+sbOr
	LksOw7GrkykFBzbhuZt3mlkLrlKsHXy/sQTNApiPE/ua9a0j9iecNz0jZK1tMbzH/6Ncf/UDK8Hx/
	sCfCqI5r/4p8Si1Z//WZUpkizWRsfbgsjGLenKCS7xMcsfFsFjEYQ20RW5iYQUFhFFir0kwjmyTCV
	g18X51xl2VrKayd2fUyOHq51d26esmDBWxxTWo421TMEijSqP56qDySGoHz+LIugnTnNrRQv23lzX
	qW0tGHBcc6pMaNyY6x3y0EO8BTE0N9xt5LADxvRmYOZy6XkjKCZ9MOlJv+v0tzs08f/xvyZ3Mk7/y
	CGuMxu8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpe-000000010DB-1Ojn;
	Mon, 09 Nov 2026 14:58:50 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQQpZ-0000000105z-3KVU
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 14:58:47 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-4f55a53898cso421905b6e.3
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 06:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794236325; x=1794841125; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uyJBLSDoizhjOknUVT26QP6A4fvklwXxLKrc1fwBHFg=;
        b=lMgYdYUc80gQK0Ldmr4DN0mAqgOXqHDiyCb+fAFZBT8SKAHW5047H+VW4Z8GqUegaP
         45K104K+/ZwYor1HVH13sY8S0GPreF1kfNqbQNTgPgQq8StQ7wQjRuT3XF2TZwdlGVfc
         l3XgJIPpb+lznu8yPZmER7fqP6UWi9d/Nq9iR62wwBabQVTpzOWap9dLxcNNz/7tA9ZR
         YbDZA6Up/Xt/tnApZzbq11QsLCGVC6EQLOupMVuExzS1WPAaA0MUQpTBRQ9BEWkHiWga
         duiAQWreAUXXQYj8y8Bo29/s+BFDqJohvb540Y9eLfzBBgNh7y3G75myivb25w6At2s8
         8BfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794236325; x=1794841125;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uyJBLSDoizhjOknUVT26QP6A4fvklwXxLKrc1fwBHFg=;
        b=25msnS/sWqFSzMFRU47s3UjrrZ4nag5FndRtRAL/CGd0jN+S96w4BL3Ebl7FTnB9+n
         9AeCjQLkcWG+44wPKqTpS6Xq+cvNt7JuKh/1gShSaQWuTpyuJzOIURYNGLyK7cUXeOIK
         WdUv860yhwLTdtYq3PmRrbXtx+OWpvtiwSWQbn/7vNbBHgickDyDfz8hkMDOnhL9L7ea
         tGR53NoLoDFb1UaS9HJKqlC526UpjzW+IhANslPULhcrJZggoQbE83H3orqJ3otQJBY7
         Z5A26msPEPC9XDL8D1amO0YrrnfGmW2ibnGU29Pjessb3tb3micNVUJcEmF0ovkkFkev
         wqUg==
X-Gm-Message-State: APuU4Z/FAhr41BAKFz9lcfM5xaowoAEYycVQh93SCdLEtmBIZvuC0Sbe
	ioGHIWNfZpfm318dvHKtVqLrGTqzvRbkM+XKROGqqoRO30rIdxMyjlaFV8/BehVe
X-Gm-Gg: AYBFou3EGIog9uXMjPCiMs0vkzBkAXdCoOHD6lpu5vqt2jmDBtD9EOo1itfDauI5hKU
	JhzZRoOd+2AngRSlPO5lwarCL30S6wut3HFjuesBoDATcPFV1o8w6yQGFXUl3KRld+s4lgQ7OeB
	vorhAz0/3dmXnAQsvT2wEOfAIw1WLAOrs96ilO664sYmH8GGOgq89s0m0uDp4lhrMqQ894D5uZ6
	b578saVW9gg9a+4A7UslnVKr1+oENTtbVWILm8dZnYZsWsJy+s+ehHPYh36QNVW9IlsRomg06Hw
	j6vWYUnjmXlwdagSU2YhQGT14kAJSbH2W8jg0wL4brBXmZYdA4FeZ7R2WVkUXfjgILGFTyJz2k7
	61FCZ6edsfZxou6F7sXz3sHjMxYSed0ZW1606sQNSkZBaRhla7A2owVPleg07N10Mc093cqzfv7
	8zm4UbXlqOrs4fxklHXLP3+4swhqN0ug7edLvXRLpOO4C/YgcBz4+ExQ2yeIHwsfeL+5XJUrBqu
	58DjkxZUNKUahdROa05K10bdsEKaL8dMhMqb5zMoHTd0W/cXF2u/Ep/moNcR5YIkISAHyuXqJ2C
	BYMV6gFgqSr2URB1q2oKbyqK+Fjr3A==
X-Received: by 2002:a05:6808:4f51:b0:564:347c:5aa3 with SMTP id 5614622812f47-56814207705mr3716027b6e.2.1794236324825;
        Mon, 09 Nov 2026 06:58:44 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56813e54ff0sm4667618b6e.16.2026.11.09.06.58.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 06:58:44 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mfd@lists.linux.dev,
	linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 7/7] power: supply: rk817-charger: Clear full charge cal on resume
Date: Mon,  9 Nov 2026 08:58:33 -0600
Message-ID: <20261109145833.1363319-8-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261109145833.1363319-1-macroalpha82@gmail.com>
References: <20261109145833.1363319-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_065845_970477_D25CF828 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
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

After suspending, the coulumb counter may be off by a bit. Set the
cal_soc bit to 0 so that the gauge may be recalibrated again on a
full charge.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Lee Jones <lee@kernel.org>
---
 drivers/power/supply/rk817_charger.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 0d1ec775304c..1f91703f2f64 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -1377,6 +1377,9 @@ static int __maybe_unused rk817_resume(struct device *dev)
 
 	struct rk817_charger *charger = dev_get_drvdata(dev);
 
+	/* try to recalibrate capacity if we hit full charge. */
+	charger->soc_cal = 0;
+
 	/* force an immediate update */
 	mod_delayed_work(system_percpu_wq, &charger->work, 0);
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

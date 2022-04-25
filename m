Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67756C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QY3gepp9RIg4ystRlr3QMliTvj6Kggp59Vic0gg04OA=; b=w3RsOvy4vUtxwU
	iHXB7cBzshNJ2mIHMrZZhTj409L7CuE1RlrSPBVI/pVXE1QRF1hp4XwK1SNsYQLBI0uJEzAGokcYn
	KuG8MHqJ6jxJLJwPwMyxQIn96d3eWdZUNXhQiiS48HIEegyUppDWj+1r7rSH2IdE8iZXSJVdwxvAj
	je/OkNdd24S1xBKViqniL3ydaG3biISD0MdZbhn2XD/HRzyh3qXXJ12GhKRN5iyXmWn5DxfGg+b02
	YHxEphcO1uwozLclzrQd8G0JWZgG7l2qNNvgghAPo08HeNznqkN2z+zW84AGAnm0x+mSn+xo6uqcO
	Ek8NFD4XHeYMv8rKDsjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5Yt-00BKzw-Ad; Mon, 25 Apr 2022 20:43:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5De-00BBIj-9A
 for linux-rockchip@bombadil.infradead.org; Mon, 25 Apr 2022 20:22:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Ww46m6LdM7MaV4jgNKlRbRSwspMAPKBncRJe9WsCVsI=; b=JjzqkUXBlWcya7+Cjc3EnBQuJr
 yqYIkaZWMMWlQWTgyyglPXI1YTU5eGpC/pv1zKZh4x9fvoRIXhvKgWe6jTtTMSjO7Z9ngQJYwnmuK
 DVkkwC9KyvEUt91+kinaK1AufcOdStyCjq0XPcse1V4UL+ByQXhyH3en0YzC9kEfzjP65C41l/neb
 r+9DZCFcopGjiL5GWLnYCHrSagxKa8Vs8SQBwtRZBzaObF9CHX3GzzWwlN48mWFOwzTCEHoTwjTkD
 fa162DV/jnFLYJ2mMScFbZgIGYQte0gs6b/Jrgd7e7gPmiTL+1Lv8DbCyco0TCvtZ0992vkZleySh
 yA5WMPmw==;
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DX-008cy9-6h
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:59 +0000
Received: by mail-wr1-x42d.google.com with SMTP id b19so22451980wrh.11
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ww46m6LdM7MaV4jgNKlRbRSwspMAPKBncRJe9WsCVsI=;
 b=oNa9cg5QsPwwP4uLrV+YbTdL9gqvb/dfY9l6gDFTVL86Z2ljrwrlOp+UqdK9YUYY5+
 8hyKkQM0y/sN2QGVNqYZVWZYA5tWkkkQFJ8vS0ebBlNGUfEkmMISnd+RUnLz+khNW1Fa
 ob1wL+3kdho0gYV+dOagIVU//4y+gbBWc45DbDRsciupfmFioao8ygk+3vUwnmnm2h70
 LS9l7pOZJVjbio9ScR2wpWVHN2KykUoEL6VCteLaIDYVWQCFmMxT1x/ox4H/kiIfSH5e
 rKzi+mrz/BycqwmKuYcURG2P7lGC8TqTaRspWC3UzAlp9B55VXupvcqdS1xfsTwQuxXB
 p7oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ww46m6LdM7MaV4jgNKlRbRSwspMAPKBncRJe9WsCVsI=;
 b=ntZAEu1YNdrLS02gVAb7q2ky52kA5604N5nw0LLMzBoo2bF5yuo1VzkHboA4P5/faz
 F2EbLRsgt8QSNKcXhZsew9fAZzVvTIxEwIiWqcNVtPmN9sHM1gDDFYRZ9gcalu1n2ZKV
 OMxs18ImAKfzqSe6m4j7sJ3U+ocPYSM28fyQfkWtE3qoxlWP08cXpUu8zVQBJqyc3E4W
 3ySKuHUjkf4apR6xgrNGFrqRYmhfkEo1yxvB/EMErgGQ7IbFaVraI7Agfu4oEB305041
 RMfirkY3FgVnOANePSppsy8vowSn3Qi/ytfE/jN6W9niFnnv6pchUT+1nLKgMWhHS1+7
 A/zQ==
X-Gm-Message-State: AOAM532H6WP0TOntCIU4aY7VZoSFVjLICok40QaBg7WfwT4rmb1F1mGW
 R6hx3iEdse2vOgx9WAZpZVvXeGX801uMww==
X-Google-Smtp-Source: ABdhPJzWVdJF9EEfqt9FZpmuVTK4chwSLrTU0dDvxl6PARMF3rJ1c+XK/DWisIC9K5f/fe3rM+8S7w==
X-Received: by 2002:adf:e289:0:b0:1e3:14ad:75fe with SMTP id
 v9-20020adfe289000000b001e314ad75femr15468017wri.685.1650918105802; 
 Mon, 25 Apr 2022 13:21:45 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:45 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 19/33] crypto: rockchip: add support for rk3328
Date: Mon, 25 Apr 2022 20:21:05 +0000
Message-Id: <20220425202119.3566743-20-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_212156_186137_99C5A584 
X-CRM114-Status: GOOD (  10.57  )
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

The rk3328 could be used as-is by the rockchip driver.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 97ef59a36be6..6147ce44f757 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -197,6 +197,7 @@ static void rk_crypto_unregister(void)
 
 static const struct of_device_id crypto_of_id_table[] = {
 	{ .compatible = "rockchip,rk3288-crypto" },
+	{ .compatible = "rockchip,rk3328-crypto" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, crypto_of_id_table);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

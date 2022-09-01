Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82030ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 13:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dMscJtp68Bm1C3vm1JdDa8HEdZgAprFBWuiMnOnaWFo=; b=lp0hfqM3m/R9dL
	XaRd4jWtxKGuK+neI74HJymc/g51G/aFNWlwLwZre6qXTghCfnNMbr2tYGKS6a0uj0UwvaHQauTD1
	1/z5IwRlWPpI11CVprP359guAF9Oov3vv2cuWtzHNnS7lcMxZziAdNlUeu+c3hsodyUQDlkFI2o7K
	WAAN9rytD07YhXHK+imnS8+3Tna5mgFUb0xwl0qTIzAaJVbhb3WoUQhN/xBQTw521Vp92rcg42HGB
	i57M+SXhVSj1ttA4t39ZA9j5BPX7egya+ejldvmxkHKVuRoXi3yQ1qxrAWvJgCHvcx5KuhHygJEXu
	0gPnzDNEopPuRc8VhbKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkHg-00C3uG-3T; Thu, 01 Sep 2022 13:31:04 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTk7L-00By8c-S8
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 13:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=V0VQZblY3ilqDl88ksU7sNdmpCxvXcKe3g1VMncWlyM=; b=ui/I6qZEqkC69RmEjOHWQymGgC
	+JhhwPMgNo8/QqlBHKMvV/l/pj4Opf2hPqaaHnsoT93hZ3MWNOfGAvHQRfnLrDWQm4Gf3f2KrdNHJ
	tRlcgdbrpeIZZ48n8uWdcS2izPU1WLXYov/VowZej6NVMwuaja8vjJNdJeS7LL7CRjk+m4iTw6d79
	cIVZmV8nKeQWJ+iFGdetZBf6uPeSKx5ETAAjU63jbGF5ZGlv/Y2zucC+BIqKSgeEq/v/jBr1JI+EQ
	czVDSzwuRO6VNzVyRxR7T7VHH5tBw9BzUyX2K/kjbUdBbB1dUXnytitcS8sHcfFjErfE7eZj5tC3d
	RTfSr2SQ==;
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlM-0062bI-8H
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:43 +0000
Received: by mail-wm1-x332.google.com with SMTP id h204-20020a1c21d5000000b003a5b467c3abso1309315wmh.5
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=V0VQZblY3ilqDl88ksU7sNdmpCxvXcKe3g1VMncWlyM=;
        b=gPuilAw3In4sLBTLM/O3vTLJNCLuJQ5jb5eL8ZFv5Iod4QUNem/h1qDSlfrvHCZAH8
         StWFIZtraRSdayz/b8z2Uk255VLarodlWjpxmNQO3x55mRbO6oST1UZ+d/20MkU+phu/
         VaB0M32Q3mv6CrBMLUK+O8MXHkK99vMTSVvNAiCTQ1NSBEaHo2MC/jSe/LyzsaMI4gm4
         W/iQ5YkVSsD+xWGiyvqvVDvSGdeSKISF5mhc1CVLVYFGa8x0vE2b6dBFZXGAU90miEP6
         tebB/BELlN5r4d6nYxD2kXK7h9wPZr15bO+/9wajk8pDXQ+I4em2hC2XVubS6+pmNmtE
         JUTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=V0VQZblY3ilqDl88ksU7sNdmpCxvXcKe3g1VMncWlyM=;
        b=VnVoBNyZBiAWl2LxIWldRicdjYQZbNcfz2c+r3kfrMzNkpF2IZNDSRfi2mDOJrcGtG
         4+/4ycM2ciI/NzbUpuws24PDO1SBB0f9HmW9CTUHJ3aFas+DCTcWSI/y3y8Jlfjhonzx
         +aQ/s6LGxo0ZNnmInp/M5fZV0Llk5RCQ09Fd/MWs0RChhGr+z9Iee9PwZ3i6bQnS0vYi
         Tpp2mM+Vqkl1C1gX7bwUZeRymj9mc055wQx79RP3ZxvO3rBJ0wKxHX2d0EBdyUdz8UFa
         +//ETLI9HYKUln5eKM9aSynNYcN8VyVlJdixRWhOxL0DtfhQv3/Dz+43SVCrFOEphKrM
         BF9Q==
X-Gm-Message-State: ACgBeo3lcV7K57B5iYrbAvMihjkimt5BNILdSZtCc0KxTuVcXUtGLCAR
	livZFgShGTZ5XS5N+Wj9RJy2ng==
X-Google-Smtp-Source: AA6agR5+OPEH3cDQuiUwxXjulon0wpg02exBkXOVsbW35hMY72r4YlI1sLLApT1+xM6Cm+7PqZpHIA==
X-Received: by 2002:a05:600c:3541:b0:3a6:28e4:c458 with SMTP id i1-20020a05600c354100b003a628e4c458mr5163013wmq.188.1662037056497;
        Thu, 01 Sep 2022 05:57:36 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:36 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	ardb@kernel.org,
	davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v9 19/33] crypto: rockchip: add support for rk3328
Date: Thu,  1 Sep 2022 12:56:56 +0000
Message-Id: <20220901125710.3733083-20-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135740_322138_84708558 
X-CRM114-Status: GOOD (  10.91  )
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

The rk3328 could be used as-is by the rockchip driver.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index a635029ac71d..c92559b83f7d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -202,6 +202,7 @@ static void rk_crypto_unregister(void)
 
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

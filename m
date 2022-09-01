Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7186ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 13:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4tZDmVWGzyWSJ+GdWHCd/W5YmN2WN6EOoqV9ZRrB2U=; b=BpbFflV0tEAL6G
	pdRm35jTkQAtIk65vRw3esn9RkJtZQXiwLIvL2tR7oWQxx4rflPQZnxCBKHPCVo/4D8RBHpLvaSzd
	f87rEuRAvHSq49f7BtBinEi+BrJ93oe6NKnTbcwroSCira/uCUpHyL09sCkd+drgqNks69GotQjXD
	ZlXpw+3e2VVwNvQWgqq5byOqzqKNyiuB1UAJy+d+u2Jxea3C+Anm2X3m1TS/IoEHbGWzsppNGvtVB
	36066s35tlnH3hLBLCy+jsIPkrSrR+7dgxvwnHJGvoyI6NXAHsLxiHrdcgTVqJVsOjKTCOirULUHC
	WcVqNREHY2649SAzsBzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkEv-00C2aR-Bo; Thu, 01 Sep 2022 13:28:13 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTk7I-00By8c-HN
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 13:20:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=z10vTtQ4qHSJZ9nRrmQY5lLp9Bvyc0G2kDbemdDveLc=; b=OL8LRMz42s/kv3wUZYfBRvAKCC
	9SiPu1qyOJipVSNpOC+54K1mhHlpHvyyuPxhWDHQsk8dTRlS4TDIh52WsFt30xMN/EU+eFBYCJLnb
	c1EPRGewMnOcNR8nbtSkOCl+u4A63McsYtRphulQZxf53L5eRvhjfGabrJ8VPMy+/T8zrD6Hs2whc
	/spzMAFSslkVTzsg8QC8jS5nloQ2DaBQCTUhXOcLCkPzinGjGDhw3c5bmIyzWkYT9mY5jIoRV+rfw
	pY/18xF+paI6OKscil1TsUqM+7wawX0gvcSGYBcpxcS6Dt2VLx5dMVzx1nXBSq2zX9pVBp661+VUX
	XLhLX4xQ==;
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlX-0062bY-5C
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:53 +0000
Received: by mail-wr1-x42e.google.com with SMTP id k9so22290932wri.0
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=z10vTtQ4qHSJZ9nRrmQY5lLp9Bvyc0G2kDbemdDveLc=;
        b=gxFS041sKmCJ8gotE/rzRHIFcK8pgteVLsHohzmHGLL/Asvsnk4TqKRaOJx2n2JSxl
         33hGjEieWt9UJm8s4yv7CVA5XS9LFVlbGGs9a8nqvSovNxG7/2HP4rrROSOZJrYmUvXX
         MfsKyCI8gUr/kjw3RcjCzVH8Z8qNhIkkAAf8mxKe5BjnZypSBNxB0FPddIgyfb10blqA
         aiQzQL8JBz5NrW2n2FKFzuuH12j3hPhdLuSyVsocChUGMiqV/jDjBKWUJ/PgrGbdDFOD
         PdkzhEE5laWc34/FtNaacKvoN0PCBNxlW5nK1TegOu3msHpNYhauUnTtfnfQE2XcK+H8
         hh3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=z10vTtQ4qHSJZ9nRrmQY5lLp9Bvyc0G2kDbemdDveLc=;
        b=q29d5AV/r8nUsTpNtkpx2mlYtjUGBbzKL4V3v4QGJ2dDnrgbqv7+YI0LMH23WzN+H8
         2XIAw+JPsWzsa66pErc3VEqL4/H9lCPr3mcMlApHlEOxoAgCo5ZMo8RuPqNK6jmfSo59
         i/4Wv/Vfh7cygTjmNVEOe2MOCb9nMu1H8RBIo9fQ6d7UPZXprozO0fPRMZRZK5m+5shW
         iy+2TRe6vrIlzRUO+GOyoCiSpIr5YHX5z+badix/WCY3dOp9BPyw9aW9V0IFC7mkBLxZ
         b/odoPOBloRlfRRgLvHfFeElTQgHV+tMUQFWZLMcLzbm7zQRdmjOmbp8Rvkj6IPIn/N6
         dUzw==
X-Gm-Message-State: ACgBeo2iG2RUiOElSTQ4UgsyTcxKSD2kt6o5qaiKhLsFyBYctrRs9e9D
	16h87bjUlOQZ9d4UPNYZdkjEKg==
X-Google-Smtp-Source: AA6agR42iXjNLWIdpiBHP13edGTdQ/2uIMitreBQnTgTu+13p4zqUS0pjcpdsslMonKuDmBkZbHpkg==
X-Received: by 2002:a5d:5281:0:b0:224:fe40:798f with SMTP id c1-20020a5d5281000000b00224fe40798fmr14952340wrv.90.1662037069759;
        Thu, 01 Sep 2022 05:57:49 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:49 -0700 (PDT)
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
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v9 32/33] crypto: rockchip: permit to have more than one reset
Date: Thu,  1 Sep 2022 12:57:09 +0000
Message-Id: <20220901125710.3733083-33-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135751_323015_C07DB12F 
X-CRM114-Status: GOOD (  11.16  )
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

The RK3399 has 3 resets, so the driver to handle multiple resets.
This is done by using devm_reset_control_array_get_exclusive().

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 232dc625d6e5..d96f375423d5 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -281,7 +281,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	crypto_info->rst = devm_reset_control_get(dev, "crypto-rst");
+	crypto_info->rst = devm_reset_control_array_get_exclusive(dev);
 	if (IS_ERR(crypto_info->rst)) {
 		err = PTR_ERR(crypto_info->rst);
 		goto err_crypto;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

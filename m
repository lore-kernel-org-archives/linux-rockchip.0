Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D06B3ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 14:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SOx+iAXlq6yNXvzopTrDrui2BIXsjYxviGstDzetSg=; b=rXHwSBRtlbSyG/
	GJgIQVqjlbhOWyE6G6jp9US64zpKUCx5slLVCXkQN8H9vKMba7eCiz0QxWC4VcRdzaQU1lE4DjFzq
	oX1h5aZ29a+TsNvZEq6qp7rZhNSOorWcA+nOF7/Xzl4YQCYUaMsx9lS4Lwkpkupz1xiWkzCRaAybX
	QW6+IBrgk/s6z4LVZIgyBG5i9fOXcgh+P4NdJIiVMliUPotYWmQ00wmelVlJoBdImgQSo8Lhewy+4
	TdPhpXBpbVuwxEHkAbw05E00k/th2yE7uHiv4PVRzXuhiB4xiF5r8/RJW4tgvtRPwna3gBirrHslx
	UwNsDJJyo4DVeqHO171Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTknh-00CJLx-Ni; Thu, 01 Sep 2022 14:04:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkmw-00CIuS-UI
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 14:03:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=0KerGvUzdejWLAwshDyy9ppWCWrJnFuYbHleK5z5lUU=; b=JvIk65swSbVIuNb9O/2yEqfaJ+
	IVEi+0QRVDRUrWg0PQ+hsqqIFkwfd/eK52kv7T4LhBNOa5KmL/+74PFCn2Iin7onMSZO0O0RYnrws
	ITrcIl60qw9ilSx6b9ly1FMLKibX+3GiBp/kvEdVw82WYIv7GjYEkEXegymPh//PjVyH44qqbIm1A
	tLoHi5yMvnd41YahPh7S+NQwB3/mzPYh+Cqmz65coSF+2E6kHO/xcW0d9V3RNRAfk9JyAwh3r4U09
	ln5NSF1T6/DnRVln0tM2VM3rF9V/Dr71W1TKs2yB8hcpdzAbwzsSYp4oAEQ0jbozm77enxPoSZ0tx
	1z4ntMbg==;
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlN-008P1G-JH
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:44 +0000
Received: by mail-wr1-x42a.google.com with SMTP id w5so6070343wrn.12
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=0KerGvUzdejWLAwshDyy9ppWCWrJnFuYbHleK5z5lUU=;
        b=51+egLLpPXGqBQOou9kHJKjXpvhQkpryEmXh2BCvRqlzLpuXL/Zd3GcbARJ0i+nqdD
         3Lqgzn9JbK2oVDhvQbuTt5DYfeZen0iVNiBTV3MSfrjrhzPUItwreSb6pmxvh7cOpNUS
         5w8zFlBIR29WnGISr31Z6m9Xmp56jB+R1vkMA2PhW++qR+0IKMGVk9IKByvzGqxNDKKS
         i3gyDDxlx87Bt/w+C2c5W7JGa4l0jWuB10PIufcyz0F1BLIC5PvxcXlI3Ve46Pc2VcIc
         jGerwHQhmvEOaFvNN1xvwiK0b0E1p+HzSreF0uwbUztghU/oGOp7NkJFomn2XfxZPK47
         ueww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=0KerGvUzdejWLAwshDyy9ppWCWrJnFuYbHleK5z5lUU=;
        b=jnBgKLQ2bk3wLvG/Gdoz8GE+lEXAwL3HSLajNxWEBdaJf4xYYibwpXNkijieWMPnIj
         51ZkZVJ83VMGPYmi6YxHAzEpaY17E71YRXYpiLvN6VHLBgmLfYEA/12m3SAYKba+OVwA
         5wGNK4E32cgG0DTmj0u/glA9iVW4KVB5GTaSc6ByXCOCSJZUIyrXkjfxuHrXmWIHF5wo
         6XtAfrekELxsLsbs1V70lR6Ij8N4ZcZzL7rpEz6fU2NsVXTUToEPHiJCs+jWxDHjvtLq
         gvZ8+CivPnfxYR5E/YAgHwRxcU7G/oGMGnjuKF8c3U4/SudrNGxLB2P51rrnpNJd7bdc
         uCTA==
X-Gm-Message-State: ACgBeo2BsjE3YjoZt6jUGK5557TO2hK6X4b47EAX0PYS2DrHQ7mgaHa2
	QzU5298aXl4C7Ow+UWnqTjKdYw==
X-Google-Smtp-Source: AA6agR7Mhzano3E4Dx7iL7/SbQr+biuz9Sx+ufgic4soGNhU2IV9QB4S94zQvTMrdFx/BTVNvDsczQ==
X-Received: by 2002:a5d:6d46:0:b0:21f:8b7:4c1d with SMTP id k6-20020a5d6d46000000b0021f08b74c1dmr14861638wri.455.1662037060605;
        Thu, 01 Sep 2022 05:57:40 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:40 -0700 (PDT)
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
Subject: [PATCH v9 23/33] crypto: rockchip: use the rk_crypto_info given as parameter
Date: Thu,  1 Sep 2022 12:57:00 +0000
Message-Id: <20220901125710.3733083-24-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135741_826850_4F3266E6 
X-CRM114-Status: GOOD (  11.43  )
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

Instead of using the crypto_info from TFM ctx, use the one given as parameter.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 6a1bea98fded..cf0dfb6029d8 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -254,7 +254,7 @@ static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_reques
 			     RK_CRYPTO_TDES_BYTESWAP_KEY |
 			     RK_CRYPTO_TDES_BYTESWAP_IV;
 		CRYPTO_WRITE(dev, RK_CRYPTO_TDES_CTRL, rctx->mode);
-		memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, ctx->key, ctx->keylen);
+		memcpy_toio(dev->reg + RK_CRYPTO_TDES_KEY1_0, ctx->key, ctx->keylen);
 		conf_reg = RK_CRYPTO_DESSEL;
 	} else {
 		rctx->mode |= RK_CRYPTO_AES_FIFO_MODE |
@@ -266,7 +266,7 @@ static void rk_cipher_hw_init(struct rk_crypto_info *dev, struct skcipher_reques
 		else if (ctx->keylen == AES_KEYSIZE_256)
 			rctx->mode |= RK_CRYPTO_AES_256BIT_key;
 		CRYPTO_WRITE(dev, RK_CRYPTO_AES_CTRL, rctx->mode);
-		memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, ctx->key, ctx->keylen);
+		memcpy_toio(dev->reg + RK_CRYPTO_AES_KEY_0, ctx->key, ctx->keylen);
 	}
 	conf_reg |= RK_CRYPTO_BYTESWAP_BTFIFO |
 		    RK_CRYPTO_BYTESWAP_BRFIFO;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

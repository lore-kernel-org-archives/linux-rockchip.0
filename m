Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0310C43217
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0d3ndqrG0njCFqqc/iOrnM2c/0iVTRJg8tx/H0HZqc=; b=0ZOU7yJmyPvY8+
	SxnevD3IWnu0CO0vrQWOnG4LDMHnAcSxb/aPKiWmnEIXcvBG7S3DY3k7wfEW/ajmYuxQh0P8jSitK
	FLUKQYluCiHqSbpHEUNuqd+iqj4AKCY9V8h5kgQELIbnj0vwJSiceOpudQPyNyMcdnYO4xj9oOccl
	p2lQwxXk9fr8aaorxel00fpJyngrGvQvdPzj7L++FVzn0jaahO2k/mBq9xGTeuNk4+RErUhjIi0Rr
	hbqyHp0LXwc21SoUsFvytK8ELyBRwCa6R+o8ik2YjjhTmPAU83tmRxWMz6KAL5EQtYSr9zsLoo2mG
	bKYmTKVqcYuLRiZFy/zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWOKO-008tqU-FI; Mon, 21 Mar 2022 20:08:32 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOJk-008tPj-9l
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:07:55 +0000
Received: by mail-wr1-x432.google.com with SMTP id b19so22194327wrh.11
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5/nH1g76OJr2xP0kEzxoO9d69o0mEYaKTMfwjCEna4k=;
 b=wpn2+3RRnKkURh7Cw42HtJCAMkGca4Slv7C6iuakbwLvTEXnNMZzVN751genrV/kWo
 iNcZG0du3r5XDwFHWSd8w7O00LHqepu20bQcqsweCcvcYBhGDae5z/Xdr241Qj2lGmhq
 kxDrXL1VHXyXj1f+MMtaEdWsHpDq43C4aIMqGefVUKLoxEtmTQn37vtUIQXvdjTKowFA
 m5DDXmT8VT0KQYHblOsC+briTj5e840IrbzIHWDHk5xnvZjOYfHZPRBha9ZcI1vFDl5V
 h0FOj9A6OR0AhE6Wh2Jt/fMphE1zTO6OUlvAZ+7AcUM3Y6oM7Z5xJ9zA++vv4HSW8bPW
 4yVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5/nH1g76OJr2xP0kEzxoO9d69o0mEYaKTMfwjCEna4k=;
 b=hPzQqIksQ6dnxZ1jthPg6T2Os7y+4gircRNVi5f+NbFzWr+3JYcqRBetU7MDkvicX+
 Zpfd5EeKFWnHMi+6ajpRByFVgOT/hBO9hoBYMBBMbyDlBnaBSjJl1xGA8XlnOR9mXib7
 eIxFQJNkZVPfduoP6mAKbjCLp9ykslgFcuIzH69BzdgIvw2+PoYJrcgpLPJ+k0fT6sys
 1UeojxUyJ91Ec6Y/nG3xqcv12agjqBcj2nUIrivsbB0abiMdG4d0Ft6ZISCaeYXF/tP6
 TM04MRG7ViATyCH6Ubyn6b7M3PjWdu6QqUQ/qBdqyEQognploBpbOCTldW6l8MbldveF
 AfGw==
X-Gm-Message-State: AOAM533rKGCrzC8wK+Cz9Hpu4p0S+d+ePkZ2c8JjuqFAt1CFxLt38liI
 B/su+Mz+cQdwa0AWPZ2EK7SWSXtn+0RDcg==
X-Google-Smtp-Source: ABdhPJyclLZRRx/ILXop0mbVpOT4zhXti8FhJnghzlEFGMiCmx9/J4a7ey9jKBPCbiZ3XOVMesKP5w==
X-Received: by 2002:a5d:6746:0:b0:203:d6c1:9c5b with SMTP id
 l6-20020a5d6746000000b00203d6c19c5bmr19647521wrw.446.1647893270523; 
 Mon, 21 Mar 2022 13:07:50 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:07:50 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 02/26] crypto: rockchip: do not use uninit variable
Date: Mon, 21 Mar 2022 20:07:15 +0000
Message-Id: <20220321200739.3572792-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_130752_367707_D81BFE69 
X-CRM114-Status: GOOD (  10.86  )
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

crypto_info->dev is not yet set, so use pdev-dev instead.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 45cc5f766788..21d3f1458584 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -381,7 +381,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 			       "rk-crypto", pdev);
 
 	if (err) {
-		dev_err(crypto_info->dev, "irq request failed.\n");
+		dev_err(&pdev->dev, "irq request failed.\n");
 		goto err_crypto;
 	}
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

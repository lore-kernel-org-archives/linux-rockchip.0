Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76FC8C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIUu6K97ax5On4xx6QCx/auxVxlxcHWhasuL92XPKPQ=; b=qygc/e+iM9iRn7
	lPWo0Z++geeIC0WB9LwGJyt5EwnlKZyIh+UnnW+mcINdsPn0Ep8A2nXbyGvRKtKR1mBTO/xXKA677
	Pl+/B0aI4a0djykel/4z09+K98PUGpyxFLAPSEMOEQxS9ayU1T5PHByB6rFC6paz4lb5nAKKBsfuG
	DSO01NjCjsv2JbxcHHkQsbqqxwsufe1TfjCqTg4FCenB68e52xeriWfqDUbuVQXybaP0I3SzERhht
	V1TovC81yNnuTeEtUQs46cuy0S1LEzPVFHN/H/IKmgSeho/wVXgzCYjldcucCvEhNg4b3JHk9cEd4
	WUQWi3NNbwZ2EVPsTV9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiL9-002IBZ-Mi; Wed, 13 Apr 2022 19:07:43 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiKq-002Hyq-Vw
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:28 +0000
Received: by mail-wr1-x433.google.com with SMTP id t1so3995517wra.4
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6k9bKJA41frCR0pmOk9SA+9AKNxBSbRS1tpgQTa/e4I=;
 b=VYNvVfTkDsS2GrZecgJ4GpodMXD4vwGRpH5f6fSEdCuOongHsWNf84yDBtLMfZpCh/
 bP/TUsh0Q4kp2FgAq1vxWG8dYmA5buAK9Bg3fehnNA3oI0F/SBENezK39wwQD04oKScC
 j2wf+dGY8pzeVQe/CungYvO95ijHs+X1EwbGHZLyXNi6ja4lwh2vCN3REwR60vJey/Ql
 llTjFB5wnjf4SQ3m8/Mm5oPJm/CsXvGqWgVOIoeu4BUZmuUYKUu+z/kiSyxz2at8nCsx
 eKm/1okCDZUsEjkQPL1p7RKhjElkzqlXXMKPQULRiNSzh9V+pKAuGw2ZScnfcKA8HQvS
 Hd4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6k9bKJA41frCR0pmOk9SA+9AKNxBSbRS1tpgQTa/e4I=;
 b=eg5Qvb+Qza+2Tk0JAcVrjFJsRqP4gcpLYSS8YfFvNFDIO1qcP/l2hCeOzfQidvYmHd
 9bnjDd+VzHOFMq/wrTqQSG+4MCm0c2pL11O+I8pBVQw1NK4wakJ6UeWxeqZFxdUQq5xh
 /SEkakgnqRRCiO9noH//zFPOB9CC9JhNcmQquWKGYrGclQ9mLeQou+IsFPsdwPI/HG5w
 Hwp61TQ2jODBHsBbaRZr3EEDWvXO8RONg3jpc5L4VeQug6dazdndWkjRgPV3EKUNVS3u
 eZrNxmuJL1S3q1ZXhqmxOehYYzh2QBZ5KZSviaBhk3mmqg/gOV9JSQKLnjQh584P6U/E
 HVUg==
X-Gm-Message-State: AOAM530v4584nD7nqfVuiDHcXRyL8SdFMvIOkPzkk13cAegT3ybia041
 Dhn8V37U08etZ5bC6ydRnPpTxQ==
X-Google-Smtp-Source: ABdhPJyII1J5W8VWBLKAspEHoqtylYWUh8tT0Az0Bc4V8OU2/VVFPwdptvVPdB1L4uaAVEEjl9swvg==
X-Received: by 2002:a05:6000:70a:b0:207:a120:bfbd with SMTP id
 bs10-20020a056000070a00b00207a120bfbdmr258416wrb.142.1649876842619; 
 Wed, 13 Apr 2022 12:07:22 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:22 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 01/33] crypto: rockchip: use dev_err for error message
 about interrupt
Date: Wed, 13 Apr 2022 19:06:41 +0000
Message-Id: <20220413190713.1427956-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120725_061404_AA8FD101 
X-CRM114-Status: GOOD (  11.62  )
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

Interrupt is mandatory so the message should be printed as error.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 35d73061d156..45cc5f766788 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -371,8 +371,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 
 	crypto_info->irq = platform_get_irq(pdev, 0);
 	if (crypto_info->irq < 0) {
-		dev_warn(crypto_info->dev,
-			 "control Interrupt is not available.\n");
+		dev_err(&pdev->dev, "control Interrupt is not available.\n");
 		err = crypto_info->irq;
 		goto err_crypto;
 	}
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

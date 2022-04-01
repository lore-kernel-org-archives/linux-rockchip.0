Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAFB5C4321E
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/DdqJ1PpgPaNKNxg06VQGjtl/NDNx6YxjK6X4kUMww=; b=o6EL9POsJKTAHC
	Th+LE39+WVvCiqHnGM+vBgNlMhzIPC0mM2kzPPtAZfEH80MPv7PKEeJVT1hTwLxkjb+CxnoiG95q5
	uw4S5u1nh89tR+G0aGHR7hFK0GStDqTgcjgDspyUzyWmK3A/Xee9s/vjFNypw8Byd84ZJ8M67wH+1
	l1h9blrhFYGnliGlxxm8U0YHK1rApJ7WlCdj6jwYObovcK6ljSDDMTMgZPUU2yqALqNezQD2fT1FJ
	tKEuw0rbNGZAKKfEooWa1PlsSMlOjxKAwaRaX7uq3WSJdK4AF6k8qBSIvCcwq3i89Tp2+gsmVzIT9
	EKQYybkXwpTfHk8F1x7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNkE-0075oY-Fq; Fri, 01 Apr 2022 20:19:42 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNis-0074ra-3l
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:22 +0000
Received: by mail-wr1-x433.google.com with SMTP id h4so5725682wrc.13
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yV669w6ThAcunb2ptGEHL08NqOMgexsX7UsYGNNFxgw=;
 b=Lb5n5i1kwsqsUD6MLQa4/+zikxINvmV9nVCpdINstuKiWo2HdMvTxFY4aFDIf2sBMv
 xhK/WSKGvRbKlkgg0/gcnon7jwZS/MiiceXvKhVxta9CC2zf9BXRIwNGu9eXjrTHMkkv
 q4OmpvGSlvQhAHJzBHuBgWL4bzeTclylXt8HUZyufKBXPc/IvjDZPD1FOijx7fzvlao8
 eAa5fHLIj2HkX+q/YzcXh+jGMn+t12W0HpV6MKr9jdPNPwncYfgOTsDXQvaxFIgblndy
 8DzmudmGlHF2p6bo5rSXP+JPEPM4CfyJWY+BYQBialeanp8CO7vj7/HWcSxLWsHd1pZg
 Dq5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yV669w6ThAcunb2ptGEHL08NqOMgexsX7UsYGNNFxgw=;
 b=XteB4plGRSdSeLypJmL7qXL2U2gc/aOvSx2gdB510gddDoYmn1bcRkCF+g1oMbXb3c
 oCJSs/H2SB9QsOqpzVaIJjEZaSdriCsRK0IP8u5ffIxbg08C2iOFPx8j4eYrAAT9y3F4
 KN4aIoy4ckdrvXw94vqlmFMgnOkSB8ZWJyYBzlIqKxO6Fb58admE/zs6sQiTMmAoTQov
 cHpWckB9aP6f5MsNQGxqBLWqz5DNJQXnobmYvvFq9d/Ra43phsN3IUGWhUBtUrnz4JKN
 gAHLfnYwY3SQpAJqlXKbAjqNm3NLmjDbzy7A98OoOfX2PZ3fyoNGOp1ZDw2jFwyT/Fel
 gFaw==
X-Gm-Message-State: AOAM531MiAk/PgaXQCw0/0wbBVHLcFk9Yk9WLyiGJLDeEp9DoLlcf3gv
 6y0qqBQv15SXyPNbYGOviGqrwg==
X-Google-Smtp-Source: ABdhPJxq4j0JuvVD2vxeCC6tsWwu2zvkWUWadDcEg3yk+W7I/ic5Au/8aGiSXKdMb00gDQUTn9smhA==
X-Received: by 2002:a05:6000:1ac9:b0:205:8461:5664 with SMTP id
 i9-20020a0560001ac900b0020584615664mr8830350wry.123.1648844292144; 
 Fri, 01 Apr 2022 13:18:12 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:11 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 02/33] crypto: rockchip: do not use uninitialized variable
Date: Fri,  1 Apr 2022 20:17:33 +0000
Message-Id: <20220401201804.2867154-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131818_156408_1A49FE3E 
X-CRM114-Status: GOOD (  11.13  )
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

crypto_info->dev is not yet set, so use pdev->dev instead.

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
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7517C5321E
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Aug 2024 18:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ee3nL3jeg0CRhGIpIuhSiT3xEsAQYP6ardBKtvmRFMs=; b=R+3eT0XhY1VM84
	X9dXUvQA6xGn7YaWxiKSeFqaAYvwFCSi19qk2mFKjwWykDXqwPdInWOM0D6M+Yfn/dCAoxyP7DE+r
	ehh+zFnWSH2LKssHLCtmw61veErAmC+i7ntZvrPhelK0AeeuQ5gyaTFr4dQfERoeMPGZv/Xux99ei
	cQcWha786jWqyjYZOO1JKo6kLg2w9qme4ZXpu7DZxUlb9KZm01DrquTN/LX5zaD738CbMlfOKc1kH
	wazE/eLJ2/9sznvPbcyEfc56RviFujy2Lj1zCPDOW+xfV8M5rrD3C0tJcIAwyz0fc6PuNxCSeqMcD
	x8e7/P0JBPbPr0WeWjdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siI2c-00000004ogU-2R3k;
	Sun, 25 Aug 2024 18:32:42 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siI1K-00000004oRr-00k0
	for linux-rockchip@lists.infradead.org;
	Sun, 25 Aug 2024 18:31:23 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4280921baa2so4102815e9.2
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Aug 2024 11:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724610680; x=1725215480; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=r5oZsSpqBtpVnxWWek+saFNNQcQXhk4VKnzKr/UGi3k=;
        b=pAajsD1+PqTz6HPkK70WgNtTg8IPVXJq6biIoZ7up7EG6E2edawbjaGAEzOrA/4wsj
         gvtSzmzblBBRrH54C5OI5HuROTKhfwUM/bVWqEJ3tMLGGxkqn8luna7QoPbRA9m2lUOp
         T8ARboS36ZoihIUqyhPBcOcjtU1FrXRax9zRYUt5pl2XSHfhcR4UWL69mQ6VbI6Yvx32
         6zM1CKJpBDzE4c5cYODQ//0Pglkuf9ascEFJkUep3P1jFpzadqR4au9NHgXu0qjq4iUY
         WrtgEeYTfHbmbwWZMIqAKrx49Xr+9CUydwUAzTPpTFTMFXyaFLr5dFpxiKTEUinVRLjM
         h14Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724610680; x=1725215480;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r5oZsSpqBtpVnxWWek+saFNNQcQXhk4VKnzKr/UGi3k=;
        b=GSj/B7BQEtU6m3I1dRdHr3shnUB1DEBsa33XxwA/26YXKIj8vUjDKUP29S6ygdmDgb
         4iugq2btg0IqRo9uHUiZzAtZMHW0c2y/Et30MMfB3jpammWmPCijl8iocw/CH8zVQrzf
         W0QAlgkKtJG4jdhOPN90vhoHf+m0jOunB+KgeD6C+27R/5YbPsfyzc51fU+U1T6rDjRF
         NgaEo3roueFZTnG4u/kl5ExAaNaeCzqKFOgDLGbgPQPR0v77R9gcj7J9u5X3UzSbBjLl
         RFKmTCIBw6BOqlmSlqeKeCLYi76RPCyjy6IzlPyG6QVJLsDnpM/0T0kFMFN3Gdgleyhs
         Li8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWN2BojBxmug3VJPW3+/SUCXBNvcIT96C29cOAghYTjYQnHoBBSWpWNiDAyODBKKsTcyJUL2Mpw5NScPPANHA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwTzqQnSMOYUkDSt+pWWd/qYhJp986LRTjbN97+vSE4P25sJ6lK
	jBTGbhTAXMxhpXmvx6Fs/01P5U22sPdXb0eZg7SowftzKlezRsNPtiLFu6lcXsA=
X-Google-Smtp-Source: AGHT+IExUeevkTIQSWB4GNDROugF9P/4Ht1vXHY2Hj6A+8kgBoxqFRUstIlxcvyBnYWjZpE2OjAmHg==
X-Received: by 2002:a5d:5f8b:0:b0:36d:1d66:554f with SMTP id ffacd0b85a97d-3731185d6camr3061819f8f.3.1724610680074;
        Sun, 25 Aug 2024 11:31:20 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3730821ab05sm8937319f8f.98.2024.08.25.11.31.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Aug 2024 11:31:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] pmdomain: rockchip: Simplify dropping OF node reference
Date: Sun, 25 Aug 2024 20:31:16 +0200
Message-ID: <20240825183116.102953-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240825_113122_059615_F3FE4B23 
X-CRM114-Status: GOOD (  10.01  )
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

Drop OF node reference immediately after using it in
syscon_node_to_regmap(), which is both simpler and typical/expected
code pattern.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/pmdomain/rockchip/pm-domains.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 64b4d7120d83..5ee7efbd2ef8 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -716,12 +716,11 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 				goto err_unprepare_clocks;
 			}
 			pd->qos_regmap[j] = syscon_node_to_regmap(qos_node);
+			of_node_put(qos_node);
 			if (IS_ERR(pd->qos_regmap[j])) {
 				error = -ENODEV;
-				of_node_put(qos_node);
 				goto err_unprepare_clocks;
 			}
-			of_node_put(qos_node);
 		}
 	}
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

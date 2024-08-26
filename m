Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C48BFC5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 15:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VPbtjz+CGUXG4Idyf1oJluvT6POdbYMgKxghtXdPOTA=; b=XOQrpq7Mt2g5bE
	GwTSb58rFbbiXzWHkHWQHu7jGI9uAOIqHLdU/upigD41f7ziMZuTT7KIDUHvIkl62GCtLcngqJGt6
	/5TfL1MvP7HYtK0WOfW9hfA8D2LIa9PI908Z4CJ7nEYOYZbdX2lbZmjV1pWqjJCetdCoNYxBwYu6U
	HumjafPikPskZDVz9g+uifkz0ApOeBOr+FcZQE0xUNqqwBu/8PhCG3uOw43w0j4DsgJk3cowNXpVU
	ZD0pv5ApchHtRX8pm18JHHcGOCOyptFoi7ZRvdT/K+8NKjcAcSZ5RJqsVqaZkHRkh1InvC8Y0J1w1
	hu8bWdGInlcI+A+9aKJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sibLV-00000007lG2-3xvY;
	Mon, 26 Aug 2024 15:09:29 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sibKf-00000007l0b-41bb
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 15:08:39 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3718ecfa0d6so97824f8f.2
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2024 08:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724684915; x=1725289715; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qq3MT2U3Bii1oMqcjLAXejFqk1AKEOqI5iAx/L7MuJo=;
        b=bsRl0hpqD1MiYHFiQZx6RzUJMzwZwBDiF7joVOnGJhri9EQ3cSYZdXMXGc8zg7NLyQ
         E8pOvR3wV+DYDFKMGV8Pkoo6jSDrW0CK9xQBZGbb7rSZ1P1AfzDYOC1Lm6AleWeBr1oy
         4WFbczKxwg6VqTdeFlWBJkVcmp2cl+gp/TvZmRAon05ZSm8NUC0Wg+0V2LWlzycQ7DiQ
         7dlt6ckW2voAA0eRn0q4yXi7+h6W5ojta1QmD5Jig/nJiuFCNRbfcR2UHxAJWuGaTjwD
         MB5QBSP6zhN8tGrc6zMTKmW9EUVUPei2KkN1DxZyHusMH4XF8fHvFjfZSn4Y0cqEKuAE
         3eBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724684915; x=1725289715;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qq3MT2U3Bii1oMqcjLAXejFqk1AKEOqI5iAx/L7MuJo=;
        b=dMwOLHRlIP/l7CN6SwTAaUoa0uFZFR/xdBanzmhf2QJdtLSdI2TcYEYZqz40Rw0Z+p
         DJRits5QSDP6Zz0Wb5YHZ4hrOwkTCpdHwysfYLTrvByAQQcnidtwzRpRbLIaPaURDvBl
         8foHU4FwacmyAIUoYgIGcIOkWvGnXYc8IjqD7jRNKsKwnCJvibZ2E+zbFZJrWrxdG+I4
         Q2BnZb5Z/wx3MR2MGqOjZaKJkOXespneDtXC8bMg0ziA705VJ7JlE1ULaLr4OpFJaWvA
         w4b/45JtdqmX2GVXIPTJots5HTcHAn4uN7Jhidh7hEilrlcanFTJM7Wcy5hbkWTmizNU
         NsPw==
X-Forwarded-Encrypted: i=1; AJvYcCVlV1dMavd9OYf8Bf1Yn4FXfUOAlWU5yhCuBmelZUSgEtXvR7JL/6B3XbLNUSY3y+fWlJxO848h2Car53SnUw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyRm4Y8otfrC3QTrwt+UYbH1xiErz/7BKtU+5Piy/L6lhqBEzgm
	0BVdfCTT2Yc/fXvQYeRPyG+0KlUVwl6sXDtTBIZVbWP3cx50POIBNuOz9tb9kBE=
X-Google-Smtp-Source: AGHT+IGp1HEFpKBlPzvGLdHjlSkL9VLALIn2mdOC9GkDps/j6o00dYXrlTi5d5CGoc1xVMCg+wJO1A==
X-Received: by 2002:a5d:5889:0:b0:35f:1edb:4695 with SMTP id ffacd0b85a97d-373118b65acmr3696789f8f.6.1724684915215;
        Mon, 26 Aug 2024 08:08:35 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ac5162322sm155040825e9.24.2024.08.26.08.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2024 08:08:34 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Heiko Stuebner <heiko@sntech.de>,
	Jianqun Xu <jay.xu@rock-chips.com>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] gpio: rockchip: fix OF node leak in probe()
Date: Mon, 26 Aug 2024 17:08:32 +0200
Message-ID: <20240826150832.65657-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_080838_002901_453DEC56 
X-CRM114-Status: GOOD (  10.05  )
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

Driver code is leaking OF node reference from of_get_parent() in
probe().

Fixes: 936ee2675eee ("gpio/rockchip: add driver for rockchip gpio")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/gpio/gpio-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 0bd339813110..365ab947983c 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -713,6 +713,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 		return -ENODEV;
 
 	pctldev = of_pinctrl_get(pctlnp);
+	of_node_put(pctlnp);
 	if (!pctldev)
 		return -EPROBE_DEFER;
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

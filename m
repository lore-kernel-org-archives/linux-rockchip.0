Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39775C25B7C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 18:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fVfswV+6HTsUfgWzjEatRJzuIgBch8ATt0ugpo1BmU=; b=pQHXNkXz7pLAUJ
	nqpFJ8NipEuRyZcqCxoUeFOgRlJsM+KHO5kF47GpZ/5mjyEgfPYBEr3vpLiFqnbBZ+39O0tZX9FfA
	7syPGdP0wFlsEQdF1oF3JMCDt6sL11iDp5KAUHV4qlsStUAPzcafOniFbmxhr3t7DqhFxoydFJF4o
	3+BDOLUHKBChNSA5DpR4amYdQjfsAB4fYOwsjjoi48dBvNyYRWv+w4AoWxXcZJz9jhQI8TNISlzOg
	OrhkhsrLjmzDPdmNqzszHWou/sh6M2MvviHHPJwUHguDUzw7o1u8Plf660KBAMX2BdBYRabjgaYFT
	m89cZyL4GuLpd5tCtERg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sADcL-000000074Bh-0Xcw;
	Thu, 23 May 2024 18:56:45 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sADcE-0000000746P-2Yqp;
	Thu, 23 May 2024 18:56:40 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4200ee78f33so24206295e9.3;
        Thu, 23 May 2024 11:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716490597; x=1717095397; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=47Z2/NbJ7rExO2YdLFnnIPMzP2wtlL23AUNZI3iAB8U=;
        b=IOuN28yqHr3iZHWmMJynXEhwpwalAT5xYVmqYXeY0KPOmgwSbE0daRrW6Gq3/8qCFq
         jsWN1wprgPEyH16daS0e6vQO0RM2E0JM6Jio88tQQnnLb5NoBXsaIVXsIpNs6qS7MDHe
         5ZK3meEjpgfSCGF/WIuEaVQcH6P54fhBHqBFFlgCuKp3Icib14AUpd8C9OUxUHkjM+ZM
         cE6NfAd3teGQsa3Kv+QJSKi9sUc6p6gYmbqkpyqanWgFi5wJ3LjHyUe93JH2S25xThJ6
         rBpb97SRCTtjvRRrZTjaEoACNApyVWAov+jEaJF/HU5CQ3PKJmV2EfwnKsxFQpbqxBiv
         YDGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716490597; x=1717095397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=47Z2/NbJ7rExO2YdLFnnIPMzP2wtlL23AUNZI3iAB8U=;
        b=TMYK4Mb89QPNV7WTbjIDClrnnDonl0HcxD6Fu554k1k4hFVlwM8meNKE7HIDXZaVxj
         zxUWXLdx2snQNJtkm8FjXbdOPI2MlJW7sv7pZBMxQEf2TS6kARpxGt6GTMXKQXwPKVkK
         bN2d/nxZtcSGQbn2tOhgXr41lJQz9tSe/Np4aytR3fviX0dmkbYe8OfljVsQgU/4glkx
         TZ4NhEP9/ks/O15jGOKqd427uJqHnYdC1U3mWlvVHB51Cu/9hsU1I/wxFEz4RSzYxF05
         sJ2nvfwADJqPrRAxuzLBj1LBL7hlbufthhZNYSQ+WWyPJTqNeXWW8q36xLapGr4OyXg6
         Sm1g==
X-Forwarded-Encrypted: i=1; AJvYcCUnYD81kdRDGBPboblXTD1t4YW1UETOO2K8PFpBZzyAeb0DnWP7TFd10EdMWZAsh37zxoFw2nDaAhaO2QLbINCe7FoWY1U6WyGIEiuJmmjbYOl8xMIUH4XP5b3StGpzJRsgGZ9Lk7BmW04kiWLfxmudJDKzWVUQ3TU=
X-Gm-Message-State: AOJu0YxRka65Tayv5dN7LGIVnpLoO2PT+dD5DoQPQ3cQ8xgi/3LEabaz
	5k+YP9Syu5PP+PpkZz6qZlT+SeSZY1G5wIleR5euNrdEPFtv8Zo=
X-Google-Smtp-Source: AGHT+IEHApteTuvE/pwSSH5Z69X7TO3ZnltVOc2+EkCRMecSx0+bwpvYeTm9DC4U98ulugpFeQ4adw==
X-Received: by 2002:a05:600c:218e:b0:41c:3e1:9db9 with SMTP id 5b1f17b1804b1-420fd354f77mr45371805e9.27.1716490596738;
        Thu, 23 May 2024 11:56:36 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:a453:b45b:e52a:2302])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3550c675581sm3965f8f.13.2024.05.23.11.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 11:56:36 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 1/3] dt-bindings: media: rockchip,vpu: Document RK3128 compatible
Date: Thu, 23 May 2024 20:56:31 +0200
Message-ID: <20240523185633.71355-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240523185633.71355-1-knaerzche@gmail.com>
References: <20240523185633.71355-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_115638_729834_43F27775 
X-CRM114-Status: GOOD (  10.34  )
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

The integration for this SoC is similar to RK3066/RK3188.

Document it's compatible.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index c57e1f488895..d1b47b14ca57 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -26,7 +26,9 @@ properties:
           - rockchip,rk3568-vpu
           - rockchip,rk3588-av1-vpu
       - items:
-          - const: rockchip,rk3188-vpu
+          - enum:
+              - rockchip,rk3128-vpu
+              - rockchip,rk3188-vpu
           - const: rockchip,rk3066-vpu
       - items:
           - const: rockchip,rk3228-vpu
-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

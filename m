Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F53CC001DE
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jul 2023 14:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rrCkH1o2pqh+NLHPfGR5Tj1s3H57qfygicDtstlJZOE=; b=3stFdBtEF12y0I
	0FdD7tKGDRdZu0iC5oKzfH4UkuMezK9KG25iMr3MSUNl3ITnAFqpVA9SmlyUlzI/HLdyrUwCwP4TD
	hrGXZkNBpR/agTCPewdnd1mQDIPg+uooXb0gS+7DFUMZqI0gfTJ1upD13CI/RM1BFCVKexlgX8av+
	EoXpQdtaXD9GI3tAbsfN/0MgXcOop7AiC0GgWAIxdPpPXf37GW3cLA0DRYqmHwHxk918bUiv6HOVz
	OSQSFdCKy2L1+nT2BrhREea7d3+gM1WfOFao2vmmFTwjoc4MUu3feAYiEfJsHPCU/tK2MzZiBzV0m
	b7qtyR1wTqp8RBlMDpMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOIzc-007lyA-0F;
	Tue, 25 Jul 2023 14:26:28 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOIzY-007lwb-2e
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Jul 2023 14:26:26 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99454855de1so822228966b.2
        for <linux-rockchip@lists.infradead.org>; Tue, 25 Jul 2023 07:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690295180; x=1690899980;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=09FVJw5uGEFALDgJ9/ima3WpNtVeSrdlarakpdricl8=;
        b=U3MYmd2ZmoBYDkWYMIZPMAcx/MgUDc21SIjy1UfhukUcPL+MoFOW8Ya2Ie/KXNv0X7
         uJwxCcs0M5XZl7Wov3gt69kBoN1ejzyceCLaGjInEOMLsrMKXiYnG/+kR1QgIPglcD80
         f3z7gd+DHKvJnlVmyC1Lq1wMiQaZMt0V7a+vzEdGlX9wTnL6xfvHXLIjph+en9EjFjNa
         JpDRDf3RBeZd7Gq5hxEz8zlIutfX4ut58rYLM5j4Z3tpdWE274xJkeyW0iaL0yJ2kS6D
         B6JgAuTGZH5LAgXniQf9I4NzG9GmKZtapxULVks40o449/mA4PyOIbyuWvKxJOPVwIbu
         WDdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690295180; x=1690899980;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=09FVJw5uGEFALDgJ9/ima3WpNtVeSrdlarakpdricl8=;
        b=Yy6KGJHsWT1rSn06AHi0O28JTvw9csTq+f+pBexzOO95JmUt7VSGN5DUxSwAtHpBVJ
         XgU4CDsw6O1pYdS9kHZEQo+96eah83UiHQtS9OcibQ3igbNxhNGz4Qpocwxfe3T05sWt
         vKjUNh+X1bn1f7IJcHsKgNDsjppkuYLpKj9XANz3G2yMOm6Ciw6pnGVDbxKDWrcnzc9O
         ngtFP5jInoenEMu7tp0KUiDA26fkB3uyBTnIIBOUbr/1wtKuHeTYEibvxAIYvAsI8tN/
         BPRaZhD5cFmKDWg0V9z0hkLNrrlr7YXzfj91oO1Q1MWiuWLds3zRkEq88rcF6DxMft2M
         V7qQ==
X-Gm-Message-State: ABy/qLYv4cYGwLZbeAGZ5ESS/ObA8mPq5CmqjoFrBoGMbCTYaQaYbYRO
	14JvdLmi6eHnTqka0XGs8BjqJg==
X-Google-Smtp-Source: APBJJlHfnYLDPWqwQX72iSv1fq6zL4FiOGn3e9/BX8Em8yYfsX1EMEFFDvH338vqV97ROpWmyBNYSQ==
X-Received: by 2002:a17:907:60c6:b0:99b:b505:eede with SMTP id hv6-20020a17090760c600b0099bb505eedemr1147775ejc.65.1690295180535;
        Tue, 25 Jul 2023 07:26:20 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id lg26-20020a170906f89a00b00992b50fbbe9sm8242980ejb.90.2023.07.25.07.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 07:26:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: rockchip: rk3399: switch to enable-gpios
Date: Tue, 25 Jul 2023 16:26:15 +0200
Message-Id: <20230725142616.157405-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_072624_856704_68D1FC19 
X-CRM114-Status: GOOD (  11.08  )
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

The recommended name for enable GPIOs property in regulator-gpio is
enable-gpios.  This is also required by bindings:

  rk3399-gru-bob.dtb: ppvar-sd-card-io: Unevaluated properties are not allowed ('enable-gpio' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 23bfba86daab..c9bf1d5c3a42 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -250,7 +250,7 @@ ppvar_sd_card_io: ppvar-sd-card-io {
 		pinctrl-0 = <&sd_io_pwr_en &sd_pwr_1800_sel>;
 
 		enable-active-high;
-		enable-gpio = <&gpio2 2 GPIO_ACTIVE_HIGH>;
+		enable-gpios = <&gpio2 2 GPIO_ACTIVE_HIGH>;
 		gpios = <&gpio2 28 GPIO_ACTIVE_HIGH>;
 		states = <1800000 0x1>,
 			 <3000000 0x0>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

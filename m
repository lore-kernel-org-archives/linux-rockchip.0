Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44970C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRqTFG2+mLZvXzZ4ckdnoWn2K7Ml8FNKfsYLFNTo0ho=; b=q4fKnWMuKlE+76
	a6ZCMNLoCo46uiqHTgUGCf7YnWNyysDrM/t/D0I9HJBgKzHGYZcdnANdGqFO3JsTxjHTvEp2Uqw56
	4hyrXNtxqSkltQYDaG/YCNrFq3segdTFq5ezKOPPHa2V6ucUPTGIgtMdAZew7aITnBB3P/SXB/FGp
	8G97XfB8dapUhmifz/E3qzbhvNXyUwLV+lCZTFeCCwExCZhrDMidNBo3HeSr9MKq4kCO6amw19fN5
	DS48set4s3e+qmcvaUnXJAcki9tHVgINP5ErvqsK5yCf0FRMWXKe0kmeGu8xUqY5XRMXQXXi1foPc
	c86lqrHevdg/6oxl34KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWku-00Dvdy-QY; Mon, 14 Feb 2022 08:30:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXz-00Dpim-Et
 for linux-rockchip@bombadil.infradead.org; Mon, 14 Feb 2022 08:17:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description;
 bh=icQcZ+WFXKpPn99IyrrodPILDL6gHPyC2MLITlx0dJQ=; b=S0fXchbXGnE3zt2cJuIfql5tot
 FYfckh6nEARAYS4EWsIDpFVbOh0s5Fih390Lb9QEa9V8uPNCH/zB1CBnMv8484F5VSlAX43dZAFtG
 CY/NBvsgsLinEUuKG/wNEliM5+t9BJKykS9absMgEui1qZEy3AMze2clah6u0epTyocPN4CN6Eb4/
 qL0g8EALn7zPU68Oiqna+MXakLI3fnRfAJYmrROL5sIiZuCETQwwaZWWMJ9CLrubw0kmtIkgUtu/V
 ZiowZlf81Z7/oVfnkvZfvNu9l2f2wGIMHYBVclDI7dX1mG5ako0cpjCvxpP1h1kfre3L1alt5y8z2
 GtSQqXyA==;
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXv-009rfb-Lq
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:17:22 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E5CBD407EB
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826619;
 bh=icQcZ+WFXKpPn99IyrrodPILDL6gHPyC2MLITlx0dJQ=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=I0OJfT4gEOR9pc7Hok5kjS+AbI/lUUj/zvI0dCDP3U1RuOKV7abiVKKlKpmieGHMP
 3wn3h8de9cFLFXEaah9MiK/o1/U7PSvhtkoGHdWv3h35viXSuAHw7UiVtPjlD25z7l
 khsFoHuVcnH3vsimYIcLrE/vHY+BQDptgEwMsUbwmQ13WVaS69TYaYNqWkyTrdsLy8
 L5pyicYxVhVre7Bsjyh3565i49bLYOlqnIJUH8dyTZvNXyjh9w3x7yHr7taVSrI3jO
 8bfdO+sQanQog8xuUVaZIL4UMaxCvXUANG0QqXlqzkQMRnUgHFc+Wmhjvd0NVNupBq
 VD6TYDA+340Wg==
Received: by mail-ed1-f72.google.com with SMTP id
 l3-20020a50cbc3000000b0041083c11173so4433117edi.4
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:16:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=icQcZ+WFXKpPn99IyrrodPILDL6gHPyC2MLITlx0dJQ=;
 b=3f4NEN1ApRnuV7q3odxrQjWZ5VKt3IvyjYbRlxRqi0LXLtyiDwDOHK3n6ZzcYX32lM
 c9avCD6xW8RVYfzjbPUhffVudBDEml/qk0J1/Yd6Yr16dxAwLhjDQx8L9fCJlrHCsL/q
 ilCh/QYyzxC0w3azepwMVKCOY3DERFqoF48h7bSun54nQPDxUoLaSuYvoQz2bE1cIHG3
 Xv4PP0+6zFj7MsaM3hSN/QRa8nXUOz0vsu7AWHas27CD38YYQj4km5zQ0xakSwKc1Hef
 x5xIG5AsIdcT30jNKFAelgIDVEmtHpibV8sT3KZnZ+XaAfOHGpFpPEo6W8+5UM9e/3CS
 X1Aw==
X-Gm-Message-State: AOAM531gT/KnQUORScHNFdzVWudA971WNdG2BTPMaKoVhauEi/nopa/E
 FMC9SKO7eCz7EgNS07qN3x3qzy5qaW4ZgYlqDb9VjgUBxlHNsV7cZoDIEutOPI1Af4NZLLQqWbu
 MOf/BGE4Ouhi53i1GL5c+8F1xBS/yK+Nl29GofX2zDEHJFP2Yew==
X-Received: by 2002:a17:907:7e9a:: with SMTP id
 qb26mr1455502ejc.294.1644826619432; 
 Mon, 14 Feb 2022 00:16:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyo1kloneuL4CK5f402ZmLsMaBH9PsTCXLm/PAvrgWgzMOv7fXj/4RlM6Dc+vRLwWlSy4wiTw==
X-Received: by 2002:a17:907:7e9a:: with SMTP id
 qb26mr1455469ejc.294.1644826619203; 
 Mon, 14 Feb 2022 00:16:59 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:16:58 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Philipp Zabel <p.zabel@pengutronix.de>, Anson Huang <anson.huang@nxp.com>,
 Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
 Rahul Tanwar <rtanwar@maxlinear.com>, Jeff LaBundy <jeff@labundy.com>,
 Yash Shah <yash.shah@sifive.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Vignesh R <vigneshr@ti.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH 12/15] dt-bindings: pwm: samsung: do not require pwm-cells
Date: Mon, 14 Feb 2022 09:16:02 +0100
Message-Id: <20220214081605.161394-12-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_081719_825660_BD65F91E 
X-CRM114-Status: GOOD (  11.44  )
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

pwm-cells are already required by pwm.yaml schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/pwm/pwm-samsung.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
index 188679cb8b8c..fe603fb1b2cc 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
@@ -86,7 +86,6 @@ required:
   - clocks
   - clock-names
   - compatible
-  - "#pwm-cells"
   - reg
 
 additionalProperties: false
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

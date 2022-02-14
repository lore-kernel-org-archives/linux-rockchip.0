Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1D65C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJcuFr3/199F52vZi6gikyMJEMK9tJ+61VkbN5wMxV0=; b=3bWdkZe2bySHLQ
	fSIPnym52YeYpsDc+DPQyjW+PrS6mm7DBnDRPAp5BkCwQwuyjYdyb4qEW6Ia+GOwPK0EYLp4UBL6B
	vrL/25RwDJvWnRu3N0gLMFeKM+T4TAEkzstvsWPU8w1Qush+kJiRmUkH8FfpSUMgrkdFWg43Tp0St
	qyVHn21ryn0H6vRdGGXuIA8/lQSUQsiUm9aYLLlbm4vSJiUtPpz36P6c9LQRjw7S26qduFYAPHApb
	AR/34/U7pK1vLG9bry0hJITt7QjBwwjnriq+atK2lDX088ZiU/QAObT+LIvdRrRIhmt+ZW8pPi+HI
	gMIIJZ6uw4tGoPFYkgKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWal-00DrMJ-PV; Mon, 14 Feb 2022 08:20:15 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXa-00DpOR-LU
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:17:03 +0000
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3FC94407BA
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826614;
 bh=11HYmRlx8dE2WpuAnKJ9eGJzYR6C7S08K2HSgZ9haWY=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=WZvre+ZYzwd58Bw5kuYwf7PiKLVnARh/6YPLtryxyM9oy82mFO5nzwsix40K9/LsT
 RUij05lgpJgdIhhHIuDruFuGRpgfzWMsmhbOLiDy1V/PImRvM0TG6JIk7IEQkimML/
 +rI1Ti9CpRx3AABMuB3gf1Gd9bAsIgJhbyY6Keb+lY8tYK3RP1pjAArrEgCqTGFadd
 QSZxlyMNtdtwt1hQHiw0ehbqP9TDaAkNeVDF4/UJPYtfCMNvnvGOEXmpPAfQEJ/7Um
 NgdWKsxdgeFI5fhh51JtuecZttlIzfxGt1CJjSMHTZqMGfsPSVFqK0CIPFRjm9rnVi
 N6mVYBDNn6PWw==
Received: by mail-ed1-f71.google.com with SMTP id
 g3-20020a056402424300b004107aa941ffso5237469edb.14
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:16:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=11HYmRlx8dE2WpuAnKJ9eGJzYR6C7S08K2HSgZ9haWY=;
 b=PLMVHQbQcS5ihd5cTAkJMuQ5A+qP/jhAs5wcWluyQ/6+EfnX8t/aNw5509ISzmkYSf
 QRfkkiQ4zN8caM8Dy2HSyu/Z7ACvvJVjBRiHRraP1UErNiVVyaLx01HQ7NERYmYDRu9q
 jN5TZLX3+lhh2MoL58ku0owNKs4JYtYU84k42CapB/ariWSMayYbj22dlvAeCyCV4cUg
 YTy2EGGbdNulijbyI3tWz4gv48mfLRXXmB4vjt8w+5R6SxMQZjX7lhBNXVn9YOlQgJnS
 WIvHKM76xFbYO47EDsLBn1R4aJZh1XGRAgHVKgSMQsoR+H1YKPTb3eOGBez6/C7KZP8Q
 o5VQ==
X-Gm-Message-State: AOAM533jcBXu2KdFxxMgYJMtvfwVn1Cs0NdhdM3ZMiqS7toRYfbpDGQ5
 nRuq/Yms3To7VFDKZjjHedohnER9f6AwKcbhAdKRZfdpmp2h/mlfNvPtsARLLb4TdtylH+e+QxA
 B83PyHF4wNYs8EqjKD/WSG3Ruj3XiAq6FqOiubkkVNOOZQzyyow==
X-Received: by 2002:a17:907:2849:: with SMTP id
 el9mr10391935ejc.201.1644826603353; 
 Mon, 14 Feb 2022 00:16:43 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxLuiFn010/+iYNxCh4N8RZLwAdqCGm9AdinTqIbutozbZK/206AXtZbT7nvgxN/IZXfSJlXQ==
X-Received: by 2002:a17:907:2849:: with SMTP id
 el9mr10391886ejc.201.1644826603108; 
 Mon, 14 Feb 2022 00:16:43 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:16:42 -0800 (PST)
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
Subject: [PATCH 02/15] dt-bindings: pwm: imx: include generic pwm schema
Date: Mon, 14 Feb 2022 09:15:52 +0100
Message-Id: <20220214081605.161394-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001658_899384_54DC88F7 
X-CRM114-Status: GOOD (  13.35  )
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

Include generic pwm.yaml schema, which enforces PWM node naming and
brings pwm-cells requirement.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/pwm/imx-pwm.yaml     | 4 +++-
 Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
index 379d693889f6..b3da4e629341 100644
--- a/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/imx-pwm.yaml
@@ -9,6 +9,9 @@ title: Freescale i.MX PWM controller
 maintainers:
   - Philipp Zabel <p.zabel@pengutronix.de>
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   "#pwm-cells":
     description: |
@@ -59,7 +62,6 @@ properties:
     maxItems: 1
 
 required:
-  - "#pwm-cells"
   - compatible
   - reg
   - clocks
diff --git a/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml b/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml
index fe9ef42544f1..8bef9dfeba9a 100644
--- a/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/imx-tpm-pwm.yaml
@@ -13,6 +13,9 @@ description: |
   The TPM counter and period counter are shared between multiple
   channels, so all channels should use same period setting.
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   "#pwm-cells":
     const: 3
@@ -34,7 +37,6 @@ properties:
     maxItems: 1
 
 required:
-  - "#pwm-cells"
   - compatible
   - reg
   - clocks
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

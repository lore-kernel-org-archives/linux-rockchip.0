Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EC50C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wc8hIkhQszRQLuW1pnAzSY+3YIas9A2DyH21CJjZUcM=; b=F/aFBnTI+rMiS+
	EHcE9ktxZfFDPPGVaOzGTG6DrjaZWy0AD58M4TZUqEeg2J6cghl+3c0EV0yErNSdL7w0HirECeZha
	AR0APZy+SFmkn+yTfhNAhRmwWgDohPH3iWEm+2+EqbxgaaGzf7KsRDYQtMRXDtUsYArYCXOHPYYyP
	JbXqppjryJp/Vr/x+djmkc8Uts4IYOpBbf36Mx7oKszr3Xcc9w0zdi7ZBwTJ1w3mTYFQ0fhf5wZ/u
	z8UX3m1B0RxIScJM5S09Uo9H7GLZFcTLYcldHjSrw6NiL08YdvZynmMH9hG5nC68Biqpok0jzMSQ5
	sLAizxsgh+l7BiCnhbEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWbv-00DrwM-Io; Mon, 14 Feb 2022 08:21:27 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXc-00DpRc-LF
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:17:05 +0000
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 23637407E6
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826619;
 bh=1xNmK//HjGNaIQp8eaYbachy53dRAmEobraHrPxOQCQ=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=U9KyrTFrTurLcLRQ+hCnG1ZyJ4B/CffsZOpR4MCJndCKlOWDSvG43oNV112EbqqYD
 oq3+PY5smjWm+QMDF5i5Zqsd6cIar+jd9gtbAxG5MHuH4op8kfrzj7tmm1Iyl/oBTG
 nrKuXElSIKMrZPW+nokEiBqCnAEJqU+R6oDjxoUhpjefmCOsbseSSmd6cqCbHzjHIw
 dRAfrkpRhS7+KGgqB9Jq83zNvzxV9lWYyOy+Vj2NvePnnHKgNjP+L+9e29RwYltzo7
 370iah5IBAPPM5tp8EmBGR6Bk+BjEIQogrZczLuAaVlc7GqqDX7vBK35lY5ZznxPqL
 J82kJscc8wNHg==
Received: by mail-lf1-f69.google.com with SMTP id
 j11-20020a19f50b000000b00443304eab91so1258997lfb.13
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:16:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1xNmK//HjGNaIQp8eaYbachy53dRAmEobraHrPxOQCQ=;
 b=j+/cJ4gpapPqK/rE+gv+q/2wzpW14eoIJQ13WZWtRGsztOUcuQQBMhojUaB68QoXSL
 kXXuYqR42uZ3pAKz+MT/9Rgu5bTWFpRpUZcf0Jg2dPAs8MQ+W677nW6DLDFqRti46ag2
 EBuErID6oGG1kmoY2EDpuVj3pVycW9EbJGL2rkxShV47lPvMZCrWHkW/lY0XPNRJXYzJ
 2hlQ3y/wTpG7OfkGaQNMmYjTnbUgcoK8jnuan2EnG4RiBioGgQpfIfZf3m2dLwArWIGO
 sTu4tnX6qJ0QKXnK3opyxDvnI7MIXK9bnkVlUn8iqECnzxfpMg0qSxYjvzwuXJJAZinG
 cuaA==
X-Gm-Message-State: AOAM533JPKo5AW4UQTn+nr/Blvj6dgkBjr1ck1KJCqRgKZNl8KkL+YT6
 HyaxSpG7CvMly7GLRElPhBe5aZtrBJGjxUIX820R12YPqPoQN4ZSxwRpgVgkjhrmjD1Khw4iP2w
 mBPDjZYd3pWu68TLk0ItXy5vLsv5LzPZwWnYOydcFCkHlsTRQSQ==
X-Received: by 2002:a17:906:29d:: with SMTP id
 29mr3045146ejf.183.1644826607514; 
 Mon, 14 Feb 2022 00:16:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyFwQjCgryJA08f/ZPqu91gByLS1lXUPn3UYgvNgieSyLAvCFuIrk9GLlp5SVzdDUHhPKf2qw==
X-Received: by 2002:a17:906:29d:: with SMTP id
 29mr3045116ejf.183.1644826607316; 
 Mon, 14 Feb 2022 00:16:47 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:16:46 -0800 (PST)
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
Subject: [PATCH 05/15] dt-bindings: pwm: mxs: include generic pwm schema
Date: Mon, 14 Feb 2022 09:15:55 +0100
Message-Id: <20220214081605.161394-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001700_855589_4A52472B 
X-CRM114-Status: GOOD (  12.37  )
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
 Documentation/devicetree/bindings/pwm/mxs-pwm.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
index 8740e076061e..a34cbc13f691 100644
--- a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
@@ -10,6 +10,9 @@ maintainers:
   - Shawn Guo <shawnguo@kernel.org>
   - Anson Huang <anson.huang@nxp.com>
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   compatible:
     enum:
@@ -28,7 +31,6 @@ properties:
 required:
   - compatible
   - reg
-  - "#pwm-cells"
   - fsl,pwm-number
 
 additionalProperties: false
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

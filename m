Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7667FC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqqATP4kZcdrEI3qbdfV6Z2cfZ8R0HoAxNd81bZ41tU=; b=reHstjecASsDz5
	518OZb6BfHvVCtAvVtSlI/9Ke3GKfCHK3++0XMp94MN1X2BsIZmh8uNiHTW4QCEIj746qUmtFZP/4
	wAzDLsuQ/eaQPqoOOamKe/IhkJF7lthsZ9OtwVVcSde/pLLQ5OEh5p+sCohw5qg9RKScvWbhVoS3/
	PQta6/VyMlwJUif1wgBJIUxeYoH6hfDpism9pp2VSwNrjZocj/wFKBsLq7hUv8oqdM8cqgvihmrjR
	qffo0mraHBexkvCvcIZ1qvK3mzwhOJadBhvuu7cKjmOY+9eMaTavYT1KI0P3bQW3fC/RjkZdkw9ui
	vPSmNd2j72T5JeBrQ+JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWbz-00DrxZ-8k; Mon, 14 Feb 2022 08:21:31 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXc-00DpRW-KC
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:17:05 +0000
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id DA68B407DD
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826616;
 bh=05sXSD4PIb8v0ICor9Lwlzw82mhcHvJZHXpVeLkjK/k=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=Cknd6t9eaRBqsOhveHb376HU+5VGtd65/1/o4STn5SGJ1U5nQUp2uAbXnVditNgGt
 ASnMiqP8IdaM+47gYc6nbcfykY6h/vHbQkWjnQGIolB2E0grtf5dinkjo4m3t5oKLU
 Etw6ld2eNJeyAYtpshMzNYQ0ZBoYIBKfzJgJH3ZH4VvXKa1SVFvzBbwACBxhfIixcH
 8b7hZT5bKjcdqy1fjSGVrMRvsMiIicxBPDxmE+dABTXYPZ2ZOO1pmKId2Oe13P4Ypu
 4/uXIDPYZnx8N9Pjl/bSvBjyDwOf3yeN93I+IA3LoB5e9UEgZ2nbC4zQdkQfQME+lK
 AmBbXxTBiVK/Q==
Received: by mail-ej1-f69.google.com with SMTP id
 hr36-20020a1709073fa400b006cd2c703959so5471437ejc.14
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:16:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=05sXSD4PIb8v0ICor9Lwlzw82mhcHvJZHXpVeLkjK/k=;
 b=4oE+yhRNECqhodf0E/1kcdY6I3qZ+9dzrIq7PTJHHxi5TbEBRNPpR9lFsHUBq/OqqF
 LodsyGFtJb6dTGnV8G4ZwX+DqCICgd2WcFNuT0DtZtUKLsFaTMuk47i1ojluk8TjlIC0
 XIH2rr7mj2RB2KVpbG0uSwYcyVIPzQy2cYMZcgZQpFf0G9Q/tgCQ20Wuspx1a/KdKDn3
 GL2FPrhaO53n7oM2QHcBA5OVtgSpO+d+BPUECEnXC3CBaj2GI8vy0Tmv8WdtvWFpKw3J
 XsJ8lnP9gJnEBi4gP+lc8WEtpxtUlsnrxKg34mZwkdgYgVX1xoNEM5hVETparhVYbWGQ
 xICQ==
X-Gm-Message-State: AOAM533yzIZVtAkvfR5qkGQpHYfP+KJ3dr8qQdHso7E0TO56izAGXXBu
 Mw92bIFddKde28J/A6drTH7wZbl0f2eEP6YFnzNbbUQKn6f2AuGEMwZxuY5Vo5gdZaTDzi9cwLM
 5ukGWa1jAsURtEBqk9RKeFsIQiaZTdENTN78atYAeInMnvkn8SA==
X-Received: by 2002:a17:907:3f09:: with SMTP id
 hq9mr10433659ejc.388.1644826606216; 
 Mon, 14 Feb 2022 00:16:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw+ZKNecHLHlMF1p9Zdz7frO6KM7oerLABDg+IKR8oKqn7czs7ZE3TIi9GnMTbsd5cUpiNWFQ==
X-Received: by 2002:a17:907:3f09:: with SMTP id
 hq9mr10433614ejc.388.1644826605951; 
 Mon, 14 Feb 2022 00:16:45 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:16:45 -0800 (PST)
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
Subject: [PATCH 04/15] dt-bindings: pwm: iqs620a: include generic pwm schema
Date: Mon, 14 Feb 2022 09:15:54 +0100
Message-Id: <20220214081605.161394-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001700_822609_14111F97 
X-CRM114-Status: GOOD (  12.04  )
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
 Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml b/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
index 1d7c27be50da..0a46af240d83 100644
--- a/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
@@ -15,6 +15,9 @@ description: |
   Documentation/devicetree/bindings/mfd/iqs62x.yaml for further details as
   well as an example.
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   compatible:
     enum:
@@ -25,7 +28,6 @@ properties:
 
 required:
   - compatible
-  - "#pwm-cells"
 
 additionalProperties: false
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

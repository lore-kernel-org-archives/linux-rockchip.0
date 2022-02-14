Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83D15C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kztPnpZ1Buuz4g2DIb5WEcYLkoIicS1bkGRsxv1oh4=; b=km+3lJBa558iCz
	hstDjbYtPVyp1ozqejxisEHuf2vC5kkfGyjsO8RxwBmEQo/lpq/3NtJo9bj/2Flz1XP4JvoN5IThH
	q+LluTzG2YJZhvJjMzyXLlJCy97Ssa/EUeRcfzUUPWUg8190DPYMj46l3s53Rx5Z0/il+j8VVQPIY
	WKt7W3Sp07XGAaDkqXhLmpVG6+I1CpWNckFfSrUPBc1mgzC4fwIo4ij8zx7dTrAcGlBawdc49oj90
	iZlUP6i/SN7BLpvYXW6dWLG8HNmgqz+3ixn9SZrRK4wl2G9SJiaeVE2cVmSu5jxdBKmh5gxYOQfVc
	IOMNgu57p1mnhwpui9tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWiQ-00DuVb-5j; Mon, 14 Feb 2022 08:28:10 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXm-00DpZA-4B
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:17:12 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7ECE4407E0
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826628;
 bh=l15FonF8uQEq+4XEYAwpRwWSHHnXgwOoYp02FVF3qnI=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=QSg8zLL2pUEMr9LQX8hkx1a0zd8rGWBaF0mo0oJrh8myim0yQ0j3aFURCJawyhqsH
 P8rIDS/anz2bAujK7AHasW+VDdU0D5AxgjHHXH5oRngWzKGy0WcNk3slqf1hyikRFl
 z/ni8P2cD86CjB6dUalIlcPjzK4mdQ8NqmLSodyVWdFE4wiD8tzxau4VHHYTfK/k2w
 c8PbaJbxFK6iS1OliNc1yBtuPtZjDes/2Lyp40+ZRca8ufho5+kqo7HY0vdROa14W1
 wOW18X5EQmvTkDB4hep5t0YBgwnPep1twaOAJOAC3xUhUWfmJa9/V1rTmPDgFwXy2Y
 6EvK59mOd8JhQ==
Received: by mail-ed1-f70.google.com with SMTP id
 w3-20020a50c443000000b0040696821132so9729857edf.22
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:17:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l15FonF8uQEq+4XEYAwpRwWSHHnXgwOoYp02FVF3qnI=;
 b=svUgXDhohtuN0rqrwW7g+unV/rPHB+NazMMDP/dpxwtims/HUkHLi8NRWBPfQyOa6f
 87jk45xD19pZdUPaqAgCCaw3v7ZIKKmcASb5tWjdPbBhgSkMtxc2Zx576VBAaHC0CqGv
 QCD+ePdOzTPuNV9FYhQ3EpOw55Ayjj67tjADQAWdF8qcgCR8OZOBskE/x3CfGgFKUuXs
 izSJC+b684KTmuYVKR0mnus1BHgihXVu6Zbtgy8kkaiwrZigz8RpEjqQmxQi4BNXlLhv
 Wrh//izXV3Cx+4zPaVocU33NzU+7YX094zXFrqxF6YgsfmJFnf5YpKwLaplkgYeRSe75
 Y/VQ==
X-Gm-Message-State: AOAM530b77TQupkL2f4dB4QnlEwyiDeSVtcBmneDUjtzY5QwjVxlf+Ih
 /rk942f5DVJVwiATwnqvFR0sey6WtZsapFogvhpH8TQLev0D25rdMGtN15tg82Veg/q6LHzYlD5
 CYegVZclDI541eP7HL5CG6xdu4UuW17HAlkOgZWdz4FdEPsA7jQ==
X-Received: by 2002:a17:907:1692:: with SMTP id
 hc18mr1264364ejc.558.1644826617908; 
 Mon, 14 Feb 2022 00:16:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz7ZFaKPSqzJB7EzZe96ipyX590XuNxFjp7kl2szJXL0JpWvoFuFlVeLyW48x6LMwjXS7gpuA==
X-Received: by 2002:a17:907:1692:: with SMTP id
 hc18mr1264323ejc.558.1644826617720; 
 Mon, 14 Feb 2022 00:16:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:16:57 -0800 (PST)
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
Subject: [PATCH 11/15] dt-bindings: pwm: intel,
 keembay: do not require pwm-cells
Date: Mon, 14 Feb 2022 09:16:01 +0100
Message-Id: <20220214081605.161394-11-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001710_333622_30ECF52E 
X-CRM114-Status: GOOD (  11.49  )
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
 Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml b/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
index ff6880a02ce6..ec9f6bab798c 100644
--- a/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/intel,keembay-pwm.yaml
@@ -31,7 +31,6 @@ required:
   - compatible
   - reg
   - clocks
-  - '#pwm-cells'
 
 additionalProperties: false
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

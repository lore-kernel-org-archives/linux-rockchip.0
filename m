Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BC27C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQAwjuSX18V/X6qGiVoBX5yF1RHrnkxmFXlUM0cadxc=; b=sl0boHY3LhzQQz
	s6HWOOgvZRuKvu5v1Zjg8gWvgIHbrv8FT9HCvqckRjgmGse1QwiADyrvS4FMc5+F8YI340/RbolVM
	Y3jFgg5ZhCNkqQsUtfmWLpztcRMn9eS3mweHoFI7Xv4HjhroZZw4mFAbUWgQz678B+LB7rg/v9w+3
	pi+VPdx9E/hwIXjWi5z6YxXFgXxR/uppFTkStbr4KGQbcHO7dUdm+p9feD+8mwhvkZs7U3q38DvBe
	DEz6fgCDlEXZOiTkTwuBTIxNj/VpNTCejFceAfFdo2Wq/ioMCPuCj01R+/dRdQ/J+SzxvcACwN6ki
	Jd5NEv/zps9MN//ZSdlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWc3-00Drzz-SD; Mon, 14 Feb 2022 08:21:35 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXc-00DpRV-Jh
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:17:05 +0000
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CC2AD407BD
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826615;
 bh=7rHD29slkZOFSJhahaVYXmLu64XBgMMbFm+fpWjAlF0=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=FsoUPi3IYaA+psjL1AIbM3z8I3IaNR8Az6Svni/2vrWXVP0YYD5W95ioM30uB8yqd
 MmBxwhsHrqtjNY2xEjh7j06A7bSrvYI3SR7cSrRaJ979qZqcUqZ+3UCenV1faXu49H
 DiZCnp4mJFowkbmJ0G8E79MHd+dYr8mcUT+4Ck3ffm+fsSzch2IB3kshxsChRwZAul
 wV+xwMWYmHxcXi5yWv14WY2Z6K/wW76AcIMwnLr3dwm7GxYRF1PKeTB03Uy9tCTKBh
 b9GE6LbRKn9DkPlNnX7A+uIvgNuN6EJFKrMC5YuwPWQjC807SA6gIOayEb+T4H5dkT
 zv0yBTiXL+jQw==
Received: by mail-ed1-f69.google.com with SMTP id
 r11-20020a508d8b000000b00410a4fa4768so2499117edh.9
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:16:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7rHD29slkZOFSJhahaVYXmLu64XBgMMbFm+fpWjAlF0=;
 b=LJXADwk6OzmRBGCoY0b3kCWqIADAUMYpmM8M+JSn/wRA3a/i3jC7wx5yDMXyhXCE1c
 MWRn5TwqyqDs2o9mwhL6NqIcwPC0xgbvW9WWMueHRN8t1e4pkFdY7K2o6Slxu3RTV0R5
 KfZXRK/eyy28ejwwQWzNWnII731+AmorpG6wuxwUcvI3ioyP7jdANj35LEGvyCrK1PdM
 K9SXEfrKndGpP6cYlBTRVcW9QbfF+s4C4Uha32+7k/bqRFbT0cVkAx74SXgTT9RZM6fN
 pqFJIrFFEBaYJyeg+WJaC+hhXBlE2jClC8OudtBbg0DKETaf0AcvDY0WZeKEwnHtfGRz
 deHg==
X-Gm-Message-State: AOAM530NMnRaX3DbKp7Vhij9BAaOezqApCQ3R8zW6+upqDL3R49jITR0
 a3WxkWdMJ3hgeb87uHv99oe94RFSBILVfzc6ewb/qkRSkFs/BviYWe12BIBY9EJfO7Ll6iUGpnU
 a+KqpAtN/xYXWYR3nv9b5yNelIv6oMbpkdo0QPRVfsQBHF3gSNA==
X-Received: by 2002:a17:906:6496:: with SMTP id
 e22mr10192499ejm.263.1644826615559; 
 Mon, 14 Feb 2022 00:16:55 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzpvkONiH4FS0uQPH9alYGubO9/o9pYJXoAtA309TiungpCh9WYv1lWlRgqPAUTIAinl39jGQ==
X-Received: by 2002:a17:906:6496:: with SMTP id
 e22mr10192484ejm.263.1644826615405; 
 Mon, 14 Feb 2022 00:16:55 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:16:54 -0800 (PST)
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
Subject: [PATCH 10/15] dt-bindings: pwm: brcm,
 bcm7038: do not require pwm-cells
Date: Mon, 14 Feb 2022 09:16:00 +0100
Message-Id: <20220214081605.161394-10-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001700_836495_7C7F1FCC 
X-CRM114-Status: GOOD (  11.48  )
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
 Documentation/devicetree/bindings/pwm/brcm,bcm7038-pwm.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/brcm,bcm7038-pwm.yaml b/Documentation/devicetree/bindings/pwm/brcm,bcm7038-pwm.yaml
index 4080e098f746..119de3d7f9dd 100644
--- a/Documentation/devicetree/bindings/pwm/brcm,bcm7038-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/brcm,bcm7038-pwm.yaml
@@ -28,7 +28,6 @@ properties:
 required:
   - compatible
   - reg
-  - "#pwm-cells"
   - clocks
 
 additionalProperties: false
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

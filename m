Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75ED4C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 21:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VyUfx+Khp9EBLXQ3TC1TAR0X0qDfLCHZywfg+tBPKC4=; b=JQzEFv8vQNRm2Q
	NEpjfvvocnE/Q6RDY5fQY6Qtmksu1dNa6Km0XibmeZITZ0WQjsOWapgoN9omj6NFBUTq92IlDUlJ6
	WIWGijW2Bt4f037Ifk+ikGUajJqsmtnbr0CS2pOEbgmLCXET/HVGyrhjPkvVeX/NHZ8s2t8MpxXWN
	vnuL/iEU0HJ3BfhTImpS3AoRB38gZWoHg8yphh6dFmHTwMSyJniPsqFflNThCJ10zI/D73dXMAPwl
	4rhH97a8p43RCtXsuRfmvCU2600GViGgXTxzARPDfs4V553rk4pJcHEUK4sLpCxOuNeGLQxGnY8FX
	1pxkSb/9gKQwV0tQQp2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJipx-00GzUs-6m; Mon, 14 Feb 2022 21:24:45 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJinS-00GyDR-NR
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 21:22:12 +0000
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7ADD9407C4
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 21:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644873729;
 bh=Yyn2NqnfgQsqTNINvOf5kiaG/8cnl0ieMPcjnfWxCE8=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=YLoTcOLuoVihyjwSD5iclGDFonOoHSFGAaNYydfm3OQPrifeJKVlMh7ZGvqfs2Uuz
 7Svqux4tFQ+fK8woPQxehnyifrFC8MxTuHhEf1cosyOcUHtxtiRNcTeBE1hIWxvDSc
 tTETyXnLl+/N8dQWxZ3KlTubF+8kfXLZv1DZKGd6gxlvgKdlpteQdYZK50tQT5WRRG
 ON+TBNfrAQLCEnCQErz/pRL4vFv+Gapo6i10ZLHZ+1UtHN/MmRVmMvZTwBXSSmCbF2
 mYFb22js8Po1lq4SPnB7IlNxBWtOq86alhfd1+lsvPlBEFZk3JDwwWjslHBDilcouo
 nq7ObTQfnihbA==
Received: by mail-lj1-f200.google.com with SMTP id
 by12-20020a05651c1a0c00b00244bf726482so1605963ljb.0
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 13:22:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yyn2NqnfgQsqTNINvOf5kiaG/8cnl0ieMPcjnfWxCE8=;
 b=eT9iJqbnlwjKv84dynR78Vz8TtKW0Q6G07ysvfQm94D56cBpgV+79PsMa6U6qubJix
 71w9hZcG8OPT73Jra3B9YLtVJM04miMzlf1c39rPscsTtUqeCIbrAdlHi1dFnWy2zmEQ
 Ipa7/HeLrsGP2B2ImJ8j1PYHpnLl9QG93L5pJlRf5X7qir/vJiK3fkYlGLxYPUEXkpd2
 VAfKYDmEPPd118aJjXV/ukJfDvXJU3bffYVvEjAMxV9ecMDYV/r2NDsH1E8CeCA7/e0I
 xcKBMZjGuDimpnXhLWhOmz7MlE6RgVatjl/3CAgW9ch+Y1ISzQm+AMB5emlAk9Xzye5k
 Eq0w==
X-Gm-Message-State: AOAM531pArwULTqU1kpQt6P7Vq+xugUsD59mKtn7l33d2c3xy/DElZxX
 tUKaM2vGoLj6EWSJv3cLZFrAHn1cHcuaLUKFvYe5NlBC5TsWmr2NCiogIICfIwdocZ+ZVcQNsxw
 b+e4oG/7UBy4v7zz9HbZ++R316yyW2yTYkEZ5bslPlZW6vcolAw==
X-Received: by 2002:a17:906:43c9:: with SMTP id
 j9mr542997ejn.652.1644873717988; 
 Mon, 14 Feb 2022 13:21:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxHUEbKK+ige7iX5bnwzSKFJMTswdOEpqx7cMi1lNy54Z/tS1AK9z5IhoWWwB46l5Z1qT3wqA==
X-Received: by 2002:a17:906:43c9:: with SMTP id
 j9mr542949ejn.652.1644873717746; 
 Mon, 14 Feb 2022 13:21:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.21.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 13:21:57 -0800 (PST)
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
Subject: [PATCH v2 00/15] pwm: dt-bindings: Include generic pwm schema
Date: Mon, 14 Feb 2022 22:21:39 +0100
Message-Id: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_132210_927585_0B4207EE 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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

Hi,

Changes since v1:
1. Add tags.
2. Adjust subject (Uwe).

Best regards,
Krzysztof

Krzysztof Kozlowski (15):
  dt-bindings: pwm: allwinner,sun4i-a10: Include generic pwm schema
  dt-bindings: pwm: imx: Include generic pwm schema
  dt-bindings: pwm: intel,lgm: Include generic pwm schema
  dt-bindings: pwm: iqs620a: Include generic pwm schema
  dt-bindings: pwm: mxs: Include generic pwm schema
  dt-bindings: pwm: rockchip: Include generic pwm schema
  dt-bindings: pwm: sifive: Include generic pwm schema
  dt-bindings: pwm: renesas,pwm: Include generic pwm schema
  dt-bindings: pwm: toshiba,visconti: Include generic pwm schema
  dt-bindings: pwm: brcm,bcm7038: Do not require pwm-cells twice
  dt-bindings: pwm: intel,keembay: Do not require pwm-cells twice
  dt-bindings: pwm: samsung: Do not require pwm-cells twice
  dt-bindings: pwm: tiecap: Do not require pwm-cells twice
  dt-bindings: pwm: tiehrpwm: Do not require pwm-cells twice
  dt-bindings: pwm: renesas,tpu: Do not require pwm-cells twice

 .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 53 ++++++-------
 .../bindings/pwm/brcm,bcm7038-pwm.yaml        |  1 -
 .../devicetree/bindings/pwm/imx-pwm.yaml      |  4 +-
 .../devicetree/bindings/pwm/imx-tpm-pwm.yaml  |  4 +-
 .../bindings/pwm/intel,keembay-pwm.yaml       |  1 -
 .../bindings/pwm/intel,lgm-pwm.yaml           |  3 +
 .../devicetree/bindings/pwm/iqs620a-pwm.yaml  |  4 +-
 .../devicetree/bindings/pwm/mxs-pwm.yaml      |  4 +-
 .../devicetree/bindings/pwm/pwm-rockchip.yaml | 74 ++++++++++---------
 .../devicetree/bindings/pwm/pwm-samsung.yaml  |  1 -
 .../devicetree/bindings/pwm/pwm-sifive.yaml   |  4 +-
 .../devicetree/bindings/pwm/pwm-tiecap.yaml   |  1 -
 .../devicetree/bindings/pwm/pwm-tiehrpwm.yaml |  1 -
 .../bindings/pwm/renesas,pwm-rcar.yaml        | 26 ++++---
 .../bindings/pwm/renesas,tpu-pwm.yaml         |  1 -
 .../bindings/pwm/toshiba,pwm-visconti.yaml    |  4 +-
 16 files changed, 101 insertions(+), 85 deletions(-)

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

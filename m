Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DF75C76195
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Mar 2023 21:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAT0coCz4z1wTQcHTbclwMRTh5QIO+No4IJWR04aYK0=; b=a/4pkNvMMelD+W
	EU+hnfWOcQ25mtAq8CCVvxJKVBDObEuzCO6AGz7QS+EKwQNRRu6u6pJ+6vc+1HdGh2VfAOqBDlz7b
	jkMe2tlxbPDDO1tbAq/V/1RKWAyfOzcorBu7HWxr39T1SsXE7SFI0akz3uc+QcrIvrajoW5r74zKk
	omYercbWnOp0gkPyeodoNQxkRyrjmcJi9tWV7k/hvIc+ElKRdls523lwVa9QT3KniAF790n1Ccs9w
	eAu6neDujX/4vbiWEfw5xO9Y3yx1umpvQAmgV6fcgur8dfNdPRYBbJUDX5VhLyZtdtPvWgx6r7aqk
	bkK4dH+RQ+gG9px3KYZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pe0Mp-007SLK-1a;
	Sun, 19 Mar 2023 21:15:03 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pe0Mm-007SIj-2y
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Mar 2023 21:15:02 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id n125so10858696ybg.7
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Mar 2023 14:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679260500;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o0iorqXQgWfUsmZ323+Wyn0oeyKtqb16TQ+B351+3qA=;
        b=PqJlDX0gTYbEtn8Inp0Uq9s7u/HTYqGjD1dgyn2nK1HN81qzYpJ9YK87P3/GK9pyjS
         NIox5xD6dYqMCgOx32vaNV7CStlqriTHBcn+xVBoWVHv64f9OkeU7yqIs+ePEjrucDlf
         hLYQeSFr+uU2/M2tfVJ5lrNZIIQBGZMUOQR/x/Pb64/87ScadQHktjIXmYzf0soAd8Cm
         1/vXcIPIvmyXhvwjyg9zJXzO53/CrLg2sarThltEBai116bRrT//SIC4+loKJSCgmFoX
         qFt40qfje7rzwaijTzBX1bDxUpXmUPSUnzUEnrOEFINsNM2XFX8efE0qIlI4ANoUsKOX
         jQCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679260500;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o0iorqXQgWfUsmZ323+Wyn0oeyKtqb16TQ+B351+3qA=;
        b=2K4ByrSQfUhtTQiJ2WOGZmjodCKZAtBkmYH9/uyD4cX4f5bWCWZAlaDD1Tu4MH4MtW
         nsl/tP8d5BaB5lrn6L5vI5VOHpVqFkvLKedHISaXqnuerKeQlP72pjSB3HCdmJce7M60
         9WGZoZmTZyvakBLthI3LOj7Bn6Bjw9SKTo40GUTH8kfLDUMAIiAzdHWWbvk4ozQDNKVb
         gh62ntKHVh1WVqGH/rUH2dXMazWzz+4gFtj+7MBge/aWaTNE12q0MY6qWNoE0+twifSn
         48Fvha7pE3MgP6tQ/6MQ7W4ad26CFWOrRfog54+N35ZeSNSY0e8JFkPMQHzyywZ0fNT3
         wZYg==
X-Gm-Message-State: AO0yUKVEfjhfVKrDKrIRpSqKZXpgP9vFpFG3VRw40ib7KgEKS04FcY2m
	DorahQnmZDA32IdTyfs8ae27tz7GLRZNoz8I9CeIWA==
X-Google-Smtp-Source: AK7set88lgxJVA166ieuR2TTLZeS1J0rp7AfomiAt3xMAZzNkfr7DVMxQnogtWZ9zBjTSPGk/rTQReVq7hLkbmXRmbU=
X-Received: by 2002:a05:6902:1143:b0:aa9:bd2e:3746 with SMTP id
 p3-20020a056902114300b00aa9bd2e3746mr2997588ybu.4.1679260499808; Sun, 19 Mar
 2023 14:14:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230317233623.3968172-1-robh@kernel.org>
In-Reply-To: <20230317233623.3968172-1-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 19 Mar 2023 22:14:48 +0100
Message-ID: <CACRpkdYFJ-q9OT2b7U-CP08XGfdoD-qN3k3C2KBHhnuBdfSi7A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Drop unneeded quotes
To: Rob Herring <robh@kernel.org>
Cc: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Manivannan Sadhasivam <mani@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>, 
	Damien Le Moal <damien.lemoal@wdc.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Richard Fitzgerald <rf@opensource.cirrus.com>, Dong Aisheng <aisheng.dong@nxp.com>, 
	Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, 
	NXP Linux Team <linux-imx@nxp.com>, Sean Wang <sean.wang@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Tomasz Figa <tomasz.figa@gmail.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Emil Renner Berthing <kernel@esmil.dk>, 
	Jianlong Huang <jianlong.huang@starfivetech.com>, Dvorkin Dmitry <dvorkin@tibbo.com>, 
	Wells Lu <wellslutw@gmail.com>, Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>, 
	Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org, 
	linux-actions@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, asahi@lists.linux.dev, 
	linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org, 
	linux-riscv@lists.infradead.org, patches@opensource.cirrus.com, 
	alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_141501_024803_BF41B81F 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU2F0LCBNYXIgMTgsIDIwMjMgYXQgMTI6MzbigK9BTSBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPiB3cm90ZToKCj4gQ2xlYW51cCBiaW5kaW5ncyBkcm9wcGluZyB1bm5lZWRlZCBxdW90
ZXMuIE9uY2UgYWxsIHRoZXNlIGFyZSBmaXhlZCwKPiBjaGVja2luZyBmb3IgdGhpcyBjYW4gYmUg
ZW5hYmxlZCBpbiB5YW1sbGludC4KPgo+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIDxyb2Jo
QGtlcm5lbC5vcmc+CgpMZXNzIGJhZCBleGFtcGxlcyA9IGdvb2QuCgpSZXZpZXdlZC1ieTogTGlu
dXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgoKWW91cnMsCkxpbnVzIFdhbGxl
aWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC94BCCA482
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Jul 2022 03:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5udYoDM+EOWTOhQeaTzIx3XACOD+LMBxJApiQvqcIE=; b=pADj4Y+OGrXprd
	KrNJiTx28YDe61azMk72tqFdrm97S+o3msm/27+yKJifjocFlAQQK53E6CDnl4A+2zNAtSf2xbr4q
	6BjNlKAJrhfjwhQdBZFSeqp7MW6TUEoNA+4kKjynxLI0bat7rv70VMfFC/4rnbxJO2v73gi7s/vE3
	0qwbdZ03gX6Cq5tj3bZfDELs4DN61QIIQRkIUIsIiG9Alphnbjgevlk0Vxy7ly0ac2eEVR0peov4E
	ob5vL+3KMjrNFOQIxECkFKIGAB7gec18EK3n9+2/7LRg69fWMsoaZi+WUvSXOXbYTdnTJtHLElvJz
	c53Cfwm4RdE2pEcZvYUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7qjq-00DXZ1-Fk; Sun, 03 Jul 2022 03:57:38 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7qjm-00DXW1-Qw
	for linux-rockchip@lists.infradead.org; Sun, 03 Jul 2022 03:57:36 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 7-20020a9d0107000000b00616935dd045so5093466otu.6
        for <linux-rockchip@lists.infradead.org>; Sat, 02 Jul 2022 20:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dQGA0bu3AQWCuC1GbwRKa+75S+e6lFO1n+xYI6b2Lfw=;
        b=tZaTCT5agJ/W5MTY4ChPtc1XDLJKp4CctBpnrCUIhKNgpN1H67etzBdwWcVgqTh3p5
         Rpws6+KCerTtj8KDgj208++uOAUUNYbZwIshCcigdKA1eDiRz/QItFe1rMw5+GiscOar
         FrzEPYhzQinS0Z91zyAbjw85CcRTp2ENtnixsfT6WRN+TNRS0m0FM6MNH1rMOOCyJxsC
         5P51RWagk0utaomYGvqdFoITuFnEhDzq2tWG4Glt2KJgrHX/T3lrPdg/lUIzBClJzInl
         r208u28GA8/rpcp88qsLSJJlP4Ui0QQT6y6QxDAa5Nnm0OjV33BJKsy7H06YpCqUhiI8
         y4EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dQGA0bu3AQWCuC1GbwRKa+75S+e6lFO1n+xYI6b2Lfw=;
        b=DqpJTZaAekkj/a6I1w6zE2v1INMp2DDjIw1mWtOaiW/oMmUBDT2DRHkCNRQnnrGtcM
         lGmL9ZfLvJrMOwzqZm39c//twFnk6NAOzyt8LcRFLxg9PwzURJDf/txD5DBExTPMchJb
         1StS6hCgMmNf9c1ASC8Vz+2pkTaEotrsUdtUfgpWgnjfR3s+odGMlvLb+fiovNyYSlln
         TvnmQmZmUpHcC1mnxf9u8ct0dcNJBV2iiqBX75MIBhEXeWomRmpFs45tQ9gZ/LJFYe2K
         0ijJDbjDL1+cHpJ7EFEFMNKuaxAzSgvE3STNq8xG5YGW3mzzlfGZP8RXNTaUjBXL0RTP
         AH7g==
X-Gm-Message-State: AJIora/eJ1Zbs64fI9ZtogSkbwAKzyZDQLrHzlTXx9OQqhDkWl+moXd4
	2k8KtZXKtfkUuoJmOCBUydPQeg==
X-Google-Smtp-Source: AGRyM1unb+4uUOF604hLcm6sxUx99v9VtXWGjmIJ3dnzzgB49ZjQEqsHZ3kaRUHP0jg6yWxEYqFcqQ==
X-Received: by 2002:a05:6830:1b79:b0:616:af56:2fe7 with SMTP id d25-20020a0568301b7900b00616af562fe7mr9513926ote.262.1656820653608;
        Sat, 02 Jul 2022 20:57:33 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:33 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org,
	arm@kernel.org,
	Arnd Bergmann <arnd@arndb.de>
Cc: Li Yang <leoyang.li@nxp.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Tony Lindgren <tony@atomide.com>,
	Joel Stanley <joel@jms.id.au>,
	Thierry Reding <thierry.reding@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Tero Kristo <kristo@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Russell King <linux@armlinux.org.uk>,
	=?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	linux-tegra@vger.kernel.org,
	Khuong Dinh <khuong@os.amperecomputing.com>,
	linux-gpio@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>,
	Michal Simek <michal.simek@xilinx.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Andrew Jeffery <andrew@aj.id.au>,
	Heiko Stuebner <heiko@sntech.de>,
	Nishanth Menon <nm@ti.com>,
	Peter Rosin <peda@axentia.se>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Wei Xu <xuwei5@hisilicon.com>,
	openbmc@lists.ozlabs.org,
	Linus Walleij <linus.walleij@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-omap@vger.kernel.org,
	linux-input@vger.kernel.org,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Andy Gross <agross@kernel.org>,
	linux-mediatek@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: (subset) [PATCH v3 00/40] dt-bindings: input: gpio-keys: rework matching children
Date: Sat,  2 Jul 2022 22:56:27 -0500
Message-Id: <165682055968.445910.13332143476289618470.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220702_205735_009653_D94875DF 
X-CRM114-Status: UNSURE (   9.92  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 15 Jun 2022 17:52:24 -0700, Krzysztof Kozlowski wrote:
> Merging
> =======
> 1. dt-bindings: rebased on top of Rob's:
>    https://lore.kernel.org/all/20220608211207.2058487-1-robh@kernel.org/
> 
> 2. DTS patches are independent. They can be picked up directly by sub-arch
>    maintainers, by Arnd or Olof, or eventually by me (if you wish).
> 
> [...]

Applied, thanks!

[25/40] ARM: dts: qcom: align gpio-key node names with dtschema
        commit: 9c17baaa97c89379cbd89e36115b7fb6aba43518

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85BC9C30659
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 10:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pBHyK0PocmpRhMF3wFWqz5tYsHSr7kLVE/DhX8ydnQ=; b=OgmZ9nphDiggxe
	X90zfTixvjuUhz1kNQLfR5mq3XN7hlY7P8ah6WoFIeNIN5fwcS78oe293Yn6r28PHX/O0o7dSflq2
	535c/djReIL0a+eVth22c3TU9Cik9Wqr/HH5GHvgXcKfeLHRhyV3VuxO+Pi/N45JtaPGBFeavm3wl
	yfPFt2KPUmN6uozOe5L0/lqgj7Gu9zYciKIM0460EvBw81G2D0jTRYSFyE/QH6lXakb/rcQYyLqVR
	LKY92DC16+lAcfxuCquz7SA/Mwt91OJd4UnU1DSd48VcGHaLJGng3SF3UXtcvPB3cuwZ0J12Xb2eM
	N71aPi5Ggi6U07gA5Djw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMPoF-00000006JDC-08Pp;
	Wed, 26 Jun 2024 10:23:27 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMPo6-00000006J2U-3PRt
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Jun 2024 10:23:24 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2ec5fad1984so46165631fa.0
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Jun 2024 03:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719397340; x=1720002140; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YQQUVeIK7k0d9MgtOJcxNr56RS5eoBT5sfu3gWH8b0g=;
        b=QXB+i43RhVmOqBV64qRdr2baLCL/EmcmYg5MzJpr4FfzpypvdVA65XrwsVrwVaFuTG
         ijZQvsmS/4i9mu/ln8O1wcHVXUMa0FB/V5dq9MIP03PLUM7mdGu4u5bcVl2H9vSDsutt
         6c7j2PGUaOkZG57TixXd81R75Pqay4wjKBgA5SOCKvgq12qin+3eR4IW6OE/M0kxFwkz
         ur9hhwLQ/xpZq1tNl/hvq1X5KpjH6j/sTCE0e70pWzTmnQRlQsdNDZGvyWYARbH6PPO4
         g3iSIUNHP8NbrJCD6g0kkI2WNjYaRS57HRhYSvllPB25uXN6WS/TQxXpclNOFogWJijo
         Ka3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719397340; x=1720002140;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YQQUVeIK7k0d9MgtOJcxNr56RS5eoBT5sfu3gWH8b0g=;
        b=CHDZtQkzud27eSIBBSCK/l1wTWjEw8u3gSAxmewqVHXuhCHvfIWrQ7FQVe2SsDdB/j
         X9U3hEjOj1DsDygjka1Mv9uYVELdHUh3He05uI+QsXuQZTCIBbbClX4Eqjjo8UEXqzg/
         Y21kbwJAFup8gNKCteUAX6fFz1N/N1or9Zy8ygWmXbYsS7Lz0F8QpUMu+H+zX5L+CMoS
         NE5+6CR/+0dWaJgA7XatPVLjj3iFiVE2dhD5n58RAVYKu2woD00p+Xs2YxUsOjux5hrI
         VchJXu6y68YYd/KykcD9Lm7UgcwkdkwhGTOlN7E0MrhrHjgWHLH+9+4aJbqA55Ju+bkL
         czYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUC/yqSW5ibOJwt1jW5Wx20ynLtsJWoWfoB42ejHHyEz0l3kyF+9RG3qLOwqZMSTwVJkjJ95qfNCoXpuFJIxriXrmTH08SMbX159mZS5Hxul0ae
X-Gm-Message-State: AOJu0Yz9OWk8aeo5NW7ao3CgL71vPgRcSpRZIRxGomQLa2VVnlmI6Xr2
	yEEt1v20reAeFFsYzJs5suQhj1Opi+7pINF/aDDAUZHGMka8YJMmOwcsoTKWGic=
X-Google-Smtp-Source: AGHT+IF66geCJ+IDyk7DWlk8gVgabzMqbrOvnz5dxF4G+PQuP7P1Yu2mU/puCcrZCVWhA+b+phfFGg==
X-Received: by 2002:a19:6b03:0:b0:52c:dba6:b4c8 with SMTP id 2adb3069b0e04-52ce183265emr8209671e87.13.1719397340267;
        Wed, 26 Jun 2024 03:22:20 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c8245e87sm20498075e9.9.2024.06.26.03.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 03:22:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Dvorkin Dmitry <dvorkin@tibbo.com>, 
 Wells Lu <wellslutw@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Emil Renner Berthing <kernel@esmil.dk>, 
 Jianlong Huang <jianlong.huang@starfivetech.com>, 
 Hal Feng <hal.feng@starfivetech.com>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Viresh Kumar <vireshk@kernel.org>, 
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Patrice Chotard <patrice.chotard@foss.st.com>, 
 Heiko Stuebner <heiko@sntech.de>, Damien Le Moal <dlemoal@kernel.org>, 
 Ludovic Desroches <ludovic.desroches@microchip.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>, 
 Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
 Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, 
 Sean Wang <sean.wang@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, Joel Stanley <joel@jms.id.au>, 
 Dan Carpenter <dan.carpenter@linaro.org>, Tony Lindgren <tony@atomide.com>, 
 Stephen Warren <swarren@wwwdotorg.org>, 
 "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-riscv@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 imx@lists.linux.dev, linux-aspeed@lists.ozlabs.org, 
 openbmc@lists.ozlabs.org, Peng Fan <peng.fan@nxp.com>
In-Reply-To: <20240504-pinctrl-cleanup-v2-20-26c5f2dc1181@nxp.com>
References: <20240504-pinctrl-cleanup-v2-0-26c5f2dc1181@nxp.com>
 <20240504-pinctrl-cleanup-v2-20-26c5f2dc1181@nxp.com>
Subject: Re: (subset) [PATCH v2 20/20] pinctrl: samsung: Use scope based
 of_node_put() cleanups
Message-Id: <171939733731.25849.13373950874840419376.b4-ty@linaro.org>
Date: Wed, 26 Jun 2024 12:22:17 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_032320_651959_50A39E3E 
X-CRM114-Status: UNSURE (   6.48  )
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


On Sat, 04 May 2024 21:20:18 +0800, Peng Fan (OSS) wrote:
> Use scope based of_node_put() cleanup to simplify code.
> 
> 

Applied, thanks!

[20/20] pinctrl: samsung: Use scope based of_node_put() cleanups
        https://git.kernel.org/pinctrl/samsung/c/707807f4c1128e39442519e849e4ce0b7c29b110

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0385C7618A
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Mar 2023 10:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDWEgyIEcRdQFqw69Z8N+MehKoo+K2BablOqKuP55nc=; b=0T4qlSLpxLrmsK
	SnBXTHsVMpi1/Yrg1+U1Cdoy3MD8d0eNgbumIipT6ZQ7u2sOLnr0Y9pJI3EMhoDNDpkroV4ZOU1R6
	9G/W3mZeIXM5VuNKh0DL7R4le6HmRzgdCHSwdLvTmv3QM/S5jcjtZ4Z9ETmvQuy17Ia3YATJdzwaY
	+SVZi0kwS2N1Zm/I4f1qlq98CNEMxp742hBIXiTKn1arpBvjaiRON/JpxxD0hC3313KraQQwThdCQ
	POm9WNV0067Wg3tytHkxqGCY5kElkf3K7ND2Qlhs8Jc2HI+mt/pJ0xkDEHlqjmDRacfFRDq7bQ7K/
	qbwNtToETpI7EHduVV6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdqi1-006Qjo-0a;
	Sun, 19 Mar 2023 10:56:17 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdqhv-006QhS-2d
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Mar 2023 10:56:14 +0000
Received: by mail-ed1-x533.google.com with SMTP id x3so36351863edb.10
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Mar 2023 03:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679223369;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zjQK98wMTvC2q3E7fdiQTGy4CfE9nib0P1aeqr32BDM=;
        b=LoyXTmuTmKGgTLGBo0qYnX6Jp8bEDf17eVvP7XGO2qhfRemxtwJtrRH9Ep1JHhGnQk
         DM7G/ianKOJTy+onrcx5K+rasN1+P/5phdjTikcBfSCvls5VoUEtU19R0HbCgCF7aobg
         40WRU2UHhFcDZODehVDDkwN/snWgAt/4QDmupCFnR47uQEZePsVew0+rLxSDOdDvvAwp
         3JMq8P2tanxmPYuvLeuCmLNfn9yRr7Dfe9NF+r536JdXbCdxebQX1OVjBpyJ7mUDvRMU
         iVtQ2+uN79keOw++o+t+UG4w2ddZnZ5CBm+iLIx5uFLx+Pf3+PRu53Jz68pAER7B1gdw
         MxHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679223369;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zjQK98wMTvC2q3E7fdiQTGy4CfE9nib0P1aeqr32BDM=;
        b=iMC3C8amjMwG4+NlwLu8Fgy2OG8HsA8Kb4uO9Er6OJDM9n2r54kzIJqxfCwell1dY1
         tydgd9A3QxwbyiBmVK4c5oXFIaLqxD2B7yRenfTNuoSJiWsQhx9FKYOnwW+5cifAWfsD
         JYBMPAUp2HjT4GvWLFi13yIa7jvuS5p/YWIHbk76n4hpVHNSXsE2vxZAdvhSfP3c/5W5
         wjGpX8AVliYkuWXpKLHkeGr1ED+ejTTX/pGaK9Ahbg5xBjQ+Loy8vs5LdtBuFuUEkdLt
         pLBa/OdB/gZxMvYXMsJcxZFYVjCvlNn+j1IsqG0oBbEA3AJq7kxu2FK0UIsuuahTZUAx
         7gqA==
X-Gm-Message-State: AO0yUKXKRUg6D9fMNexjzvb0EL1HHhItS6qUm4FP/iiPkdRzNSnFd3h/
	U14Tuq/h8TLVRoIk7b5GIJ3H2Q==
X-Google-Smtp-Source: AK7set8aBKLZuOSLuGkgBgWSIN+Nyo0cQB4QbrQUYK+fT1WnG6tZns0BtbZAKs7jswp9C0GRLAkphg==
X-Received: by 2002:a17:906:7fc6:b0:923:812c:a5d3 with SMTP id r6-20020a1709067fc600b00923812ca5d3mr5250858ejs.25.1679223369254;
        Sun, 19 Mar 2023 03:56:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id 21-20020a170906319500b008d68d018153sm3115271ejy.23.2023.03.19.03.56.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 03:56:08 -0700 (PDT)
Message-ID: <23036bfc-cceb-2ac5-85fb-5e2d0bc0cbb5@linaro.org>
Date: Sun, 19 Mar 2023 11:56:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: pinctrl: Drop unneeded quotes
To: Rob Herring <robh@kernel.org>, =?UTF-8?Q?Andreas_F=c3=a4rber?=
 <afaerber@suse.de>, Manivannan Sadhasivam <mani@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Hector Martin <marcan@marcan.st>,
 Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>,
 Damien Le Moal <damien.lemoal@wdc.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Sean Wang <sean.wang@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Heiko Stuebner <heiko@sntech.de>, Tomasz Figa <tomasz.figa@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Emil Renner Berthing <kernel@esmil.dk>,
 Jianlong Huang <jianlong.huang@starfivetech.com>,
 Dvorkin Dmitry <dvorkin@tibbo.com>, Wells Lu <wellslutw@gmail.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Michal Simek <michal.simek@xilinx.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-actions@lists.infradead.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev,
 asahi@lists.linux.dev, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20230317233623.3968172-1-robh@kernel.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230317233623.3968172-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_035611_919198_56AC4CB4 
X-CRM114-Status: UNSURE (   9.47  )
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

On 18/03/2023 00:36, Rob Herring wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

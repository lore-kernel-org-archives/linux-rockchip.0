Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51ADFC05027
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+i7yhBEVdsLZnA7YaEoDbLmRx3GTnevSkr2NeZRWR+I=; b=XLucWOa0gJEArU
	dxAPc/jIsgtGlb/8JRTWyzUHfkNtyUbWxBpiQWVBnS3ag1K0dLUULRYdGU4id3Phi9ESMjRgmN9ML
	mBjrKcncskedK+xFzL5C25DS1U5T7g/5EtowLzv23otXTpVBjEhcmys3HpfyntZE+slblROltSpIg
	wLzGPmGw/euw/KRrYGJcoe1WgeAQ53vTQcB9bVT4kFP4dnjIf4o3jatGS4Mor+OwmqKKubxeic2mv
	jt1wyeu/SgiSDGDnMLj6LvQGawBOyc2OJLsDP616smitoNuaH4GfWJg73R5zm28NX8Xyg5kMShXKT
	Yckh6gi6g1ez7vjc91Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK4vn-001esK-9x; Mon, 23 Jan 2023 22:04:47 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK4vk-001er2-M0; Mon, 23 Jan 2023 22:04:45 +0000
Received: by mail-oi1-f182.google.com with SMTP id r9so11645383oig.12;
        Mon, 23 Jan 2023 14:04:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d2FPhlsZpXvRIxsuYUUigEHlfXrVhve1sVEzIAaA+Cw=;
        b=6i0og5Dkke2igVa5M9CMfXOao9fJXJL0KhP5iW4bck7BrrBpB4J6dRe8mHvbeALEeY
         hJg8b2YKZ+Da2rfOAEmUWD4DbcOSemlEL7i+sGlrs0vUVolPqE6tw/DROx3c1pDWA9z1
         yBNuXdgh6OC5SAdzh6ugCiEEg7loU3k96ACg7B7w8b4h+IyGceC91I9SrsMey4d6kLae
         hQpITapC4p6Vr9ElPWz/BVzEFOa+29FVF36FgjJ3BABeejLpQvmb9vM23QaiTW3/mklN
         U00CKu4wYxKKx6OF3Na4/nexvc4dEczqSTO5r6/LtTI9TSS51z4I3CQRori5+DuH/Vd2
         SHlQ==
X-Gm-Message-State: AFqh2ko67qayhTPVZgFbcinzeS7TMDVecC78JnCWqFp6ctbZlT3wQN/5
	Os56PbJTTbkr5ESYfJj+gw==
X-Google-Smtp-Source: AMrXdXuGzJhztAkRQDsZ89yb/Lz0gtcYbKO+RHg3d611kAIBMg0f22sl2cvcT8k/mjqlrQMTyAnItw==
X-Received: by 2002:a05:6808:3a5:b0:35e:214f:11c1 with SMTP id n5-20020a05680803a500b0035e214f11c1mr11706700oie.45.1674511483912;
        Mon, 23 Jan 2023 14:04:43 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r184-20020acac1c1000000b0035c21f1a570sm273111oif.6.2023.01.23.14.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 14:04:43 -0800 (PST)
Received: (nullmailer pid 2720043 invoked by uid 1000);
	Mon, 23 Jan 2023 22:04:42 -0000
Date: Mon, 23 Jan 2023 16:04:42 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kevin Hilman <khilman@baylibre.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, linux-rockchip@lists.infradead.org, 
	linux-tegra@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
	=?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Tony Huang <tonyhuang.sunplus@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Shawn Guo <shawnguo@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Adrian Hunter <adrian.hunter@intel.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
	linux-samsung-soc@vger.kernel.org, Li-hao Kuo <lhjeff911@gmail.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, ", Steen Hegelund" <Steen.Hegelund@microchip.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Lars Povlsen <lars.povlsen@microchip.com>, 
	Daniel Machon <daniel.machon@microchip.com>, Jaehoon Chung <jh80.chung@samsung.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, devicetree@vger.kernel.org, 
	Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	linux-actions@lists.infradead.org, Samuel Holland <samuel@sholland.org>, 
	linux-amlogic@lists.infradead.org, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Markus Pargmann <mpa@pengutronix.de>, 
	linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH 2/2] dt-bindings: mmc: correct pwrseq node names
Message-ID: <167451148159.2720004.9395844039645158729.robh@kernel.org>
References: <20230120085722.171965-1-krzysztof.kozlowski@linaro.org>
 <20230120085722.171965-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230120085722.171965-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_140444_739521_1A01ABD1 
X-CRM114-Status: GOOD (  11.43  )
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


On Fri, 20 Jan 2023 09:57:22 +0100, Krzysztof Kozlowski wrote:
> Node names should be generic and should not contain underscores.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/mmc/mmc-pwrseq-emmc.yaml   | 2 +-
>  Documentation/devicetree/bindings/mmc/mmc-pwrseq-sd8787.yaml | 2 +-
>  Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.yaml | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

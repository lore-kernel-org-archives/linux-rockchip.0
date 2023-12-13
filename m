Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7706FC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 22:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtiQRuV9/yR6atyK0PADX305GiMj7/zWSnRFCXEiR3A=; b=dleE9u8jS3CVxB
	+oieQs35ebfG+tWOuC63UFjKVIgAund7fbLvv39qyGGP/aXEJ5rcYQGONE7XaXF9zLso1hKtdYzaV
	ZV5G4FQQT8hyj1D0nXk4SC4pg48XChY3Ci1pRTEJgO6pSqwo3GBpUE2+2vS7Tw0Rky+dngrD6ZLDf
	GdZUSWnYbbtgScNWqMSg7A+wcRGJapu8i4Kob2eu6GVFBq2CN2zn78T+rs6Yv3RB7NGzHXcBdjzUD
	/E2GghZRNssPz1E9augzxI66oFN34wJbQPGkO+WJcvuNfGXsiEpfSKy5A8M87ENT1BFTzNdSWzukt
	ABLeZWd8OzUJ1qtx+Q9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDXS0-00G6MG-1o;
	Wed, 13 Dec 2023 22:11:32 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDXRx-00G6LN-01;
	Wed, 13 Dec 2023 22:11:30 +0000
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3b9f111c114so3834019b6e.1;
        Wed, 13 Dec 2023 14:11:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702505487; x=1703110287;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AgTgho1a4LA/XjrrePxUmui9LuYj0rwstzK1KGu7248=;
        b=isgq4EuM35NFY8Qyy8HcS4cgXP7l7VsIC0CxY6QUepbCHEGPcZfalMXKY4Cxf857s3
         xsvvd+EOuDvqOaBT19PouWsg/qQJGDe9iJJ5PvwhvErX67J4UZi4fySnptOFjQBtF7KA
         2jLCbRvpPEooYH+K8yMZOdd6WujCyCS83sQx/8T9yTDcsx6kOUt+At86Wo8rRPb2E7d3
         elusAN/gPefk+TImoJ+bbf38GZizTXKlBLoMIls6kWrCqK/AGIRltGDBkRDGlpllXnBC
         wFQ9f1KS3vfABF+/IggURzOwyTQ3ZSW8FNi3+L4cUiNr2c6cNNk4QaHTxwCMlTc81TzZ
         Z3EQ==
X-Gm-Message-State: AOJu0Yy8/6mCwZ6y/4IvzA1uA3QY4CwBELnN9GSpQtqN+4DIZkJi7BCP
	fcnlgoi6+pOTZp/yMb3LMA==
X-Google-Smtp-Source: AGHT+IHX5L5W/V5kcRHCZGCX9tUxlzQHF1lIwCR9ERJ7ag6EqOQsYnbBD4efejagEgtQrlmcp0mZLw==
X-Received: by 2002:a05:6808:6493:b0:3ba:667:9e4f with SMTP id fh19-20020a056808649300b003ba06679e4fmr7673479oib.113.1702505486877;
        Wed, 13 Dec 2023 14:11:26 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bh20-20020a056808181400b003b83c516e62sm3102354oib.51.2023.12.13.14.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 14:11:26 -0800 (PST)
Received: (nullmailer pid 2156812 invoked by uid 1000);
	Wed, 13 Dec 2023 22:11:24 -0000
Date: Wed, 13 Dec 2023 16:11:24 -0600
From: Rob Herring <robh@kernel.org>
To: Mark Hasemeyer <markhas@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Raul Rangel <rrangel@chromium.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Andre Przywara <andre.przywara@arm.com>, 
	Andy Gross <agross@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Baruch Siach <baruch@tkos.co.il>, 
	Bjorn Andersson <andersson@kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jesper Nilsson <jesper.nilsson@axis.com>, Jisheng Zhang <jszhang@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Michal Simek <michal.simek@amd.com>, 
	Paul Barker <paul.barker@sancloud.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Thierry Reding <thierry.reding@gmail.com>, cros-qcom-dts-watchers@chromium.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH v1 2/6] arm: arm64: dts: Enable cros-ec-spi as wake source
Message-ID: <20231213221124.GB2115075-robh@kernel.org>
References: <20231213110009.v1.1.Ifd0903f1c351e84376d71dbdadbd43931197f5ea@changeid>
 <20231213110009.v1.2.I274b2d2255eb539cc9d251c9d65a385cc4014c79@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231213110009.v1.2.I274b2d2255eb539cc9d251c9d65a385cc4014c79@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_141129_064121_4AEC44F1 
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

On Wed, Dec 13, 2023 at 11:00:20AM -0700, Mark Hasemeyer wrote:
> The cros_ec driver currently assumes that cros-ec-spi compatible device
> nodes are a wakeup-source even though the wakeup-source property is not
> defined.

If a device knows it is wakeup capable, why do you need a property too?
I haven't looked closely enough, but it smells like after patch 6, these 
properties would be required for wakeup? That would be an ABI break.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

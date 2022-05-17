Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0D50C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 00:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mm7FMGOjR3dsjO0p6gqoFiMInnq0AQFPPZf3T8wmUAU=; b=CuwY1OBqvI8zxz
	eS++m7Gj4rkr9dZUdRKsiOj7ah0R7VIt9zR4B7JBxvsAFTox0+fYTSPfr/iCrAq6hjFimlcoA2pxc
	sDM+OqfQyFdlXFR7Xu8gElSKc4tjyOnBk0O8vTz4aFJcMGp7wbPrZ2SPm76KrPDJqpTKvId9HE+lP
	L77+GlEUwCEMHjWFBQQ0ZvIF4/NDRv3AAJAfUypn++wokQ6UNvLrjeBGVRcIadbzx80KHIEUzo0Z9
	B9QgnIs0aBmGGULLJtmUa8rbK8fYG0bZRd44VvWlHKab+gM+y2/6MpuMO3Uprs0qJuCxyJeLnqPnL
	k8d1s9BpAL+HeFj3Y1QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqkhV-00Aual-Ld; Tue, 17 May 2022 00:04:33 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqkhT-00AuYB-E6; Tue, 17 May 2022 00:04:32 +0000
Received: by mail-oi1-f174.google.com with SMTP id n24so20556136oie.12;
 Mon, 16 May 2022 17:04:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=v4STRcHnMatgEQR197RgHKy8LyvFwW+m6RPmmztPcD0=;
 b=2pikMhrfTuHkQAyJZnvrEZ7obUYsl85cty314ZFnsNJ/RvjQ8gqSiPmVO9vFDkgmuF
 K2mLTR7SCNOaWstKrLy2I2lXT1u012M6ny/I422pJF6zcyQYnkLvF9KaaUGMdjuBi72t
 ArxhNqaq/oZ3hzLqFSFiG6+loo0gsv6YPIiU/Kc5fmvCcQwYTVVlwkk2qd5drYxadx+r
 Jhk04NyJImRrVJAP2r5jITXTFmFlk0nP8+IVcxse4/lfS3Wr5B3cxso3NMsxcZOGnB9K
 idxb+USIb84AiF+d5+UdbLxrk88aRTwlUGOYNmNlgvSLnBIJ4nYwVWzuT6dd+MAy1AOI
 HfDw==
X-Gm-Message-State: AOAM530APtGo7tQIedBk78Q8jtMROMvlPlmdDgccxfhDG5VHegk/AGYl
 ykNDjrEKYIw+H6oWtLfj6A==
X-Google-Smtp-Source: ABdhPJwfrPdhplgtuJJnkIgFL9WjqMLk32l2nfeQM88QcWf/6HJcLmMomdYGa186dZi2YKYNru9ibA==
X-Received: by 2002:aca:1c18:0:b0:325:a6db:29fb with SMTP id
 c24-20020aca1c18000000b00325a6db29fbmr13787692oic.212.1652745868880; 
 Mon, 16 May 2022 17:04:28 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 d8-20020a056870e24800b000eb0e40b4b8sm6384188oac.48.2022.05.16.17.04.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 17:04:28 -0700 (PDT)
Received: (nullmailer pid 3607735 invoked by uid 1000);
 Tue, 17 May 2022 00:04:27 -0000
Date: Mon, 16 May 2022 19:04:27 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 kernel@lists.collabora.co.uk, Stephen Boyd <sboyd@kernel.org>,
 linux-mmc@vger.kernel.org, linux-clk@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 kernel@collabora.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCHv2 16/21] dt-bindings: soc: rockchip: add initial rk3588
 syscon compatibles
Message-ID: <20220517000427.GA3607701-robh@kernel.org>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
 <20220504213251.264819-17-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220504213251.264819-17-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_170431_535258_0C04CB15 
X-CRM114-Status: UNSURE (   9.64  )
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

On Wed, 04 May 2022 23:32:46 +0200, Sebastian Reichel wrote:
> Add IOC and PHP GRF syscon compatibles for RK3588.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

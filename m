Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5810C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 00:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6msFH8RKCYGFocVGHzE8EfILYOGBJjMke8vmBuPf254=; b=LA4o2B1X7oKkbW
	FwU7XjNBrM/mcbPnVsd3pFPT9zOAjnzwCTRacQB0oALIEpkefd+jah/LZoXQDbRebFmGl6jqNdjAw
	gFRvCQFZbh9T48wqHmexHdWwnzu68FdjUsPRLRiCdocWXyMa34h6cw4NzhEPaW+6wuKrjHE3GgxPx
	IxkjjYnLeaM9X95OuFJKbpLI+EUiNTiNcR/vrZLzp4A0shEiXS6iNBP/fZibg0jerioZDL3xEdn7U
	J4XcTNIx12RTrWcX4v88L7dL3/lCSVptg4CQDuHXzsqlQnjG/AIIf1TzOVX6nCQNPBiaT9AlBZoh+
	BjMpmQTySzsxduOkk4jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqkiG-00Auvn-7i; Tue, 17 May 2022 00:05:20 +0000
Received: from mail-oa1-f53.google.com ([209.85.160.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqki6-00AuqA-Cl; Tue, 17 May 2022 00:05:11 +0000
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-f189b07f57so8818826fac.1; 
 Mon, 16 May 2022 17:05:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jWYtWpLhhjBqtuLhNRQ5oLKTvb74DusGXdvkLvUpC1U=;
 b=uI171rMRkq6JXKBwc9UIxh4poDM/fhHdU130Ihi7dcRZ/5YbKEh1F/4nn0daBwPHui
 wWJSQpXhzNDo8BNTFtnYzNTM+l1Br3+msopik5rMW7aa/J0W35tOW5DilPw7KR5+4gor
 RkvIniCLIUEOUU4a38dd6chgh2mGBqJgH7xThzYBEDfnMgGH9RNqzV6ZCiY5RkqDzB3E
 B2XFL64T/+36HTZHFlF5+CrM1gzNxhpa1A9vDi05BpFjvchcuzzF1PP7BHKI5aCLbl+I
 Ja8h+wvIR+6Q3J7uXaeJldIUdoCtz9XZqQqYMnxUalhlQ5yRmCiy7sTKAJPsBZHC74RW
 ayPw==
X-Gm-Message-State: AOAM533nK4YXi8DXNwu2cDJqdjHOtql1aQdoBleCp3OUKdpq6cFfpbRN
 MrWHPq1RAygz0iqxFp87Ug==
X-Google-Smtp-Source: ABdhPJyhQpNe3I/6mrl2AJB/BeKrGiDth8qUcXzNQTW3WZuAhG5ZIixm4jAYljeHufC/IzN0icKCog==
X-Received: by 2002:a05:6870:524a:b0:f1:28ae:f9cc with SMTP id
 o10-20020a056870524a00b000f128aef9ccmr11200403oai.269.1652745907961; 
 Mon, 16 May 2022 17:05:07 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 h13-20020a4ab44d000000b0035eb4e5a6d1sm4671362ooo.39.2022.05.16.17.05.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 17:05:07 -0700 (PDT)
Received: (nullmailer pid 3609021 invoked by uid 1000);
 Tue, 17 May 2022 00:05:06 -0000
Date: Mon, 16 May 2022 19:05:06 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-gpio@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: Re: [PATCHv2 18/21] dt-bindings: pinctrl: rockchip: increase max
 amount of device functions
Message-ID: <20220517000506.GA3608979-robh@kernel.org>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
 <20220504213251.264819-19-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220504213251.264819-19-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_170510_473926_69B18E22 
X-CRM114-Status: GOOD (  12.55  )
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

On Wed, 04 May 2022 23:32:48 +0200, Sebastian Reichel wrote:
> RK3588 can have 10 different device functions, so increase the maximum
> amount appropriately. Considering rockchip uses auto-generated pinmux
> files, adding a quite complex if construct to increase the limit just
> for rk3588 does not seem to be worth the effort.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

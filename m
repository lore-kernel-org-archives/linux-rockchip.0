Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09B41C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Apr 2022 15:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5y/mRgeHH0Rfv2xc7g5hx5aPwkE78Ye6ILLUAeKh45U=; b=jmmuxDb+fivbg2
	PChOCgD2JGOGkUonb7q8eSrmXGrGR+w2b0hKY2PZwmIplsK/VWCWmOb+babL5MU1UIB1vxfApAJAl
	FI/W3b6dgegIGIXDIJ1vZSTXxwXhc4XOi5blNJoqA3psDbMsapFbyVeozCGpeqwD7elXI77W+JcZM
	XxEWxpoDu5Or8A5ZqViwb1TjLHfBWdC0GlZQdl+lrVTVGK6+ZO8MOR2V1XPnfV6vg15JQ27pP8xhy
	piKLNXVmTvvaVEC5KEaZoJWuTrM2eBNitlSftY77aC2+l3mmgM18jVvZzLlFPDPdtbCQcnoweYUO1
	i9Ix9JT6EVJMfIb6l8vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngTkR-00HZ5x-6y; Mon, 18 Apr 2022 15:57:07 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngTkO-00HZ4I-H1
 for linux-rockchip@lists.infradead.org; Mon, 18 Apr 2022 15:57:05 +0000
Received: by mail-ed1-x52c.google.com with SMTP id c64so17896335edf.11
 for <linux-rockchip@lists.infradead.org>; Mon, 18 Apr 2022 08:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=FjnArbiHeKmHxIQGkXFyLcDATsoCoWvdzs6hnVzyW6g=;
 b=EaxvZM4sPR/maCfoqX/GP+glDd5U/u7Yf8Vqg32ThP1rPQmS6FMeleFG4TqkU2F3p2
 otvkn17tJ6H7Wtl9xR2NdEGg3yPRgmHAY1jS2PIOMMAucDh8ZDBsyDYSZhJ6t5xHEsNY
 6B1Asd78N4dE0oC2XPc/PGtGqUjJH/iNDhDZKlfHnduhngAiKEXdvCvNyYXUxhBP/1DF
 IDxIzLS3vHW1irS5b69DNB/uCQBL1MbGe5l9ke/xKZmcd+Z6xleU5swAtLnNR7y8l3F2
 IOfJLDRw5GK7rMzdycYDkMwtwun3yhWApXofTrKF9C9rRoN2CjCB40SXRGxOcpcDi54K
 YRMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=FjnArbiHeKmHxIQGkXFyLcDATsoCoWvdzs6hnVzyW6g=;
 b=LftXgrAtLXJgezDejatvW82DhV6YQxxVmSOcQ0EY94R75GFdVOiM2DZ5Cv8tqeBo/P
 ZGyXwcvSHukYVnpH/OIfcRazsJTYJUt8Mtm4G+Oac/T5nfUmhz1d8b8xuNRjWcE2rT5d
 PA0UDMbvrZLD8S63vtCUJeX6J/Psi0VRhtcp88SRffsvq9GgUHneGJ1kVZm2xQi9dbEt
 Abyvu7iYtgrA1gWbVf/CAussXINmfdky6Ew2GYhu2SbauZYKiT4asrD8Rr0Ubhcf7IuU
 Q2GTarX8OQt2nANmyx/QCeu11hak2xFU9UtFOXiESY2/MrYVxJ4SCVo+Ju48jfoBT89z
 Lacw==
X-Gm-Message-State: AOAM532hDrjPViweGX7dX0xbvomH1x43XQB6llNLOCT2HVzyC7xi+UwW
 4PaA+ZRH22fC5G+FsMg02H1l+w==
X-Google-Smtp-Source: ABdhPJz5Nk0LJAe1slK1roTE+oxG1zDFX+FnoXU6Ow5CzumX7mijMS7IuiMHrwNK7ouJ9w2wLzkUnA==
X-Received: by 2002:a05:6402:4253:b0:423:e4e0:fdd8 with SMTP id
 g19-20020a056402425300b00423e4e0fdd8mr6255768edb.193.1650297423228; 
 Mon, 18 Apr 2022 08:57:03 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 l3-20020aa7cac3000000b00422c961c8c9sm5068097edt.78.2022.04.18.08.57.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Apr 2022 08:57:02 -0700 (PDT)
Message-ID: <605aa014-19ac-2679-799f-c2410b3fcc3a@linaro.org>
Date: Mon, 18 Apr 2022 17:57:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC/RFT 3/6] phy: rockchip: Support pcie v3
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
References: <20220416135458.104048-1-linux@fw-web.de>
 <20220416135458.104048-4-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220416135458.104048-4-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_085704_573909_FD248E72 
X-CRM114-Status: GOOD (  12.82  )
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

On 16/04/2022 15:54, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> RK3568 supports PCIe v3 using not Combphy like PCIe v2 on rk3566.
> It use a dedicated pcie-phy. Add support for this.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> driver was taken from linux 5.10 based on in
> https://github.com/JeffyCN/mirrors
> which now has disappeared
> ---
>  drivers/phy/rockchip/Kconfig                  |   9 +
>  drivers/phy/rockchip/Makefile                 |   1 +
>  .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 278 ++++++++++++++++++
>  include/dt-bindings/phy/phy-snps-pcie3.h      |  21 ++

This goes to separate patch or to the bindings one. File naming is also
not correct. Who is the vendor here? "rockchip," or "snps,"?

The values look specific to this Rockchip implementation, so the file
should be also mentioned in the bindings (e.g. in property using it).

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

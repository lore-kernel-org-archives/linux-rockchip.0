Return-Path: <SRS0=1QWa=NN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EAA9C4338F
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Aug 2021 22:19:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4138261262
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Aug 2021 22:19:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4138261262
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AKWWQtJ3DKPh20+yOpZfbWpcZKI3I/iTaCG3iFHXfgo=; b=CKBT0gn2B+bwFdh9slHw/E7oRj
	rGKp8thBGWBoTeNui3u9uu8E07ORHybu1fwcO/12jT2TxJZYDIBNaVgd7mE3l4b1g69u17v1FzicP
	QRpR8gCTsfyEJwWz6Pwe99nNxPT3R+xiIybiYFVrh+xarSCrfv+9ZkRGHfUGESqWnMEqQaZY4MHsL
	lkuDWXaEKZnUL8VOz4uQvVvHFosyJcN9T/9e8gxCYqDJBvuqz4Fx6UDIO3Lff9WEiftFmxS0Hh/tD
	+nCxBWG3bGyY14SHVww0AfYtLEoyJXlEzJHXxiSbOKNJ8N3qpvXN+sQ4ugrnj7bvLHlNcWl5A+P+p
	91spKUhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHvoA-00EpSn-9t; Sun, 22 Aug 2021 22:19:14 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHvo7-00EpS7-Im; Sun, 22 Aug 2021 22:19:13 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 c129-20020a1c35870000b02902e6b6135279so9553929wma.0; 
 Sun, 22 Aug 2021 15:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=jJbzfY3J31R5QWngmUYeYdxzeAtmKFvE5F0hxn4JZuI=;
 b=sonh4OKDkUqZNnBP91jhGurw0kgke3bYqK9Sjul2Wzfk8CpUqPve9bnZ7/+RiZSdbu
 ZmaMe+NVxKkmgoEzouc38aCj5pncNk2zwLTWpI5P67byViKHD8nws9sBuwUWzbs8R77L
 9dLHo1lT4p48+DUXX3RKNu9n77//pZAIcAFBQt43+wOexac4XBmF1QBEQBXb984RtCa3
 +2Prgxm/EokCE68P/QHbeX4fcjUqs0kDYKW2I52GxeHIb6okDYf5eKSjsFSA63vaWwu6
 h1zaCwRV1KNKb60+5N2ye6U3VLVWMgFYc/uAjc3PcfqgeSiJImoxy5CAUOIqicek0kir
 AnMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=jJbzfY3J31R5QWngmUYeYdxzeAtmKFvE5F0hxn4JZuI=;
 b=LZoFdbPuhtcuZi8QHvGMxUaH3lUSEiyih+ozoqaInnZJZAwPIzsRgcSDIgIYQEYBmx
 ljqf2I+vCUa6JMzwDI/0PMjF46/hb8vmTG7dpgyerDCbvgPoHQhJiRsOYWmPySWm9RLh
 an+5Qv5H0oT1knRP9w4omRrc6xjZa3EFoSpDWG4Nfu8JILjUPX2RyExOUpOtklhfKh0O
 7/S1xfqfcgtghIj9ZzPez+IwPNaMu6ZXwK+KyIOSGQLybz07lls3azQi84LZU4tp+x2Y
 mwzgqoL7H4canUmJQGyxlnZ+1F2IR1QC0cQ0g+349VdH9kPPa+uhwXsNhydhU9lF9t9I
 jDSA==
X-Gm-Message-State: AOAM531pQI66FUBf3nMWeQsLDjoIjpcMtjFeSnIqzVdphegaoOY+VJCE
 ixUB99Mvk+nADXjkBjTblned4pyhQ6d4
X-Google-Smtp-Source: ABdhPJxcen/OdScVUcs9fnwQHzsoIRW2aHmR54BIsCLT/Rsr70uMcDOnDYMgt9qCNcHfrYeLo+WTwg==
X-Received: by 2002:a1c:f414:: with SMTP id z20mr13752100wma.94.1629670749888; 
 Sun, 22 Aug 2021 15:19:09 -0700 (PDT)
Received: from ?IPv6:2a02:810b:f40:4200:f3bc:8bd1:bbc3:e753?
 ([2a02:810b:f40:4200:f3bc:8bd1:bbc3:e753])
 by smtp.gmail.com with ESMTPSA id d8sm12881848wrx.12.2021.08.22.15.19.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 Aug 2021 15:19:09 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: Fix GPU register width for RK3328
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210623115926.164861-1-knaerzche@gmail.com>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <c586d864-994f-2d24-9b29-2933b567be84@gmail.com>
Date: Mon, 23 Aug 2021 00:19:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210623115926.164861-1-knaerzche@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210822_151911_701848_47599C5A 
X-CRM114-Status: GOOD (  19.27  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

is there anything left to do for this one?

Same for:

https://patchwork.kernel.org/project/linux-rockchip/patch/20210623145918.187018-1-knaerzche@gmail.com/

and

https://patchwork.kernel.org/project/linux-rockchip/patch/20210623150208.187201-1-knaerzche@gmail.com/

Alex

Am 23.06.21 um 13:59 schrieb Alex Bee:
> As can be seen in RK3328's TRM the register range for the GPU is
> 0xff300000 to 0xff330000.
> It would (and does in vendor kernel) overlap with the registers of
> the HEVC encoder (node/driver do not exist yet in upstream kernel).
> See already existing h265e_mmu node.
>
> Fixes: 752fbc0c8da7 ("arm64: dts: rockchip: add rk3328 mali gpu node")
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 8c821acb21ff..da84be6f4715 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -599,7 +599,7 @@ saradc: adc@ff280000 {
>   
>   	gpu: gpu@ff300000 {
>   		compatible = "rockchip,rk3328-mali", "arm,mali-450";
> -		reg = <0x0 0xff300000 0x0 0x40000>;
> +		reg = <0x0 0xff300000 0x0 0x30000>;
>   		interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>,
>   			     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>,
>   			     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

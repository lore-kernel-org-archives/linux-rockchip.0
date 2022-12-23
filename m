Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E68E5C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 08:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXbFmzOK1VHnOBcwUOhD3IiVEJHyBhaW/oiBzfN/h4A=; b=qgdKjXKsPFJS2u
	tOb05rGp3/+V4yJtW8egjK/mblD3zEnouGkx40kIjLdkdbQ9QLwa6ER3GdDz2xROxEStDBO9JcMww
	9KINID4NjoFEc2ePj/StauYw3MrI5E2IewjxyzwISxpD9wzMrHvTPgn3OkHpwEhx2lATgU4g6u3hk
	zYTWpuk6JUiLTvGbr3np/ibXxO+mLaKXKvJuhwRK9BrSrB6kvGbSiZkSzcWL/5piQ3cZQ7DEStRiM
	8SEtv+wuVPSFQtvoJ6sk5DZWdORqsl+PT8ZPxuSsO2OyUtgGkLq0PitM/S6+DgO8EYjQpNpuNJG/f
	tRpM0TsUPpXt8HkHarDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8d0Q-0052LF-DK; Fri, 23 Dec 2022 08:02:14 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8d07-00526T-K2
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 08:01:57 +0000
Received: by mail-lf1-x12a.google.com with SMTP id bp15so6083867lfb.13
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Dec 2022 00:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8TQnzqH82SvQ7sJUIb95QiBqANoSmjRADQ8HXRaKeGo=;
        b=laX6CMBEHL7EUfJH496zLDpje81hgAz9YUzZOLGBqlK1mrnWF0ZnxAsCa9RVayRmxU
         phW2gyFp1TGFHEmGDrgvoUMyZLn1K7yGoseHDNhwtSQKXa/bJvzLBBy78xKHgy4Z3AOi
         lfAns6L4cM8jfV2VWrpeQNRLQWRzpZCAoKjoJn8R7u58hMDGywg2YD8Tca5YKXdZm9e9
         25zz28uYvL2PcRXvGfqnXnllZ36ANyovOhobn9WIfddHSoMsdHnS5f8IsugoNSqVH4I5
         jAM1ueitx4R/EURYfk1pLF4eHLNyVO8YpFoT6bE9IEC0PCRSDLC93dDyj2/te1lmH9K1
         pxEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8TQnzqH82SvQ7sJUIb95QiBqANoSmjRADQ8HXRaKeGo=;
        b=r7jwQfB2EWSKoXK8hNJAy0QlCaZ1wfRwtUjNDietv6F6HdkWDpP/3zBLvFVa+QEKXM
         T5FnuTh9epgSxYQkF2E0LBT10PM3N9pAcR5Kr9tLGyaPGra5yC7sip0QXX6eUSrFj7l4
         W4e/+AACnDlZolSlnXTA82lXzau0HpwkiW1UIzvLpvIlth3Zg/zlEu948QwmJ2N/+4v3
         1eI/Zl0ZREO2S8nKtrthdGb5CJepNDh7q3CUFpmknFKlRbEDqsM53HRsYHLX9gTndRN4
         mWPxj/R3ngCqSCTwf1YWB8Pq+Y52HIkscVZZgyDMoKRrHTqmo5xT7CkaFzJNzWYcD4cY
         T3Dw==
X-Gm-Message-State: AFqh2krFOOZLyIuKShp1K3GxE1mBY5RX3orj39cuDu/6B7GshKEtNXPR
	0TyDToxxn3Lcn1XjsW9L5Ttu/Q==
X-Google-Smtp-Source: AMrXdXuGO/ZSogTkRDNw22+r/TpFw7Rhrh/MFMaj/vVX8Bk7grMsV5aNsENVA9T9S8Qf3E7ZS/gCHA==
X-Received: by 2002:a19:2d59:0:b0:4b5:1414:415f with SMTP id t25-20020a192d59000000b004b51414415fmr3091792lft.59.1671782510766;
        Fri, 23 Dec 2022 00:01:50 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z11-20020a056512370b00b0049c29389b98sm413584lfr.151.2022.12.23.00.01.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 00:01:50 -0800 (PST)
Message-ID: <97100086-8521-f05b-f939-605c84e3cfe1@linaro.org>
Date: Fri, 23 Dec 2022 09:01:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v9 3/3] dt-bindings: vendor-prefixes: Document EmbedFire
Content-Language: en-US
To: Yuteng Zhong <zonyitoo@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Wenhao Cui <lasstp5011@gmail.com>
References: <Y6Ud9MhRjCVAYMCj@VM-66-53-centos>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y6Ud9MhRjCVAYMCj@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_000155_814621_3673A96D 
X-CRM114-Status: UNSURE (   8.16  )
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

On 23/12/2022 04:18, Yuteng Zhong wrote:
> From: Wenhao Cui <lasstp5011@gmail.com>
> 
> EmbedFire is a manufacturer of embed computers and education platform for
> embed devices from Dongguan.
> 
> Add vendor prefix for it.
> 
> Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
> Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

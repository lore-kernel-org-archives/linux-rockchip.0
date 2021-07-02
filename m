Return-Path: <SRS0=rL42=L2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA3A6C11F68
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Jul 2021 10:09:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 84A46613CE
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Jul 2021 10:09:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 84A46613CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=enJEfpccjaJfQTm5Xkwl+7ooroaNK2b99KM8JvMcIkE=; b=dqqzBVcvMg/9xfAyzdyuI6o/3k
	qw5yGmPLCudf1ex+hCxvRRoqCDlcyZUJglPDJappfxf1AJ+iaWVK/whvZ6J9ddzPgW5KY4AJDEo4P
	+eDDyd3UOKjqs+lQqNVCeBR2QuWT2/mrQUdqMsEoBzB5bOUSSjNM+NgYYXWOcZWXRmKvcxe5De0H0
	NLZ+nnuT25p6WElyiQiVOg9HPsYeadsmQyj1nXW2lHAB8NnQkogDgKfHTXm6+twIO+VkGKrEdiU9j
	vNE9lXQxjlh29wzpUsHLNivylyvvVjoBQAE6qKWRyBHWCcUXKtEnWrEXNfvhYRi2LvBZEsQ9mc7JB
	KjkxI7SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lzG6y-002kDW-S0; Fri, 02 Jul 2021 10:09:28 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lzG6v-002kCw-VI
 for linux-rockchip@lists.infradead.org; Fri, 02 Jul 2021 10:09:27 +0000
Received: by mail-ej1-x633.google.com with SMTP id hc16so15275046ejc.12
 for <linux-rockchip@lists.infradead.org>; Fri, 02 Jul 2021 03:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mAcZq2qCj7fPqjewfevHu9BVjvRWMa9BAJtXnZItPUk=;
 b=ZX3wiXi2Cp7D30SK7u2b/6N3EQO/PtXDFxT8dCSUPC3l0lyGm7p/lyUMElojTsGK15
 dj5ONaXOjGOUE7MKCWKsTcXjAWs8wc797lJQFVYilN78AD3dnw5Po3uazzKWinOy6Cxz
 pN0W+I4kvPIGreZcJwNhvlzgWBD8cm85c8rvY4KmCLLaNrihCBeWI0+eFOSZZq+QwZOm
 93Q5Aw2j+CBqzk2FOjPnBqL6FYcFGZzvIVZmxlnn47gXxWuFcqyy68XXTy2FwoVz3Njj
 HlJR8bOL+/ybuPB6laBbb/56UKDmOyRyA7MIhxvpSgnSz6jKyh1h61JxqDXYbNNJbb74
 HVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mAcZq2qCj7fPqjewfevHu9BVjvRWMa9BAJtXnZItPUk=;
 b=MWPYy278Akc4vyq3614Y9pA44pGSu47NEsfaKTTvdIY9lKdQWIya0qijRp2adc88Lm
 qWFFKtHEtHj80QYMCISOC2aYZDc5jsPmV66ulwdVvfLc3cztjtx/IHf5wGSczHeOCBLR
 BwcQR0DBJcbjf7y3O+HylUI/OLmJq9HwG6NpflZHGMulq4cV60JtuKxo2AM9hyG6HEsN
 V1YQ+y7i+f8cpcQzb0Yw86npmSPxA9ZvYZSSmW9o0GEKsdOX5A59Jjjz8Ld6fX+1VRKy
 pcmiAo1qfqqnRb937jqELYZh+HKWhlfYgYvVnq/8TtwPUYcNhueECsIZ8rtrN4EZcv1X
 68yg==
X-Gm-Message-State: AOAM530IyjeMxmVg8W7/IpQJ9hMm1HnUrfe9BxHGJl4z8ub6vNh4X8wV
 eQmm9yzTmfAwDRBpkwKSX5A=
X-Google-Smtp-Source: ABdhPJxzOOvV1OKjShaxRdv3KbJpaLn65+XpLwJ5OjUumZHsnLoYAn3cZ4phxDeRwx1TT6ziq25HDQ==
X-Received: by 2002:a17:906:3407:: with SMTP id
 c7mr4524715ejb.212.1625220563752; 
 Fri, 02 Jul 2021 03:09:23 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 jx12sm871098ejb.9.2021.07.02.03.09.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 02 Jul 2021 03:09:23 -0700 (PDT)
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: rockchip-saradc: add
 description for rk3568
To: Simon Xue <xxm@rock-chips.com>, Jonathan Cameron <jic23@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
References: <20210702021403.146293-1-xxm@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <9577a3cf-cd10-0aeb-d699-a23994c2e6e2@gmail.com>
Date: Fri, 2 Jul 2021 12:09:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210702021403.146293-1-xxm@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210702_030926_064801_0BDBE30D 
X-CRM114-Status: GOOD (  15.04  )
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

Hi Simon,

The file rk3568.dtsi is now available in linux-next.
Could you make a complete package with also a patch for rk3568.dtsi?

Johan

===

rk3568.dtsi:

	saradc: saradc@fe720000 {
		compatible = "rockchip,rk3568-saradc", "rockchip,rk3399-saradc";
		reg = <0x0 0xfe720000 0x0 0x100>;
		interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
		clocks = <&cru CLK_SARADC>, <&cru PCLK_SARADC>;
		clock-names = "saradc", "apb_pclk";
		resets = <&cru SRST_P_SARADC>;
		reset-names = "saradc-apb";
		#io-channel-cells = <1>;
		status = "disabled";
	};


On 7/2/21 4:14 AM, Simon Xue wrote:
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> index 1bb76197787b..e512a14e41b4 100644
> --- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> @@ -20,6 +20,7 @@ properties:
>                - rockchip,px30-saradc
>                - rockchip,rk3308-saradc
>                - rockchip,rk3328-saradc
> +              - rockchip,rk3568-saradc
>                - rockchip,rv1108-saradc
>            - const: rockchip,rk3399-saradc
>  
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

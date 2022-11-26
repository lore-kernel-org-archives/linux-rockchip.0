Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BF08C43217
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Nov 2022 13:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qEBiGLv5l7qaXkZIH8bVVvD7joPWPW/ZnCJZGogAtAA=; b=YYLgoY7f0SfdRl
	o9Vig1j2SnzhcuTNfiib+7SqqWYfNZsePpMnmTqvhRz9CBsO79Qv7qR/wycyzqu6Kvobz/LKZmof+
	tQJntgvkEfjtQ1cpVpQRRiowjsU7Wy/c9N7mo7B/Pt1j1jQMLW0FCnaQoGpZMlR63nK3AG3n92AZs
	rfhsLnqWI3ZhO3CijFfQx5XiY5proyF2z/Sk+YRJ+rwzq9JUStIcCKFNTvbAojxM20MKq7tDfqtQI
	qxjCHLrwIxjrgGzd0QLKsbQgc/6cGiXc4fG0YKvPyA5pMd4zPbxjQJPYT9OQ18N/p7Du4z9LZcnv5
	Tzy60rxDgm5tBRpQeoBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyv9h-006Jmd-Mo; Sat, 26 Nov 2022 13:23:41 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyv9V-006Jk8-2S
	for linux-rockchip@lists.infradead.org; Sat, 26 Nov 2022 13:23:40 +0000
Received: by mail-lj1-x231.google.com with SMTP id a7so8021675ljq.12
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Nov 2022 05:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n/1roXOdySIxs1dS/N1VkID/IKrNoi7dXAED3KVDP+E=;
        b=WFpJa/iywGsIj1TGouF0pb+548r06Vjwgcd5EyzUWhr333V4WJ1P7qdra6s5sRINCt
         +cgeNylffxGiqUiXajyojXWDCDQ76Sm9nTx4BJRiQX0wqKt7UX+O3BT6F20KEZ5YlNCb
         Xx91Uhwgwvrmfw6V7mi7qZTrhcIPHvQwoLRWWa7YcFNLcyiDgwWcPod1t8ybfqT8vLK7
         V4eOT7aiSb3A9D10ownYCGBHG5D0jRetqlnWtOMteTwZn8dOqKPEQliiGv3n73dJzfrF
         C49OoeafhrLgsmZoB7oH1Lh0xoE75lfdjKc6YggvNqZvIzSTBSZTQjJl9jX6IVvCets8
         35/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n/1roXOdySIxs1dS/N1VkID/IKrNoi7dXAED3KVDP+E=;
        b=IZD8rcdy3pWuXXDSxYVhMovCU4gM6eWv+DkAENZAVZ6uQNO2LFxJO2LEcvY+xniaNS
         BGaYsrE3bJQWhqZvzc4Yo9clOvvQqaeY0Mv9r53jOeOANvBXAzne1bqYLKL3M0ZeE9TK
         HeDTVZjh+WI0F/LB6JKBNj1+L/uBguX5MuNP73/J8tDWW4mgy8FrxvPjohjjAejYZoSf
         DaP9BmKTUm2aJHp6m00/c5htWqICRQoI2gEwMhmnhfU1chRZjebR+vZ07fNg+n8KKQTh
         DAX8wlE3m+2Jd6AYAgYhLUDIK3q2Z5W70V14i/GdqaUoCwod0BleWgt5ZCdsCn8SHyTd
         zeKw==
X-Gm-Message-State: ANoB5pkIJvjv2I5s+RM8PXdUq5U5/pNnHrPG4O8UQBEfhYyKOzphjlkB
	W/YeEs48XZ6ovPVnFXqTknmB8A==
X-Google-Smtp-Source: AA0mqf5Ootwrl9wuLxNIE5DbCYxf+n8l6mn0DsE3XLw42RQMRT5o+l7A+yTMzswTsc+WvrxTVN8HvA==
X-Received: by 2002:a2e:be8a:0:b0:26f:c081:9aed with SMTP id a10-20020a2ebe8a000000b0026fc0819aedmr13790332ljr.222.1669469005139;
        Sat, 26 Nov 2022 05:23:25 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c3-20020ac25f63000000b004a4754c5db5sm923547lfc.244.2022.11.26.05.23.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Nov 2022 05:23:24 -0800 (PST)
Message-ID: <1dcd1ac0-6a5f-6973-1ade-5480d81cfcac@linaro.org>
Date: Sat, 26 Nov 2022 14:23:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] arm64: dts: rockchip: add Hynitron cst340 for Anbernic
 353 series
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20221126011432.22891-1-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221126011432.22891-1-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221126_052334_184198_05C3AD0B 
X-CRM114-Status: GOOD (  16.30  )
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

On 26/11/2022 02:14, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Hynitron cst340 touchscreen driver to the Anbernic
> RG353P and RG353V devices. Note the RG353VS device does not have a
> touchscreen.
> 
> https://lore.kernel.org/linux-input/Y1y9e9sgE%2FDck9fB@google.com/
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 20 +++++++++++++++++++
>  .../dts/rockchip/rk3566-anbernic-rg353v.dts   | 13 ++++++++++++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> index 63cff402f3a8..06222dead921 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> @@ -95,6 +95,19 @@ &i2c2 {
>  	pintctrl-names = "default";
>  	pinctrl-0 = <&i2c2m1_xfer>;
>  	status = "okay";
> +
> +	touch@1a {
> +		compatible = "hynitron,cst340";
> +		reg = <0x1a>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <RK_PB1 IRQ_TYPE_EDGE_FALLING>;
> +		pinctrl-0 = <&touch_rst>;
> +		pinctrl-names = "default";
> +		reset-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_LOW>;
> +		touchscreen-size-x = <640>;
> +		touchscreen-size-y = <480>;
> +		status = "okay";

Was it disabled anywhere?

> +	};
>  };
>  
>  &pinctrl {
> @@ -104,6 +117,13 @@ spk_amp_enable_h: spk-amp-enable-h {
>  				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
> +
> +	touch {
> +		touch_rst: touch-rst {
> +			rockchip,pins =
> +				<4 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
>  };
>  
>  &rk817 {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> index 885234a023e1..dc3fc67f5853 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> @@ -82,6 +82,19 @@ &i2c2 {
>  	pintctrl-names = "default";
>  	pinctrl-0 = <&i2c2m1_xfer>;
>  	status = "okay";
> +
> +	touch@1a {
> +		compatible = "hynitron,cst340";
> +		reg = <0x1a>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <RK_PB1 IRQ_TYPE_EDGE_FALLING>;
> +		pinctrl-0 = <&touch_rst>;
> +		pinctrl-names = "default";
> +		reset-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_LOW>;
> +		touchscreen-size-x = <640>;
> +		touchscreen-size-y = <480>;
> +		status = "okay";

Same question.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

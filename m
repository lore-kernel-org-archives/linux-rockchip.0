Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 934A5C4167D
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 16:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bKEqU4bt5PYb2BPb17GNCeU3sIk5ijc+F/wlQswKr0I=; b=Itn5CW8Uzpyecw
	463TIqTboMf9b/LMzjURImGwHHEiUTjxenpZE8Jy+THihCm+HEENykMoPF+wYofH+gXykVntkZ/7P
	aAcR6jIwkcrGAGLAWI7j8JByGKl6MxA3Fc90Zw1SJDmfBWAgT+fsL9zy7lVGFG8Th31yL++62w3SE
	5klvM0lHYnXf3nvuUVkV4kTZl1X5eDY7rjIcU7226YZ1AgipYS9E7wYnTa4H1+wSUvkj7PmK2rvAC
	TiU0gOj+qW4HT0au5of9F1BfkTFoGWU+UnK3IcrsSox2mQqhZH2TIZW7RPsdKUVF3SfqfjF0m7BA1
	bDV+SrHLkGUjCpSYqiiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Opo-001zay-12;
	Tue, 07 Nov 2023 16:21:48 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Opl-001zZp-1F
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Nov 2023 16:21:46 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9e1fb7faa9dso187813666b.2
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Nov 2023 08:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699374103; x=1699978903; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P6cJcwuvihNnLF2YQLxKlTugJMXpQ2ttiCERfY4UZxM=;
        b=terB6VIrp6w3k8H6n6nDwg3/HT8F1vlyt1tNyvp5JRpjTt8CAiHGiz+vRtsGsTqNgC
         sfcPXw6t657b3YWtPJ1FGVXwqQBMfaqQTa2dHmMesO2kOdWNIXQ9kJq8wvS5+hG7sqec
         lDHCrxp3RVbyjK/E2vnbiNRn3Xb5ftKM2lg9EMvQ2EnIkX2YB/5n37jt4gFkOVfi6PxZ
         LL2leWBBWcly5jcko4ECio4tC2rAuE0ADOJqzVVSG1iu5ciBznFeEQ0CsLONqdRJ+x8E
         fphtLFd05v+hNNNSJYhhM9hANGFw7FGlAGMJeXbZrVDVQ0VvjAs7b+hk/Xb1/SVJLmJw
         NcSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699374103; x=1699978903;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P6cJcwuvihNnLF2YQLxKlTugJMXpQ2ttiCERfY4UZxM=;
        b=CT0/io+L3Yd9cddCuucu3s98hvygf2KUqumfy+1UYMHtbf66oDyHvWk6tfsSxNKCVH
         nMttUDkfEno6CSWvJ5SqJqE18qK5llV22olVtp+mVN0I4VkzdRhDXe66Csisgpma6cKZ
         WLtXflhf6hoXO/4GWlmVOaXW9GFw1NdK2kNFjxArmXV953OTpfuWDgMRFLeEnLvCsAhd
         jliaruLXW7KhFxG3HBdik8S1ytOE/Gx4BM2jYA7lOqQoqaMZoA6zWpawXdhVOAInlWYM
         rZQsEcxKC0FJQ94blpWYfNKXfUQgd5NvUtP8AHlCzCJouXqMBz5jMNGEaeseUB1CvZ3v
         BaKw==
X-Gm-Message-State: AOJu0YzySenzCfdQbSFulNTDHE4xXZ3FL2em+ThFw2723Cy0pWL0xbE2
	M/OAgOKFGRlJWSeTBw2JZWJ7PE99GvU9NOlnuUI=
X-Google-Smtp-Source: AGHT+IHMcnqcX1KOx4IwQmJdHSpU1iqC1ZQH9Na+lXlbMWTf2/YjUsigjr+OL8QF0iqtqK2lh1Hsdg==
X-Received: by 2002:a17:906:1915:b0:9bd:a73a:7a0a with SMTP id a21-20020a170906191500b009bda73a7a0amr13093000eje.58.1699374103172;
        Tue, 07 Nov 2023 08:21:43 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id cw25-20020a170906c79900b0099c53c44083sm1212333ejb.79.2023.11.07.08.21.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 08:21:42 -0800 (PST)
Message-ID: <f1b24f19-c210-4f55-b40f-ab063e7eeb22@linaro.org>
Date: Tue, 7 Nov 2023 17:21:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] reset: rockchip: secure reset must be used by SCMI
Content-Language: en-US
To: Corentin Labbe <clabbe@baylibre.com>, davem@davemloft.net,
 heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
 p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org
Cc: ricardo@pardini.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-6-clabbe@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231107155532.3747113-6-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_082145_428050_24E28F8D 
X-CRM114-Status: GOOD (  17.83  )
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

On 07/11/2023 16:55, Corentin Labbe wrote:
> While working on the rk3588 crypto driver, I loose lot of time
> understanding why resetting the IP failed.
> This is due to RK3588_SECURECRU_RESET_OFFSET being in the secure world,
> so impossible to operate on it from the kernel.
> All resets in this block must be handled via SCMI call.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/clk/rockchip/rst-rk3588.c             | 42 ------------
>  .../dt-bindings/reset/rockchip,rk3588-cru.h   | 68 +++++++++----------

Please run scripts/checkpatch.pl and fix reported warnings. Some
warnings can be ignored, but the code here looks like it needs a fix.
Feel free to get in touch if the warning is not clear.

>  2 files changed, 34 insertions(+), 76 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/rst-rk3588.c b/drivers/clk/rockchip/rst-rk3588.c
> index e855bb8d5413..6556d9d3c7ab 100644
> --- a/drivers/clk/rockchip/rst-rk3588.c
> +++ b/drivers/clk/rockchip/rst-rk3588.c
> @@ -16,9 +16,6 @@
>  /* 0xFD7C8000 + 0x0A00 */
>  #define RK3588_PHPTOPCRU_RESET_OFFSET(id, reg, bit) [id] = (0x8000*4 + reg * 16 + bit)
>  
> -/* 0xFD7D0000 + 0x0A00 */
> -#define RK3588_SECURECRU_RESET_OFFSET(id, reg, bit) [id] = (0x10000*4 + reg * 16 + bit)
> -
>  /* 0xFD7F0000 + 0x0A00 */
>  #define RK3588_PMU1CRU_RESET_OFFSET(id, reg, bit) [id] = (0x30000*4 + reg * 16 + bit)
>  
> @@ -806,45 +803,6 @@ static const int rk3588_register_offset[] = {
>  	RK3588_PMU1CRU_RESET_OFFSET(SRST_P_PMU0IOC, 5, 4),
>  	RK3588_PMU1CRU_RESET_OFFSET(SRST_P_GPIO0, 5, 5),
>  	RK3588_PMU1CRU_RESET_OFFSET(SRST_GPIO0, 5, 6),
> -
> -	/* SECURECRU_SOFTRST_CON00 */
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_SECURE_NS_BIU, 0, 10),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SECURE_NS_BIU, 0, 11),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_SECURE_S_BIU, 0, 12),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SECURE_S_BIU, 0, 13),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_SECURE_S_BIU, 0, 14),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_CRYPTO_CORE, 0, 15),
> -
> -	/* SECURECRU_SOFTRST_CON01 */
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_CRYPTO_PKA, 1, 0),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_CRYPTO_RNG, 1, 1),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_CRYPTO, 1, 2),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_CRYPTO, 1, 3),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_KEYLADDER_CORE, 1, 9),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_KEYLADDER_RNG, 1, 10),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_KEYLADDER, 1, 11),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_KEYLADDER, 1, 12),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_OTPC_S, 1, 13),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_OTPC_S, 1, 14),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_WDT_S, 1, 15),
> -
> -	/* SECURECRU_SOFTRST_CON02 */
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_T_WDT_S, 2, 0),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_BOOTROM, 2, 1),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_DCF, 2, 2),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_DCF, 2, 3),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_BOOTROM_NS, 2, 5),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_KEYLADDER, 2, 14),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_TRNG_S, 2, 15),
> -
> -	/* SECURECRU_SOFTRST_CON03 */
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_TRNG_NS, 3, 0),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_D_SDMMC_BUFFER, 3, 1),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SDMMC, 3, 2),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SDMMC_BUFFER, 3, 3),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_SDMMC, 3, 4),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_TRNG_CHK, 3, 5),
> -	RK3588_SECURECRU_RESET_OFFSET(SRST_TRNG_S, 3, 6),
>  };
>  
>  void rk3588_rst_init(struct device_node *np, void __iomem *reg_base)
> diff --git a/include/dt-bindings/reset/rockchip,rk3588-cru.h b/include/dt-bindings/reset/rockchip,rk3588-cru.h
> index d4264db2a07f..c0d08ae78cd5 100644
> --- a/include/dt-bindings/reset/rockchip,rk3588-cru.h
> +++ b/include/dt-bindings/reset/rockchip,rk3588-cru.h
> @@ -716,39 +716,39 @@
>  #define SRST_P_GPIO0			627
>  #define SRST_GPIO0			628
>  
> -#define SRST_A_SECURE_NS_BIU		629
> -#define SRST_H_SECURE_NS_BIU		630
> -#define SRST_A_SECURE_S_BIU		631
> -#define SRST_H_SECURE_S_BIU		632
> -#define SRST_P_SECURE_S_BIU		633
> -#define SRST_CRYPTO_CORE		634
> -
> -#define SRST_CRYPTO_PKA			635
> -#define SRST_CRYPTO_RNG			636
> -#define SRST_A_CRYPTO			637
> -#define SRST_H_CRYPTO			638
> -#define SRST_KEYLADDER_CORE		639
> -#define SRST_KEYLADDER_RNG		640
> -#define SRST_A_KEYLADDER		641
> -#define SRST_H_KEYLADDER		642
> -#define SRST_P_OTPC_S			643
> -#define SRST_OTPC_S			644
> -#define SRST_WDT_S			645
> -
> -#define SRST_T_WDT_S			646
> -#define SRST_H_BOOTROM			647
> -#define SRST_A_DCF			648
> -#define SRST_P_DCF			649
> -#define SRST_H_BOOTROM_NS		650
> -#define SRST_P_KEYLADDER		651
> -#define SRST_H_TRNG_S			652
> -
> -#define SRST_H_TRNG_NS			653
> -#define SRST_D_SDMMC_BUFFER		654
> -#define SRST_H_SDMMC			655
> -#define SRST_H_SDMMC_BUFFER		656
> -#define SRST_SDMMC			657
> -#define SRST_P_TRNG_CHK			658
> -#define SRST_TRNG_S			659
> +#define SRST_A_SECURE_NS_BIU		10

NAK. You just broke all users.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

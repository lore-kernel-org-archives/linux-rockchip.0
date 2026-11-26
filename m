Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F64A606A31E
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 13:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PSMgH2Lh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=NhWPwhW2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sEdq5cSBDfgZiinIBzBypKvEEdawQzg979l/a4Z1XRM=; b=PSMgH2LhR3XFMX7lmY9q7vLeX9
	u3or+Vq3NSZpwXGvJKknc8l1g2hESUIPvy5TMmBo3cOHWmgLXGOkOC80NQPy/o8gze/V13IZ9ujEE
	ipJ7rocZ//eAboEMSszF2F5/EcK5ZT3RdMeU61kabfdIvnTJKIFVw8nbFAjiYTH3+5JLlVdqL0sJl
	6Km8EmIU1O5lmvbGuGSExiDU8npIJIyLfOYrg4s9B3pe9G/UAsIHz9CtF3Q+0hOZuGbq7xT/obp6z
	50PryRcKh1ziIVati8dDtDBJmxNYZB+EIlnoIoa80qR5MPVcIV9VyC64UAXgYS+/RzPtViIAZUAxi
	NXEOYoUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWZ5Z-0000000DHPQ-1F1x;
	Thu, 26 Nov 2026 13:00:37 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWZ5V-0000000DHNS-1DyD
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Nov 2026 13:00:35 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-3b0ae87069dso2965071a91.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Nov 2026 05:00:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795698032; x=1796302832; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Db7swx/z5fRcWKIKhx/36FX+1LnzR+96h9IjzqTpdvs=;
        b=NhWPwhW2pc1GhJvgBUI5MYDa5DfIZLTSAiutesfhLdT4oaOB1AG70TP/bKXzU4Snks
         sudjwcS3Nbg9dhtiuzmqV0Fz6ztDsX69HjJbqvpOzCT9doAFXCQyauWzCW2qFrz4ZEDP
         +D7SCTYXOfupM42l5rQIUY3k4hW1PsxJcWJddWThjpDlGRzM8zPzBCihlkTuBWn+RXHa
         79e8zprN5mHnE1QBASADGNEu5NdLorXnFybthd7fjAnhwJP2kVFR4r7YxFHvKTu1p6Ib
         BC40AQHxU0BElSug16B1Uq6nRZzfqW4yLJs9I34ADxzGFAOzV0r4Li6Q36BtB7AXzuaV
         RUsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795698032; x=1796302832;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Db7swx/z5fRcWKIKhx/36FX+1LnzR+96h9IjzqTpdvs=;
        b=OsMYXUA6oyqbaC98kTjWBCP26JHMbb0x1nAI3NwsMuBQ0VAhqoafZ50gt/rx5LrfNC
         fw9b0eiETUjo0MNTLPTx+D71Y6cEhUqLR4Jzls/pnmEO9EllIEz16eZwdZ/JHJJeBAYz
         XC08mmzcGEaZUIgx/jAEIPkICbFyYtuREWIro1UnyLw6gzu8U+9kUegWT4lY1FpKu2I2
         8NxmD96rhPdQshJMY/5Bv3Z3i2tW3DkdvRpWAYsgfz57IFnh8JwO9qRriUfUklj3TxK8
         5JrNyQcHn8Dulwx5BVXXVcBTW3iLon7CtqxqZOHKB46tomrVQRq9C4qH0C0yaGFGX6KG
         VSDg==
X-Forwarded-Encrypted: i=1; AL+hErEypY9V5Uf+wmDu5IDFDER/JbJsoNUtIrqIPr/Th2xkuovnVVO1lMAsIMHYdFwvnxtHJ6ytuLlsDsp8nIL9ng==@lists.infradead.org
X-Gm-Message-State: APuU4Z8a25jPeUtCs3rIOUO6GRXLdCd2CaNA2weszdcBmJ+9V25zDzmg
	XVzSoofzr7rsAEZxSjIMKMwZioXYuAVxg2wK8DjCxtM9vR/OOj3//U4b
X-Gm-Gg: AZFdTZeKBNZ9hPBeXMz8Q0UwPSFlUBWZq4DhbAOwZjNKatqCpBSICBrlvGXr8bdco76
	gR0jshCqhR90QyitJYnCKedGwBDBvvidJMMXD5eFfWQnVjmdec1bqFYV0UpqZnTIZR5lksF8k8Q
	sezkNkRrm7w/+8/pfGdTG9TKBC+pvQMvi0yghNiOLjWFCWe3ACC6a1xwlK6QRYqwzwZypLvPY63
	RYINbJG/IM30fetT9ogxECRfgwW/YFHuzThaqRM40Dtof4nsZg5UHrJsDotOIeQ1aFZtsgZvDsv
	3AqjsVHEJoz0DQ9yilO6SJFQ5ZVSiB9DksramA5tJYPnRWR6BX9O0+k1CKBLmNdZBZcKBh0tbzz
	21yLuBIH3M9rprVu0M0t1czfEwuG+Q5TVJdRi79CbkJ+gGVzgyH/w1DMsHAET7+RKbquBccCi92
	nY4ZTLDgff1QjoDwOfmkqygTgfFBFU2w9uNxrjr8jhtFjovJjYn+GTI4CUW2uP109b/Q6BN5w3g
	VmJ6WonGiKuoUtdDj1RJKS71gKt8sqxrd22P8/QWmrf7l1F/Xh1euHJLKJYBRsLVxwSnKajEH+z
	IP17p+bNDruUNLgt6PsjjavM7KjVEQ0+Pkw+ia+PYh4I5quuyg2l
X-Received: by 2002:a17:90b:2cce:b0:3b0:a7b5:c046 with SMTP id 98e67ed59e1d1-3b41c9759cbmr21021163a91.54.1795698031561;
        Thu, 26 Nov 2026 05:00:31 -0800 (PST)
Received: from [192.168.35.43] ([218.50.238.131])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b4b0f482bdsm17077789a91.14.2026.11.26.05.00.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Nov 2026 05:00:30 -0800 (PST)
Message-ID: <772ec0ea-da77-42e3-a281-8b8b7f364bf9@gmail.com>
Date: Thu, 26 Nov 2026 22:00:25 +0900
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/11] PM / devfreq: rockchip-dfi: make RK3588 use its
 clocks
Content-Language: ko
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20261119-rockchip-dfi-rk3588-cleanups-and-rk3576-support-v4-0-517a68c008fe@collabora.com>
 <20261119-rockchip-dfi-rk3588-cleanups-and-rk3576-support-v4-8-517a68c008fe@collabora.com>
From: Chanwoo Choi <cwchoi00@gmail.com>
In-Reply-To: <20261119-rockchip-dfi-rk3588-cleanups-and-rk3576-support-v4-8-517a68c008fe@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261126_050033_329044_01798A54 
X-CRM114-Status: GOOD (  30.17  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: chanwoo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

On 11/19/2026 10:01 PM, Sebastian Reichel wrote:
> From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> So far, RK3588 doesn't have the pclks for DDRMON used in the driver, as
> they weren't modelled before.
> 
> However, they are now correctly modelled, so the driver should use them
> when possible.
> 
> Instead of unconditionally getting them for this SoC, add a new variant
> member that specifies whether the driver should let missing clocks
> slide. This is needed because we want old device trees to keep
> functioning, as otherwise we'd be introducing a breaking change for
> literally no functional difference here.
> 
> Fill out a clock name list for this variant as well, and hand it to it.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 29 +++++++++++++++++++++++++++--
>  1 file changed, 27 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 2b9d9b26b11a..c51d7eeec394 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -117,6 +117,18 @@ struct rockchip_dfi {
>  	const struct rockchip_dfi_variant *variant;
>  };
>  
> +/**
> + * struct rockchip_dfi_variant
> + * @init: pointer to the variant-specific initialisation function
> + * @stride: address offset between the DDRMON per-channel instances
> + * @ctrl_single: whether only one DDRMON instance monitors multiple channels
> + * @max_channels: maximum number of memory channels for this SoC
> + * @clk_names: pointer to a constant array of constant clock name strings
> + * @num_clks: the number of elements in the @clk_names array
> + * @clocks_optional: whether not finding the clocks is non-fatal. Set if the
> + *                   DT binding for this variant didn't require clocks in the
> + *                   past, so that the driver remains compatible with old DTs.
> + */
>  struct rockchip_dfi_variant {
>  	int (*init)(struct rockchip_dfi *dfi);
>  	int stride;
> @@ -124,6 +136,7 @@ struct rockchip_dfi_variant {
>  	unsigned int max_channels;
>  	const char * const *clk_names;
>  	unsigned int num_clks;
> +	bool clocks_optional;
>  };
>  
>  static int rockchip_dfi_ddrtype_to_ctrl(struct rockchip_dfi *dfi, u32 *ctrl)
> @@ -806,6 +819,11 @@ static const char * const rk3399_clk_names[] = {
>  	"pclk_ddr_mon",
>  };
>  
> +static const char * const rk3588_clk_names[] = {
> +	"pclk_ddr_mon_ch0", "pclk_ddr_mon_ch1", "pclk_ddr_mon_ch2",
> +	"pclk_ddr_mon_ch3",
> +};

For proper operation of this patch, the following patch should be applied.
The following patch is applied to other git?

https://lore.kernel.org/linux-rockchip/20260921-rockchip-dfi-cleanup-v2-6-43ff34ac8599@collabora.com/

> +
>  static const struct rockchip_dfi_variant rk3399_variant = {
>  	.init = rk3399_dfi_init,
>  	.stride = 0x14,
> @@ -826,6 +844,9 @@ static const struct rockchip_dfi_variant rk3588_variant = {
>  	.init = rk3588_dfi_init,
>  	.stride = 0x4000,
>  	.max_channels = 4,
> +	.clk_names = rk3588_clk_names,
> +	.num_clks = ARRAY_SIZE(rk3588_clk_names),
> +	.clocks_optional = true,
>  };
>  
>  static const struct of_device_id rockchip_dfi_id_match[] = {
> @@ -885,8 +906,12 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  		for (i = 0; i < dfi->variant->num_clks; i++)
>  			dfi->clocks[i].id = dfi->variant->clk_names[i];
>  
> -		ret = devm_clk_bulk_get(dev, dfi->variant->num_clks,
> -					dfi->clocks);
> +		if (dfi->variant->clocks_optional)
> +			ret = devm_clk_bulk_get_optional(dev, dfi->variant->num_clks,
> +							 dfi->clocks);
> +		else
> +			ret = devm_clk_bulk_get(dev, dfi->variant->num_clks,
> +						dfi->clocks);
>  		if (ret)
>  			return dev_err_probe(dev, ret, "failed to get clocks\n");
>  	}
> 


-- 
Best Regards,
Chanwoo Choi
Principal Engineer, Samsung Electronics

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

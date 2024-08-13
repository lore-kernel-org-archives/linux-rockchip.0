Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01992C52D7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Aug 2024 11:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNPB3tlr119n+RTXycZ56fsAmz9Th9Mc9Tx4NMHoYBc=; b=H9HXKNG/DHTxMI
	WwlJg/POJwMfMNG5tOb9fjCbtVqbuir9lvezQITB44MKhOw1lKlCEehG0cHv3nCgVoIB6J+aJTdjf
	SWnwrBN+vvnNl+5wUVwCC1Cin4leaGd0YD3MqGu+K6bDXEEVMdrztw1FvZ+TGdCmEHoe7MCTnbLhn
	esXkeifeh1Om9dRzM/eGQDiVH+UreHKl+VrAuC11AtNdfevTuA1jcQxTxySKxjQ8FmO51vet3TK3g
	8QiTRgVZpX5hWzuljo++ls9wSzE9HF3rtQfblT8c00GADJHu8QP48+ubuZlQfS0ZjumUojJADXE4Q
	SiAfThHn6pCz83gPqXBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdq9o-00000003arT-2HfM;
	Tue, 13 Aug 2024 11:57:44 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdq9j-00000003aqI-2Hyf
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Aug 2024 11:57:41 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-70d2b921c48so4050455b3a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Aug 2024 04:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1723550258; x=1724155058; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TXj6YrMtJ0gWFTWAL5SUSyJeDfI3jpHl1jV8Ck1Ub5w=;
        b=MiPaJ0CMiAsoxaJskzbkwXSRjNRk9P982RWpcdXb7JJzV3sGUIRuS9DkENMKHa040u
         Ir5sMOuw/TA/EuKeSBncdeRkjkr4FWpFcT/wNvL8JzlxRQPwTUIi8KDIQgF33E+9HL1k
         IE3QoKRz5qZCesuI0yUlf9GttpkCuKXvnHSEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723550258; x=1724155058;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TXj6YrMtJ0gWFTWAL5SUSyJeDfI3jpHl1jV8Ck1Ub5w=;
        b=Zi8P7V//o12vUYc3Md6MdyBQfDnVjt37S7r1If4ujmE3ZS78Ty4QmQgKyrfeUTTix7
         WDRG4aGI1fEvs+9l4/FKMXrmmqqmVPJ30nR8lrTIJ019sRWmOvYgEp1zzz3vZ2W48nax
         AE6T7qFZOlsMHMcmLcYNqXkNddbkWcCA/69r8LoWHD4k29g6DmS9WnDz9T9NZt7Vgor6
         mJO5gcGJ3Q8uLHS6Rwi/82GEYkUxxaQDNvOt77aWAg5UJbWEnfK13QzSgdDVlPYkW49s
         69QywX7M8Y2HE1F4ENcHyc2hzQI3BglCahqSExlUwgdBzA7+CSxr/8rK7XmJSLGO0zQ5
         bQWw==
X-Forwarded-Encrypted: i=1; AJvYcCWWugAtZ65DMYzng7QJPdA3MgjJUAWLaqisucwxXhttAKB9+ScQTzG3G+mVLSjS0yGhYWu/vprW+YfrFIDcow==@lists.infradead.org
X-Gm-Message-State: AOJu0YzwYMSaPISiy32r/e5at3n3+e8SGipiQ5jPqLum2MjJ31avx7Og
	DqhYuedJHNAJMWm42kqqrYUx4RzuWvogUhc2vxvWSL44L0Q3gDEbta24liJ9GQ==
X-Google-Smtp-Source: AGHT+IFf7r4+eaG8ovXNz7tpTkFz5zRThgMupBmEqRawhnukS/bBcfpuDdGfM7AGPHQVhuvowwJO2w==
X-Received: by 2002:a17:903:2345:b0:1fb:3b61:45aa with SMTP id d9443c01a7336-201ca1c0803mr35625745ad.40.1723550257889;
        Tue, 13 Aug 2024 04:57:37 -0700 (PDT)
Received: from [192.168.178.137] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201cd132895sm12031645ad.9.2024.08.13.04.57.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2024 04:57:37 -0700 (PDT)
Message-ID: <721da64c-42ec-4be6-8ad3-e2685a84823a@broadcom.com>
Date: Tue, 13 Aug 2024 13:57:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
To: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org,
 krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, conor+dt@kernel.org
Cc: efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 megi@xff.cz, duoming@zju.edu.cn, bhelgaas@google.com,
 minipli@grsecurity.net, brcm80211@lists.linux.dev,
 brcm80211-dev-list.pdl@broadcom.com, nick@khadas.com,
 Sai Krishna <saikrishnag@marvell.com>
References: <20240813082007.2625841-1-jacobe.zang@wesion.com>
 <20240813082007.2625841-5-jacobe.zang@wesion.com>
Content-Language: en-US
From: Arend van Spriel <arend.vanspriel@broadcom.com>
Autocrypt: addr=arend.vanspriel@broadcom.com; keydata=
 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
In-Reply-To: <20240813082007.2625841-5-jacobe.zang@wesion.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_045739_616340_2ACF7A49 
X-CRM114-Status: GOOD (  22.58  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 8/13/2024 10:20 AM, Jacobe Zang wrote:
> WiFi modules often require 32kHz clock to function. Add support to
> enable the clock to PCIe driver and move "brcm,bcm4329-fmac" check
> to the top of brcmf_of_probe. Change function prototypes from void
> to int and add appropriate errno's for return values that will be
> send to bus when error occurred.

I was going to say it looks good to me, but....

> Co-developed-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Co-developed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
> Signed-off-by: Arend van Spriel <arend.vanspriel@broadcom.com>
> Reviewed-by: Sai Krishna <saikrishnag@marvell.com>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
>   .../broadcom/brcm80211/brcmfmac/bcmsdh.c      |  4 +-
>   .../broadcom/brcm80211/brcmfmac/common.c      |  3 +-
>   .../wireless/broadcom/brcm80211/brcmfmac/of.c | 53 +++++++++++--------
>   .../wireless/broadcom/brcm80211/brcmfmac/of.h |  9 ++--
>   .../broadcom/brcm80211/brcmfmac/pcie.c        |  3 ++
>   .../broadcom/brcm80211/brcmfmac/sdio.c        | 22 +++++---
>   .../broadcom/brcm80211/brcmfmac/usb.c         |  3 ++
>   7 files changed, 61 insertions(+), 36 deletions(-)

[...]

> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> index e406e11481a62..f19dc7355e0e8 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c

[...]

> @@ -113,33 +118,39 @@ void brcmf_of_probe(struct device *dev, enum brcmf_bus_type bus_type,
>   		of_node_put(root);
>   	}
>   
> -	if (!np || !of_device_is_compatible(np, "brcm,bcm4329-fmac"))
> -		return;
> -
>   	err = brcmf_of_get_country_codes(dev, settings);
>   	if (err)
>   		brcmf_err("failed to get OF country code map (err=%d)\n", err);
>   
>   	of_get_mac_address(np, settings->mac);
>   
> -	if (bus_type != BRCMF_BUSTYPE_SDIO)
> -		return;
> +	if (bus_type == BRCMF_BUSTYPE_SDIO) {

Don't like the fact that this now has an extra indentation level and it 
offers no extra benefit. Just keep the original if-statement and return 
0. Consequently the LPO clock code should move just before the if-statement.

> +		if (of_property_read_u32(np, "brcm,drive-strength", &val) == 0)
> +			sdio->drive_strength = val;
>   
> -	if (of_property_read_u32(np, "brcm,drive-strength", &val) == 0)
> -		sdio->drive_strength = val;
> +		/* make sure there are interrupts defined in the node */
> +		if (!of_property_present(np, "interrupts"))
> +			return 0;
>   
> -	/* make sure there are interrupts defined in the node */
> -	if (!of_property_present(np, "interrupts"))
> -		return;
> +		irq = irq_of_parse_and_map(np, 0);
> +		if (!irq) {
> +			brcmf_err("interrupt could not be mapped\n");
> +			return 0;
> +		}
> +		irqf = irqd_get_trigger_type(irq_get_irq_data(irq));
> +
> +		sdio->oob_irq_supported = true;
> +		sdio->oob_irq_nr = irq;
> +		sdio->oob_irq_flags = irqf;
> +	}
>   
> -	irq = irq_of_parse_and_map(np, 0);
> -	if (!irq) {
> -		brcmf_err("interrupt could not be mapped\n");
> -		return;
> +	clk = devm_clk_get_optional_enabled(dev, "lpo");
> +	if (!IS_ERR_OR_NULL(clk)) {
> +		brcmf_dbg(INFO, "enabling 32kHz clock\n");
> +		return clk_set_rate(clk, 32768);
> +	} else {
> +		return PTR_ERR_OR_ZERO(clk);
>   	}

Change this to:

 > +	clk = devm_clk_get_optional_enabled(dev, "lpo");
 > +	if (IS_ERR_OR_NULL(clk)) {
 > +		return PTR_ERR_OR_ZERO(clk);
 > +	}
 > +	brcmf_dbg(INFO, "enabling 32kHz clock\n");
 > +	clk_set_rate(clk, 32768);

As said above this should be moved before the if-statement:

 > -	if (bus_type != BRCMF_BUSTYPE_SDIO)
 > -		return 0;

> -	irqf = irqd_get_trigger_type(irq_get_irq_data(irq));
>   
> -	sdio->oob_irq_supported = true;
> -	sdio->oob_irq_nr = irq;
> -	sdio->oob_irq_flags = irqf;
> +	return 0;
>   }

[...]


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

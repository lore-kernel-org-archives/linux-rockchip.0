Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBD08C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 18:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMOZGDykfuJC3/Bj2EPuDy4EnUUadtexYSrPAqkPiAY=; b=lAXX8BlIADqacD
	+JaJ5MnwGeQBJx1+eCGkaXXnSZreaQgEND7rBTm+NxcsP5JU6HacpdlfbodzpU4Cle1As/tVJaipZ
	OInlQV9byrX8vEGtDKzaX6E4vuS8QOPfJN6YlZW9qtJuOvrxeQgzaxm16bOnEdvclG2HOivCNe470
	7RAxsHk7YEgN8mX0xBZRHaGaMx/A42UNomBABbUupoYZXlxQEQoIwMmFSHxmJG/0B6FajZaVcSy/W
	rU14Wj5NyCkIqMNPY3rgwbPfpNQARP5sCgrhk7l6C8D1odMg9u/nmRnG9bRwCArjZplmzNuwfrF87
	636tcJKeZWA1pFz5vtnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYrsI-0000000GBUO-24Db;
	Tue, 30 Jul 2024 18:47:06 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYrrp-0000000GBOT-2fiG
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jul 2024 18:46:39 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a7aa212c1c9so670598666b.2
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Jul 2024 11:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722365195; x=1722969995; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ewzcNpdrX/YDyXLlaNSEGqi6c+PmGRbMmQlZH3a66BY=;
        b=OS5Pbsm0pT5AfWELnH9j4B1dpg675PjBfO+wX05CpMoM4qTBoL7jSKvKLl8kK5yL7O
         5XD4hozU0fJC4TcO0TIssWH/z9lJVjdP6n100ekNyBHYIaSDOD13JFaQCZWUWP70f7iw
         zwPSwi6/Xs5yFv6zifkXzv5lxxR2dTdOjuLQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722365195; x=1722969995;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ewzcNpdrX/YDyXLlaNSEGqi6c+PmGRbMmQlZH3a66BY=;
        b=eR2XAZxz+Y7AgWa4uJrNPmQaUa3rkKkxyltYqcIVOd+VmvYGwV3W/umdtXlw4GTw3M
         2nu0HP0cekWB7uxfORE5mGNhbmZmm2m2becdXOsSb/HiACZHBy5kc6F5L8xgAH/k3H9L
         LkXJHOd70f4GtiTKzAzeREcjm2UHLeqLFZx9nXiEZXb0Ldtw7/438wFq85YW9jAgdLIb
         xs+ogYq59cNZYOwOYp2/C9dI+zW4axl02N8Z9gf6rq4nFJmjWqTQ/XVSQZ2WwiaYeZuN
         lw7G93YD54VOgeEUxP0GFmSkAeahxnu45opNsDCLalZgvR5At7lQMJWw/s7R/o1onjpH
         wC6g==
X-Forwarded-Encrypted: i=1; AJvYcCUaX3JdZ0MzY1f9B1QSwF8J2os0R1F1OpCa2/0ijyXPubYBCiHC0/FpfCbv6S8bTDYklVKBMRCFo/hpDRX7tCaBO5hffrREI2WRIFw6e0UcGUhU
X-Gm-Message-State: AOJu0YzUAgLLXIPl6lKuLoIsCXL+6k4ayTKp0SHfXh27RPVGOra8Az/6
	LFqKRPednTq3fLx0TUfAL85Zr5UPkBuUahkemyVAYHYlu9x1YjNq5Z2gai5/fg==
X-Google-Smtp-Source: AGHT+IFpWHmaQN85R+Wta1GB7iids5DyYMnk0X4+ZOhcSYxAG6UsJ8zaLoWK3Gch55aQ8SBn5NA5KA==
X-Received: by 2002:a17:907:728e:b0:a77:bfca:da57 with SMTP id a640c23a62f3a-a7d401769bfmr900653666b.44.1722365194902;
        Tue, 30 Jul 2024 11:46:34 -0700 (PDT)
Received: from [192.168.178.137] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acab235fesm680407666b.36.2024.07.30.11.46.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jul 2024 11:46:34 -0700 (PDT)
Message-ID: <35321e96-2cbf-47fa-bf0a-fe658f3751bb@broadcom.com>
Date: Tue, 30 Jul 2024 20:46:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/5] wifi: brcmfmac: Add optional lpo clock enable
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
 brcm80211-dev-list.pdl@broadcom.com, nick@khadas.com
References: <20240730033053.4092132-1-jacobe.zang@wesion.com>
 <20240730033053.4092132-5-jacobe.zang@wesion.com>
Content-Language: en-US
From: Arend van Spriel <arend.vanspriel@broadcom.com>
Autocrypt: addr=arend.vanspriel@broadcom.com; keydata=
 xsFNBGP96SABEACfErEjSRi7TA1ttHYaUM3GuirbgqrNvQ41UJs1ag1T0TeyINqG+s6aFuO8
 evRHRnyAqTjMQoo4tkfy21XQX/OsBlgvMeNzfs6jnVwlCVrhqPkX5g5GaXJnO3c4AvXHyWik
 SOd8nOIwt9MNfGn99tkRAmmsLaMiVLzYfg+n3kNDsqgylcSahbd+gVMq+32q8QA+L1B9tAkM
 UccmSXuhilER70gFMJeM9ZQwD/WPOQ2jHpd0hDVoQsTbBxZZnr2GSjSNr7r5ilGV7a3uaRUU
 HLWPOuGUngSktUTpjwgGYZ87Edp+BpxO62h0aKMyjzWNTkt6UVnMPOwvb70hNA2v58Pt4kHh
 8ApHky6IepI6SOCcMpUEHQuoKxTMw/pzmlb4A8PY//Xu/SJF8xpkpWPVcQxNTqkjbpazOUw3
 12u4EK1lzwH7wjnhM3Fs5aNBgyg+STS1VWIwoXJ7Q2Z51odh0XecsjL8EkHbp9qHdRvZQmMu
 Ns8lBPBkzpS7y2Q6Sp7DcRvDfQQxPrE2sKxKLZVGcRYAD90r7NANryRA/i+785MSPUNSTWK3
 MGZ3Xv3fY7phISvYAklVn/tYRh88Zthf6iDuq86m5mr+qOO8s1JnCz6uxd/SSWLVOWov9Gx3
 uClOYpVsUSu3utTta3XVcKVMWG/M+dWkbdt2KES2cv4P5twxyQARAQABzS9BcmVuZCB2YW4g
 U3ByaWVsIDxhcmVuZC52YW5zcHJpZWxAYnJvYWRjb20uY29tPsLBhwQTAQgAMRYhBLX1Z69w
 T4l/vfdb0pZ6NOIYA/1RBQJj/ek9AhsDBAsJCAcFFQgJCgsFFgIDAQAACgkQlno04hgD/VGw
 8A//VEoGTamfCks+a12yFtT1d/GjDdf3i9agKMk3esn08JwjJ96x9OFFl2vFaQCSiefeXITR
 K4T/yT+n/IXntVWT3pOBfb343cAPjpaZvBMh8p32z3CuV1H0Y+753HX7gdWTEojGWaWmKkZh
 w3nGoRZQEeAcwcF3gMNwsM5Gemj7aInIhRLUeoKh/0yV85lNE1D7JkyNheQ+v91DWVj5/a9X
 7kiL18fH1iC9kvP3lq5VE54okpGqUj5KE5pmHNFBp7HZO3EXFAd3Zxm9ol5ic9tggY0oET28
 ucARi1wXLD/oCf1R9sAoWfSTnvOcJjG+kUwK7T+ZHTF8YZ4GAT3k5EwZ2Mk3+Rt62R81gzRF
 A6+zsewqdymbpwgyPDKcJ8YUHbqvspMQnPTmXNk+7p7fXReVPOYFtzzfBGSCByIkh1bB45jO
 +TM5ZbMmhsUbqA0dFT5JMHjJIaGmcw21ocgBcLsJ730fbLP/L08udgWHywPoq7Ja7lj5W0io
 ZDLz5uQ6CEER6wzD07vZwSl/NokljVexnOrwbR3wIhdr6B0Hc/0Bh7T8gpeM+QcK6EwJBG7A
 xCHLEacOuKo4jinf94YQrOEMnOmvucuQRm9CIwZrQ69Mg6rLn32pA4cK4XWQN1N3wQXnRUnb
 MTymLAoxE4MInhDVsZCtIDFxMVvBUgZiZZszN33OwU0EY/3pIgEQAN35Ii1Hn90ghm/qlvz/
 L+wFi3PTQ90V6UKPv5Q5hq+1BtLA6aj2qmdFBO9lgO9AbzHo8Eizrgtxp41GkKTgHuYChijI
 kdhTVPm+Pv44N/3uHUeFhN3wQ3sTs1ZT/0HhwXt8JvjqbhvtNmoGosZvpUCTwiyM1VBF/ICT
 ltzFmXd5z7sEuDyZcz9Q1t1Bb2cmbhp3eIgLmVA4Lc9ZS3sK1UMgSDwaR4KYBhF0OKMC1OH8
 M5jfcPHR8OLTLIM/Thw0YIUiYfj6lWwWkb82qa4IQvIEmz0LwvHkaLU1TCXbehO0pLWB9HnK
 r3nofx5oMfhu+cMa5C6g3fBB8Z43mDi2m/xM6p5c3q/EybOxBzhujeKN7smBTlkvAdwQfvuD
 jKr9lvrC2oKIjcsO+MxSGY4zRU0WKr4KD720PV2DCn54ZcOxOkOGR624d5bhDbjw1l2r+89V
 WLRLirBZn7VmWHSdfq5Xl9CyHT1uY6X9FRr3sWde9kA/C7Z2tqy0MevXAz+MtavOJb9XDUlI
 7Bm0OPe5BTIuhtLvVZiW4ivT2LJOpkokLy2K852u32Z1QlOYjsbimf77avcrLBplvms0D7j6
 OaKOq503UKfcSZo3lF70J5UtJfXy64noI4oyVNl1b+egkV2iSXifTGGzOjt50/efgm1bKNkX
 iCVOYt9sGTrVhiX1ABEBAAHCwXYEGAEIACAWIQS19WevcE+Jf733W9KWejTiGAP9UQUCY/3p
 PgIbDAAKCRCWejTiGAP9UaC/EACZvViKrMkFooyACGaukqIo/s94sGuqxj308NbZ4g5jgy/T
 +lYBzlurnFmIbJESFOEq0MBZorozDGk+/p8pfAh4S868i1HFeLivVIujkcL6unG1UYEnnJI9
 uSwUbEqgA8vwdUPEGewYkPH6AaQoh1DdYGOleQqDq1Mo62xu+bKstYHpArzT2islvLdrBtjD
 MEzYThskDgDUk/aGPgtPlU9mB7IiBnQcqbS/V5f01ZicI1esy9ywnlWdZCHy36uTUfacshpz
 LsTCSKICXRotA0p6ZiCQloW7uRH28JFDBEbIOgAcuXGojqYx5vSM6o+03W9UjKkBGYFCqjIy
 Ku843p86Ky4JBs5dAXN7msLGLhAhtiVx8ymeoLGMoYoxqIoqVNaovvH9y1ZHGqS/IYXWf+jE
 H4MX7ucv4N8RcsoMGzXyi4UbBjxgljAhTYs+c5YOkbXfkRqXQeECOuQ4prsc6/zxGJf7MlPy
 NKowQLrlMBGXT4NnRNV0+yHmusXPOPIqQCKEtbWSx9s2slQxmXukPYvLnuRJqkPkvrTgjn5d
 eSE0Dkhni4292/Nn/TnZf5mxCNWH1p3dz/vrT6EIYk2GSJgCLoTkCcqaM6+5E4IwgYOq3UYu
 AAgeEbPV1QeTVAPrntrLb0t0U5vdwG7Xl40baV9OydTv7ghjYZU349w1d5mdxg==
In-Reply-To: <20240730033053.4092132-5-jacobe.zang@wesion.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_114637_701750_E09A28B5 
X-CRM114-Status: GOOD (  15.46  )
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



On 7/30/2024 5:30 AM, Jacobe Zang wrote:
> WiFi modules often require 32kHz clock to function. Add support to
> enable the clock to PCIe driver.
> 
> Co-developed-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
>   drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> index e406e11481a62..6246e3fd7399f 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c
> @@ -6,6 +6,7 @@
>   #include <linux/of.h>
>   #include <linux/of_irq.h>
>   #include <linux/of_net.h>
> +#include <linux/clk.h>
>   
>   #include <defs.h>
>   #include "debug.h"
> @@ -70,6 +71,7 @@ void brcmf_of_probe(struct device *dev, enum brcmf_bus_type bus_type,
>   {
>   	struct brcmfmac_sdio_pd *sdio = &settings->bus.sdio;
>   	struct device_node *root, *np = dev->of_node;
> +	struct clk *clk;
>   	const char *prop;
>   	int irq;
>   	int err;
> @@ -113,6 +115,12 @@ void brcmf_of_probe(struct device *dev, enum brcmf_bus_type bus_type,
>   		of_node_put(root);
>   	}
>   
> +	clk = devm_clk_get_optional_enabled(dev, "lpo");
> +	if (!IS_ERR_OR_NULL(clk)) {
> +		brcmf_dbg(INFO, "enabling 32kHz clock\n");
> +		clk_set_rate(clk, 32768);
> +	}
> +
>   	if (!np || !of_device_is_compatible(np, "brcm,bcm4329-fmac"))
>   		return;

This if-statement should be the first check in brcmf_of_probe(). Can you 
include that change in your patch.

Regards,
Arend

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

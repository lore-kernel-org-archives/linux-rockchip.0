Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16035D29DE4
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 08:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6PXbw4npPYXyZwOPWn4iUN/N9FPvQ9zUJjaf7VxxM8=; b=kJJ3NYo0ZSUDOW
	hLiZ8pJapRLH6h4MgD6dylzIOa8LwF8a3P/Qfbj1OAmBIQVE2fz3k7q5UhZQhXtAv5EtDvKdCWzEo
	ncU5ZstnxzjcI5jcwPv7N43g4TRcNxgDF4yPKEv9BAQlfy13/0wb7RWc6DlxVDnYF0WNQzxevlVSI
	l0KB4vyPNjJ/UY1psUMJ01kd/f3DL168TVHLzGZF1o7Cy9qabRLXcPgPxhvfxKFDnXiJLFBiLDgr7
	hvzcVl4gkdzj11sX5bC84lwKJtE4O7MxxoMETBYu+wWcMqHKfBTbvm/GLDUtzPVIFNFgXJa9TFn2n
	O/G06etyAQl8OYRWTWOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZQv-00000006hmO-0L5c;
	Tue, 13 Jan 2026 08:07:21 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZQr-00000006hkr-2ugr
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 08:07:19 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-432da746749so1927650f8f.0
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Jan 2026 00:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768291636; x=1768896436; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0kBiGdnwoKI9eDWcWQTGe4djU3SzpP0pSq/NoI+kjks=;
        b=PX9lqE+6/Eic2peFKr8JIKcgNrEnGBlU16dJquBDrktSEA01VCpf4vRAwAoQljNwL7
         fxQTXa/hbzJUyjYbJ+iASuzu2+Qjrgj3gORd0pg+cPujAN8Bprci6jVlpk5Z1hBCA1wK
         xq0SWh3yCNGGmRcPzMwYiub6kgSiYYM6T55dKVo9KrEcw1whOU/aMWcxS4ff7VV6LzLc
         hnB2TE6DzkXcIqvRkph2MPdCwdwXS4geqcza6lTrPFUam9BewiJyWAorkt3O/mm8C/ld
         ZTcOEKEbkZJ/+5iDIPPXIXqW+QvtSY4DY/Q09PdY6E+viiZAJ+x54k+mUKuJxcyA3tgH
         ScOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768291636; x=1768896436;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0kBiGdnwoKI9eDWcWQTGe4djU3SzpP0pSq/NoI+kjks=;
        b=jSceC/Q0r51oM+ySlh2MER+2MmoLWzaMlyLGXU8RM6z73kiWH/cbc7zEgx5MxMrsw6
         4D4BnzyDL6dN6af61mVjd6342Qb3hwLGk3Z+m73FcbhUv+1oki0RLTbLw9z9klWaIOau
         N7vjL5UwOCjkBK7UiYnEPfE62wEGh0sd9EHgBwc0a2OsuySRuUS4QWz5vdWf3tHCf7u+
         esL7mim8XFm1i8HPAziSJokyIV1wHDY/Y3v8VO4qnhfXE48qy4U2Cgm631PCp1eH9zXJ
         1Ug+06Z9gi2pCRKV5qhNKX2nR8ljF5Gw/hqWceAHDar3ARKgLZ7q2//17AeCpkKX8ele
         4f2A==
X-Forwarded-Encrypted: i=1; AJvYcCW+uHINZjXNeM01gIVWHITMkG9xkKXcGZnEboz88xqiQp2vKJOdDPl/8Gg4iy7ZbwFNtlwhPkJfUzlV1wRHvA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxnrBXjpYa3dBdzjabsbIzNdRt32GsBsMNUU1/KC6nPLrhemMJP
	9q2OeKgYTmBDx4RXR06eiSU1rKP7w0CS2cNXd22AQ2+M6IQVzICPmXeKBx86E33QBrA=
X-Gm-Gg: AY/fxX5bUGM9N8Svh2JAycOOH4J7Npjfijyr3MhmMK+ISB8SgLsh1omPwAiMhd/B1hO
	mAimGj9p+yVRGw5meO5M72w3WcKm1ERvSTbqeKll1MPi4VHTR7w87Fghl08a1p29KRTDmbVExuY
	dkAU/oSJrAFzk5TnvfMsKpciA9Um7azGxKoqirZCfu2h2mSpYVucR+Udr5CFvXitKtcLZCAc9GU
	uW2rF/+Gi4DV4IpC21NWbfUrEkf5vo8EvHJeUzTLXdBKrF1AY/uaf7jSWhgK7KeQmypVxzNPj0T
	7zZNTSr6NMJea8C/XJ+rt8Ap2X6WBB/E3nhC7rr3DqfyZcGz3Rl1IQwBCXe5e0+Lc9M/b1w7gL5
	ElVFl0bC28J095r023h8tkkSyCA4ZSi9Kt507YFRaS1c6Frg3mbHlEjrdbbtYVeFQDG+Wl/cvRZ
	50KlmHmrtW4Ta0EmF2ABj3PAW3rDVbHnqk4s5cbENbXOuw3/2pJQ==
X-Google-Smtp-Source: AGHT+IG6fAtmI1EQMhuKQOIVw+wGIFjBkyZewLv2jXMLbnUnN9fabCWnKyTIrO9pUyyRVG2gO/7/VA==
X-Received: by 2002:a05:6000:178d:b0:432:8537:8592 with SMTP id ffacd0b85a97d-432c3628106mr24027748f8f.4.1768291635424;
        Tue, 13 Jan 2026 00:07:15 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080::fa42:7768? ([2a01:e0a:3d9:2080::fa42:7768])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0e180csm41710261f8f.10.2026.01.13.00.07.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 00:07:14 -0800 (PST)
Message-ID: <2f18dda9-7163-44bf-a075-bdd46ac5cef8@linaro.org>
Date: Tue, 13 Jan 2026 09:07:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: rockchip: inno-usb2: Fix a double free bug in
 rockchip_usb2phy_probe()
To: Wentao Liang <vulab@iscas.ac.cn>, vkoul@kernel.org, kishon@kernel.org,
 heiko@sntech.de
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 stable@vger.kernel.org
References: <20260109154626.2452034-1-vulab@iscas.ac.cn>
From: Neil Armstrong <neil.armstrong@linaro.org>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20260109154626.2452034-1-vulab@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_000717_765752_943A4D01 
X-CRM114-Status: GOOD (  17.53  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 1/9/26 16:46, Wentao Liang wrote:
> The for_each_available_child_of_node() calls of_node_put() to
> release child_np in each success loop. After breaking from the
> loop with the child_np has been released, the code will jump to
> the put_child label and will call the of_node_put() again if the
> devm_request_threaded_irq() fails. These cause a double free bug.
> 
> Fix by returning directly to avoid the duplicate of_node_put().
> 
> Fixes: ed2b5a8e6b98 ("phy: phy-rockchip-inno-usb2: support muxed interrupts")
> Cc: stable@vger.kernel.org
> Signed-off-by: Wentao Liang <vulab@iscas.ac.cn>
> 
> ---
> Changes in v2:
> - Drop error jumping label.
> ---
>   drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index b0f23690ec30..fe97a26297af 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1491,7 +1491,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>   						rphy);
>   		if (ret) {
>   			dev_err_probe(rphy->dev, ret, "failed to request usb2phy irq handle\n");
> -			goto put_child;
> +			return ret;
>   		}
>   	}
>   

Good catch !

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E460CF2599
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 08:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIxzp3iO3xTtYvT+JC6Xzv+ZprXCQHO0ScSXlbqDqec=; b=VmLsI18UDEXwI0
	IR5bWdf8LHvDBRJCLJDWBeNvJHLsIVxE/89PusaTZrLWWU0APrwZHw5XQEyPG7yq9f2o14iekI2Z4
	97olILDZgnr7/7n5GP9pa8kLfcRu1+mSKRGKRnWII46/bd5wzJtjaiF4gNEt/k6zm7a+LULWfZYTH
	fHmuSzcnJwprQXNl9tZezSuqF29JW0oLkyelMlFAOhoFJimKskhNyDV6gcaWJMX74wtAhiBsKYqCF
	4J/04nREXjSmmwkdB1M2pIVc/rCLzNkcUtryIyAsF915XyC0U2iTbJUDucEHGgPFcSte9F0Y5B7OH
	OxGfLZqTS9PcHSA+pE1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdVV-00000002mvi-1LNa;
	Wed, 19 Nov 2025 08:25:41 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdVS-00000002muV-2U04
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 08:25:40 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-42b2dc17965so5196363f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Nov 2025 00:25:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763540737; x=1764145537; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xBBcd3+nheVdQUVhqxqKoLH5dFTFqo2xtG50pxJYM/k=;
        b=URT/sys9RL2TqxsBspGP19AqkblJtZZUIYi0gL9bcoH6bPwfRev/2sDqgBcA2k89EB
         zNgHfKkuiqOHyfBynCkHi4GXI2c1004FqviB+m7FTbGveSHj2yNOZ18PH3BSy03N31u3
         GqpW2ntzCRWGlou1dv4saNzThTfdtXOhxhwhjuijdioj/L/W277ktOvo9mOffnHRVCyv
         X1W9nI0XuIPC73W+h1PXTGpCB3dwWcgpPZR8fFzE21njE+2Xevf2nMD8MU9eR2X0r7dP
         DpoFK+xruazZ4GZRFiQNu55XGfXbzjQYKf8oaf7hw37a5w7bNmm1IjwVdHbCO2cL9LYh
         G8uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763540737; x=1764145537;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xBBcd3+nheVdQUVhqxqKoLH5dFTFqo2xtG50pxJYM/k=;
        b=Kf3JOFL+Dr1Yn+2yATMziEB66rKAGUVkq40kVSlCOGGmTwftZf38nQA/btN5/wAmtc
         ZSO3wxX2JoyzC1w8lG2Q8FqRfyGFgdQAIr/L0Pr8urFUyFk4bdVVtRqF/QMd4p4ldtMk
         ULhwXhvKbwv7jb6SdjWAM8wv0yuPx7Y4R8/08wX49Vom2kHsuU83Ma55BFI9qmFY8xOa
         NsJFJuVki5pPWHd/WRj8r3F3YbPO6vF4KMHM+NQsE5srhx8PTsSCD1tRlqTe3txqIrFH
         WUQ6wvO3s8SLWfQLFEf4fB6uMfSjS/ib8+eWHQn0rT5rFubbS5fqvUaXy0adbZdTaeT9
         GQPg==
X-Forwarded-Encrypted: i=1; AJvYcCX18+hVatBEg47CBtXvAhcNPRghvVjjYkq/MtmNo1/CnpiiJH6TXgg6M0EFAZvPI9IjoA8m8AkNNdmXYUKVKA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyfk0+63bCs+7DhPJ3XS0sBAkrroFTbO7r8Q67ku90fuqm3x6cr
	xwsrCdtCXPIs0CL7wfRmH3URRsOgVCsJSsVQPkoDq/M4yzEPbZ0T6eU0Nd/M7EzSCWo=
X-Gm-Gg: ASbGncs6bcnV/keqGsxwzTcByUa8p4sVMrFks3g+ZgkP/mobOWs1dgNnr4f1MARP9OF
	FsbBkoehu6EjVHj/Di8BosCtkC11HsMnXh2M7m5vx0p1t1v258SywCDhQg7uvHdVPnNFhR1815I
	13lff0MmbU2M5DpKWGv4g1KpXEBYM8sUz1BF3bm0X3GnXiutRclIs4UXZrBAX8VobgVJFk6m3ba
	1R/XXgz0b/6TqxijJr+5a1te4KGVKysPZVEidARY2djGMB6bQENOdq6ZQeZPPlSQIq6UPh2tXZW
	W12stGXd7hUnXFMzMeJy+qYXlmzOLF5rBQtgAEXVhwhVkEo5fCNVeVZqX630Xhcb0xdxmwYjPrO
	xbW+jZcZE2xswPTNAUXZxprN0S15BFF6XgDq/+bQLSyGzFS32n1k5xxadCQV1mnO1C+S+VgS8Ms
	BhcS7FE4tLduyzn8ffy9V2fHySURLSjKTd94jAxggT/TghRUhZH6tZQ3ibrHj5v9o=
X-Google-Smtp-Source: AGHT+IF/Pf8OhHHAkH/l86ffTNQDrKGEqlTVtrpGBWQTevcyQWVHh3qnGd6Me/o5osf1E2M94f66fw==
X-Received: by 2002:a05:6000:24c7:b0:42b:3dbe:3a43 with SMTP id ffacd0b85a97d-42b5938fa99mr18992058f8f.50.1763540736555;
        Wed, 19 Nov 2025 00:25:36 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad? ([2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e846afsm35816408f8f.13.2025.11.19.00.25.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 00:25:36 -0800 (PST)
Message-ID: <25e9e2ae-d280-4022-8c8a-41df5009011a@linaro.org>
Date: Wed, 19 Nov 2025 09:25:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 0/3] Fixes for phy-rockchip-samsung-hdptx
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Dmitry Baryshkov <lumag@kernel.org>,
 Algea Cao <algea.cao@rock-chips.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>
References: <20251028-phy-hdptx-fixes-v1-0-ecc642a59d94@collabora.com>
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
In-Reply-To: <20251028-phy-hdptx-fixes-v1-0-ecc642a59d94@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_002538_657028_55178D4E 
X-CRM114-Status: GOOD (  10.74  )
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

On 10/28/25 09:00, Cristian Ciocaltea wrote:
> These patches were initially part of the HDMI 2.1 FRL support series [1]
> aiming to provide a few fixes for the Samsung HDMI/eDP Transmitter Combo
> PHY.
> 
> I'm sending this as a distinct series right now, since the FRL part
> might require additional time for review.
> 
> [1] https://lore.kernel.org/r/20250818-phy-hdptx-frl-v3-0-c79997d8bb2b@collabora.com
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
> Cristian Ciocaltea (3):
>        phy: rockchip: samsung-hdptx: Fix reported clock rate in high bpc mode
>        phy: rockchip: samsung-hdptx: Reduce ROPLL loop bandwidth
>        phy: rockchip: samsung-hdptx: Prevent Inter-Pair Skew from exceeding the limits
> 
>   drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 27 +++++++++++++----------
>   1 file changed, 15 insertions(+), 12 deletions(-)
> ---
> base-commit: 33bcf93b9a6b028758105680f8b538a31bc563cf
> change-id: 20250902-phy-hdptx-fixes-7308ffea4c6a

For the serie:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

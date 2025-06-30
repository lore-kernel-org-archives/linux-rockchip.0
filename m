Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57C14C7EE39
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 08:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TuQiu4vgSlwuosHCzrtlmqJZHqDIGJmLlJyzaiSINfI=; b=XLMyxBqtQGRJF/vX/f+uEnVHjc
	XcfrFHsBW5DEcS37cPwJm8xeFhrOCyNHFSYBUDcRTkwuRtCHOBSHFqBAvXoB+Nu/KFiXVZhmF0mpM
	wAI4pGdWzFJZEtm0EtygDAzfcbc+KuiiFC9z86Lzwkal+EC7IfRwQ9AvVFpHHOzNSEAfOEHoV9ebo
	HmSI3O06pN5vKpXP1pVGLk5e582Srt0SxMVCedvMnXqzlrY2uZwnVJehOf108HHMLVNnhsPQyu8eq
	yVRQgWKPjDK1sBklepO8HtquiT+9rDEVezX2ScbBq19KHWlTlIqRCUBlFEBNEP14Sm/V52GVt5vl+
	sk/zcFtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWAK4-00000001gDj-1Ld1;
	Mon, 30 Jun 2025 08:57:08 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWACe-00000001et7-3Qsx
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Jun 2025 08:49:30 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-451d6ade159so11659325e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Jun 2025 01:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751273367; x=1751878167; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MISBxH0XuSyXy+C/TYjaTySl9YOe1cZiATahy1hfgDM=;
        b=J4hs5uyTjqPJtakWMhDkZ02lLqZut8mdvCO3Qj7/5pUpR7NmpcJcC6PsCHCYJinbEx
         5VLumonUk4QVQmVyJmPhg6Ib5Qbh422sDeupuIra/7zvMHeVOU76YldyToeGEafBSIOd
         TlRVVUd8Mhi6R3uKfU8kvLv8L/hEqU4bCP7Clta3b4mXrtbcMRZk2ZRYJJ0oJQShcd+H
         lwydGi2M58zt1A/p2nYu7FML49TwEroyL+mSmS7bpMvOj0B7clsgAMAVhLZwuc/DYYMO
         A6AKW8RXFStvvHvoVnQ7EgQ1AHse/8LhafW47U+R5wOUjOOPMSorEw56Q10c78wSoGuv
         c5Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751273367; x=1751878167;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MISBxH0XuSyXy+C/TYjaTySl9YOe1cZiATahy1hfgDM=;
        b=NV4RUJvzqz106XLwmiSKvmnbR9+bEBBSyWQ2tt2DIzO24xmpiApXoyP7X5ZbW3u7Dm
         vXGg1/+I7MgxQ/GAAc48wRjbaNNw3hF5daN/Of8aWfc8oXClTdeU+gIKaUSNuNU3/tRG
         Om4R8E9bcj0M6iGX+pdJvJFMgWNNEuH0f3YefJ/z/r2Vb56JXxQlA9KXs6q5rTtSmt84
         LX+EAl9mVz9uQZXgNY2KfBYnASMLT/D7l13tXwL5yk+DK1WInJmh0xN0y1gNu92H2Pps
         jIVzmqptJhpLypeh3GsGugdtOZX7WWBuDHPV8SjPnBNkHRO/TK+YtgT/jz5RF3rfXJJK
         408g==
X-Forwarded-Encrypted: i=1; AJvYcCWObW/h9+yDtZi8imqbMhyFSnGHmIfgVhQB8y7xDGrRisuoV6ybmP9+FcLZQhOCcD6zQmoWiwle40rSlk6eWw==@lists.infradead.org
X-Gm-Message-State: AOJu0YybGvwRkB3ybG84+0LzwZNxOV2NHuZRwKTtaK8GDh5HpKZcmZy3
	za305YkE20Yu5HozQ4AQaIv0FrKKHKmcrdOSC+Ac6DnJBib4dHMhIndRqqAp4vlbnJaNG6nc8hV
	uSjt+pDQ=
X-Gm-Gg: ASbGncuuPmJzpF8hWadxVLuqHtVPPtmjp9TeSh9+UqeUregjTKX/omyqAXlnLy7JgsR
	pjgtPnJRKDjGKVUzL2D9FC69z8ThZ4AlmtAhxzxPSVaEZDdnqirPpibGN4zQhmlkiaOjL6JRt0n
	SFop1J0ZA+75xkil53SjPxPJgB0mbuxUBvAWCEwsul476dsJsYHYQxwM/nQ4UJvdndx5IeJ5NXZ
	beW0Pq9sSR/ZK0PcxDpLzfQ/B5KQm/p3XXvhvOykQaYsqVfoL5RomIGT7Yhse6ynluh5pTUCjeq
	9WbeuXLY8Gq8Ne56evb6JbkEh5lBH+/3xo5v2aCNmQzx9WfNM1yr1iStQ8W/RnpA4gn0nD/JJuw
	xTio7vI/way9hRRN96QzE6BbhO3LPed15r073aYM=
X-Google-Smtp-Source: AGHT+IEoOWdkiUn0oYLh3+j07RBJUY1yte0/p3yAqsDtquxOIPyV6ZkmjtiSOM06yWJQH3qb+003CA==
X-Received: by 2002:a05:600c:c172:b0:453:6183:c443 with SMTP id 5b1f17b1804b1-4538ee33209mr119959955e9.5.1751273366776;
        Mon, 30 Jun 2025 01:49:26 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:abe8:a49c:efe7:4dfb? ([2a01:e0a:3d9:2080:abe8:a49c:efe7:4dfb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a40766csm129134515e9.32.2025.06.30.01.49.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 01:49:26 -0700 (PDT)
Message-ID: <b3130adb-87e8-4c24-8267-0d5e53e363e8@linaro.org>
Date: Mon, 30 Jun 2025 10:49:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v7 4/4] phy: rockchip-pcie: Properly disable TEST_WRITE
 strobe signal
To: Geraldo Nascimento <geraldogabriel@gmail.com>,
 linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rick wertenbroek <rick.wertenbroek@gmail.com>,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1751200382.git.geraldogabriel@gmail.com>
 <60ad1985a0de0a6b47044ea9c0acefe6ff865aad.1751200382.git.geraldogabriel@gmail.com>
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
In-Reply-To: <60ad1985a0de0a6b47044ea9c0acefe6ff865aad.1751200382.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_014928_868714_F7FA8041 
X-CRM114-Status: GOOD (  12.61  )
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

On 29/06/2025 14:48, Geraldo Nascimento wrote:
> pcie_conf is used to touch TEST_WRITE strobe signal. This signal should
> be enabled, a little time waited, and then disabled. Current code clearly
> was copy-pasted and never disables the strobe signal. Adjust the define.
> While at it, remove PHY_CFG_RD_MASK which has been unused since
> 64cdc0360811 ("phy: rockchip-pcie: remove unused phy_rd_cfg function").
> 
> Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-pcie.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
> index f22ffb41cdc2..4e2dfd01adf2 100644
> --- a/drivers/phy/rockchip/phy-rockchip-pcie.c
> +++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
> @@ -30,9 +30,8 @@
>   #define PHY_CFG_ADDR_SHIFT    1
>   #define PHY_CFG_DATA_MASK     0xf
>   #define PHY_CFG_ADDR_MASK     0x3f
> -#define PHY_CFG_RD_MASK       0x3ff
>   #define PHY_CFG_WR_ENABLE     1
> -#define PHY_CFG_WR_DISABLE    1
> +#define PHY_CFG_WR_DISABLE    0
>   #define PHY_CFG_WR_SHIFT      0
>   #define PHY_CFG_WR_MASK       1
>   #define PHY_CFG_PLL_LOCK      0x10

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

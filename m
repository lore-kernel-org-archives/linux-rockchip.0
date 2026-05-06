Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3C85CD342C
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 14:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sdNjJ2yFhtknoEt27LLO9K16VGHRdwRVlc6ZjScFDd4=; b=BIqvzEYKyNVLzwp1+poEqZIjp4
	kiZuwJgNnzCSNPGc2fc8N8NjQ/uqSsScfq/vfJhgxxoH8Y0qh8PDkAKQP4uK5lB/U9iAEZUZTf2A3
	jsWa9033yw/99aA2gOPuIWTuydVnc8n8mghnisKiyhJijUKyQaunsvm9P6YyW0R99jUsZZ/l0mgPc
	JMIcDiY+hhNvYhxm2xqb5d4QrLgpItb1iOOCb5+10v0WGVmel4LYbQ/madygxci5eBEoDr83UYaop
	tzFgjFCSWn++a5GOPac/2kvXmqqzpqOzw0ldRvpXG1DRfJAhpa+QkMQhjugyT/SUjHz7q/TDSonM6
	W9IxL0pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdeR-00000001Bx0-19nq;
	Wed, 06 May 2026 14:55:03 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdeP-00000001BuP-0HG9
	for linux-rockchip@lists.infradead.org;
	Wed, 06 May 2026 14:55:01 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-43d76dd4ee8so5293265f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2026 07:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778079299; x=1778684099; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q9IziybJHuk3HSxCnNSfWSRrMnoKvg7/QyPJ8LC6HiM=;
        b=do2MoIf3mvu7DVBk9TDfFy9Kr1dalphEbbFfb4hzNPbQP/cdNsSlVQaN7YE8In3sM2
         WzLEyrmhqTmfBn5ReI4UGHO3HstSBE5bzzZrVi3mwEWtoU18aTHg48EyS2Nh7Uaqunno
         dChJ+CGSkEF349sKmtZjyp4TKqH39ZepkcXCTrZO40ztZ7D21JB7NFpC3uSB2dXlqeM/
         gWdCjCi2aP5bcW5vidMLinJuHlWk1MdKx5P4wMYQMsB+4lgKyIct9vG0KQicSiGAuNqU
         dpDu85ry9J0OBVY/WPHmzA3bTxze+IxMhQ6kqN9mTJGOdFioDl2qvEtyTFWJHBtdB3aS
         2l+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778079299; x=1778684099;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q9IziybJHuk3HSxCnNSfWSRrMnoKvg7/QyPJ8LC6HiM=;
        b=hIgMyVZ2v2U68LrEJ1n2Soed8IjbMU9uvRyu9dWzjtQ45pgtRPLyLF0pT8oui1o+lJ
         IM+0wHUHLrxMtjR0dQSpk0Z4olDbnmOnkN7k1XxX6b9l/yxR+wNH592Krtrwuj/Ui7z9
         oeRVcEKgrMUP3TN6EwnmrG135+QUIT6qXDRTyR5gG7vgY1MjFi86NB9yoldg/+9KH2Ks
         MSRC2zXnF+SO0R5nMVRqIeRXPBGD3MKJkWhvlGJwz2/G1dK8qXeSMyTdTF07Cx24ICKr
         1qZ8nvahxpmi8m2hs08P6Zqy4rMFExfsAy9L7U3wpmCaTmb000ySHxCHNVUnIPH1iilH
         38/Q==
X-Forwarded-Encrypted: i=1; AFNElJ9BV+hXlMbDDNowNAJLl2oCRtb9PVCiTS2oPvYphSObXo1Dy9z73OALoSaGMCaghCsRSKVMEZqicwgy5RvtVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyuCiTgmSS0HPVxzOTv6nzJ407TUpbGDUnaJwUZKg0ByV7lpbVO
	4A0suSkQ7TjcuKe7NEOrdpfU/NwGUs955G3GLkOFDLD5/0mdv//wdB43NLAtjiESHrI=
X-Gm-Gg: AeBDieui1NcAjQ/FyB+g73xaR7DCyxnT0bqBlQ5guMU2AzXRsnecxE5zQlLZiHZkynQ
	D7Te9WFtyhFTKcVouMkpCBARZ2WYYtrEaugdcu+2ArmCzWhaodkvYXUVy+JLtd376ZY6hd7/Lyl
	Qb1tuWy4emlTWmazEVNxbjeOq4CuJ5pSEjKJ1oPs7IHmmM0Jp6S8BXc8yjAdlEB9ruCS9jTgTqa
	HR3ywFT/Pu+WyDKzoQw3/D3D8fUZLPK5wBzKjdtMq+i3wCCjr34QOK1fuzxPFzyaDnzRsHUQUU6
	YoBcWYoyR4iwg2YQI7MiiZIA125UdgQ/RcSk8879bF1rFX2rlW8hV8+qRinj3rqCWvGEbXFxPD+
	sn/aN3oDO6UgH/Cm6lHFJYJJ1Ass9Z7vRWvef0n/RZ06EJBVpDkI9QF3IywMlhVvonikf1LfNEC
	nWglXAICeumTRuGPPkV7w+M/6Qa3PEUBiO6cMOn7YgreurI8evbHlc1cc7mlqwgwIF0SSByu9rz
	hHfP/SNvs+wFJNPqQ==
X-Received: by 2002:a5d:64c9:0:b0:44a:3aee:370e with SMTP id ffacd0b85a97d-4515ce1c5aemr6073557f8f.25.1778079298902;
        Wed, 06 May 2026 07:54:58 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45055960902sm14567686f8f.28.2026.05.06.07.54.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:54:58 -0700 (PDT)
Message-ID: <aeec8c6e-c0dc-4643-a117-be3f787fcec2@linaro.org>
Date: Wed, 6 May 2026 16:54:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 09/16] phy: rockchip: usbdp: Use FIELD_PREP_WM16_CONST
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 devicetree@vger.kernel.org
References: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
 <20260428-rockchip-usbdp-cleanup-v4-9-7775671ece22@collabora.com>
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
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-9-7775671ece22@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_075501_123876_8DE26E45 
X-CRM114-Status: GOOD (  12.51  )
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

On 4/28/26 18:13, Sebastian Reichel wrote:
> Cleanup code by replacing open-coded version of FIELD_PREP_WM16_CONST
> with the existing helper macro.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-usbdp.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index 6d7ca11b308e..1bfc365e2b2c 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -12,6 +12,7 @@
>   #include <linux/clk.h>
>   #include <linux/delay.h>
>   #include <linux/gpio.h>
> +#include <linux/hw_bitfield.h>
>   #include <linux/mfd/syscon.h>
>   #include <linux/mod_devicetable.h>
>   #include <linux/module.h>
> @@ -75,7 +76,6 @@
>   #define TRSV_LN2_MON_RX_CDR_DONE_OFFSET		0x1b84	/* trsv_reg06E1 */
>   #define TRSV_LN2_MON_RX_CDR_LOCK_DONE		BIT(0)
>   
> -#define BIT_WRITEABLE_SHIFT			16
>   #define PHY_AUX_DP_DATA_POL_NORMAL		0
>   #define PHY_AUX_DP_DATA_POL_INVERT		1
>   #define PHY_LANE_MUX_USB			0
> @@ -104,8 +104,8 @@ struct rk_udphy_grf_reg {
>   #define _RK_UDPHY_GEN_GRF_REG(offset, mask, disable, enable) \
>   {\
>   	offset, \
> -	FIELD_PREP_CONST(mask, disable) | (mask << BIT_WRITEABLE_SHIFT), \
> -	FIELD_PREP_CONST(mask, enable) | (mask << BIT_WRITEABLE_SHIFT), \
> +	FIELD_PREP_WM16_CONST(mask, disable), \
> +	FIELD_PREP_WM16_CONST(mask, enable), \
>   }
>   
>   #define RK_UDPHY_GEN_GRF_REG(offset, bitend, bitstart, disable, enable) \
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

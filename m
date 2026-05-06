Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8409ECD342C
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 14:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X5F6xaPekTWCniL2TGBb8cGZvLYFxDmiYlPOcFcH2hg=; b=O+PuYB2GS+21RY6F4TKQeynyqB
	QD5uh7z4X5/H2CUlxpDxSM7iGlxFz2ts3OGa6LvF9saKU2KvfdcfmLkCPOijUea/L127UjnJE+3Hi
	nJx08ssJvsrrdNmxVKNGizZX8kBYDqAUmyGJcWNHc+i6qIkWOkI6D4rgerf4/jpi48oDgyIxpXUSz
	qC63MJwIM1D9I7qe3b+FPgLDX9oJbrKTXb85G1VOZZMfYMreL/U27SU5jC2U6Wmm8koJ9dV5zCSN4
	yawUEpVUmBqQanuGR7JPaJ76LHG2WEGnTEUeAB2k24cXJOKE1vRy7XQ+QwMkKnzZV2Mfrmj8TAf4Z
	USR0NXcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdVe-0000000199c-42lS;
	Wed, 06 May 2026 14:45:59 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdVd-0000000196V-1wO1
	for linux-rockchip@lists.infradead.org;
	Wed, 06 May 2026 14:45:57 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-488ad135063so62068175e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2026 07:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778078756; x=1778683556; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/HtqF6jrqaeSm9DrDqkDcfltRHLuI2l02ndlgOFlBxs=;
        b=GWGHi1lCtrnsl5P+CjujevuCBX4HaHcxlRe+WH2pqYPxo0jXtypEzOUA0SqCvtTSqB
         NTVNeON1l/C4kC/o3+O8pFSoU8Pwf2/dFiDirELg5bst9C73xo/NDl6LBXSq4d7kcJV5
         CeHb+fAB9m5h3EBlcte6RhVZXfAiRzFMGpBXYNxZ+mvUqic3tm/d4B4ii8HZQns0iKd1
         Vna/C89+iNUfhRACUn3bwfho+31ImsV3DQvQjaMRiAgl9KOEqiz8Cifi/z+eR402WV2P
         P3fu71AoFpjKzpKypQBbq26bipgmELtLGo92dPgeGkCDFE+lE7n1bac+qcvuAWVTeuZh
         Recw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778078756; x=1778683556;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/HtqF6jrqaeSm9DrDqkDcfltRHLuI2l02ndlgOFlBxs=;
        b=XH8KXW7ypOdxhIPody5gGOfrSe8gZ4iR/ONIuZvBsFU4i2ErfAOabp2a1Kcgv4m0Ot
         E3nZsPIz+P0HPDUu2lsGENkbAkaBEkwLCopGyvccAsDMPEfvYVTeL2JOl+sxivXlpCyX
         Lxnk6z0VEDFEJvrdhE44lOVf+yp/ax7QRVGXG2iMDCCc9tnEo2/SjzVWG2wddN9iGZjy
         mB/PUKPw7VczUQAE0ZaClHtZF6Cbo+dZV1M1Ita8TAy64L6MlIR4alPPJ8rjh9a4CNMp
         9kNEscnUWuMni3Zgsc5yP0fN7LISVdPZ0GzSzpc1TuDb1K976ndGic5s3GC9xK5Ol+Sm
         6kQA==
X-Forwarded-Encrypted: i=1; AFNElJ9YM3vSHa4w17geZ+y1lu+Q4vFec6A7/2CxNBWi3pQ6vKdk2argprKRwXLVqSNtvohCF5zK4km9ofxBB80jJQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkN2o4G9UrSNyPBLexTdYwJy5+YH/vCXfPPwJqJJjObHXbHMOR
	3yW6kfr5Hm6T2gcZxlEhSqIU+Pu3rP91SCkE1TeE3JqYCmZR9cPQ1JbTvNUWQDHauvo=
X-Gm-Gg: AeBDiesrcSq/agWBhWxRLo8GMbF8DmIMOBJMpkaKsbvbXm/4pygJwKhcYqUgZsibGUt
	unFpiBJCbsK7l90Ro5DfTk30zECQ6VQ0sI8X7eBeAuAR62lSF4LIyeCujcIOf1nFu7JtJP+mdKZ
	pOTEQEytT21isxCR0iot2pqIqAQOvk/9e/SXmLgt+jXqV0pTe3G7uSn9hhPCWPpslcywSYgoObm
	NVe8uz5Cbgbl76fZ2QwJ+S3FT62OsrdWpi0ow5rbOBJ88w+tUld9p0ewOQsr6nc7BSjEsyAAn2H
	9Qs9CmksD66QJMUaRB5QWuFTc47zyeFyhmkvSCB09jxnd3EPORiDsTjaVeu8s8CCYwDM6ZGcICa
	VOVlCd7/+NFCVKMWEO7mvDVFjMqUqkLyBlD6xsFHFZ8h4siUZTETxg5/uZqGV+uxzrfL6iH2D5a
	bCti4CR2djFgcv0cAUFfd6M4n5knmTWrpHjh89PzOoMvdkBbnt7f4RGXApf7xI+vl6wOK2fX+xU
	ejC+hNFZqDuasCW+Q==
X-Received: by 2002:a05:600c:3f18:b0:487:2671:fb8f with SMTP id 5b1f17b1804b1-48e51e19668mr63687185e9.8.1778078755449;
        Wed, 06 May 2026 07:45:55 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e53147bc2sm30042045e9.6.2026.05.06.07.45.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:45:54 -0700 (PDT)
Message-ID: <38f9106e-5cb7-4446-96a2-ea5ea3b358b4@linaro.org>
Date: Wed, 6 May 2026 16:45:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 5/5] phy: rockchip: inno-usb2: Add support for RK3528
To: Heiko Stuebner <heiko@sntech.de>, vkoul@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jonas@kwiboo.se,
 Jianwei Zheng <jianwei.zheng@rock-chips.com>
References: <20260505170410.3265305-1-heiko@sntech.de>
 <20260505170410.3265305-6-heiko@sntech.de>
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
In-Reply-To: <20260505170410.3265305-6-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_074557_546300_1A3C1FAC 
X-CRM114-Status: GOOD (  23.01  )
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

On 5/5/26 19:04, Heiko Stuebner wrote:
> From: Jianwei Zheng <jianwei.zheng@rock-chips.com>
> 
> The RK3528 has a single USB2PHY with a otg and host port.
> 
> Add support for the RK3528 variant of USB2PHY.
> 
> PHY tuning for RK3528:
> 
> - Turn off differential receiver in suspend mode to save power
>    consumption.
> 
> - Set HS eye-height to 400mV instead of default 450mV.
> 
> - Choose the Tx fs/ls data as linestate from TX driver for otg port
>    which uses dwc3 controller to improve fs/ls devices compatibility with
>    long cables.
> 
> Undocumented magic-values are based on the linux-stan-6.1-rkr5 tag of
> the vendor-kernel.
> 
> Signed-off-by: Jianwei Zheng <jianwei.zheng@rock-chips.com>
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>   drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 84 +++++++++++++++++++
>   1 file changed, 84 insertions(+)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index d8879fcd4291..133cfd6624e8 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1511,6 +1511,38 @@ static int rk3128_usb2phy_tuning(struct rockchip_usb2phy *rphy)
>   				BIT(2) << BIT_WRITEABLE_SHIFT | 0);
>   }
>   
> +static int rk3528_usb2phy_tuning(struct rockchip_usb2phy *rphy)
> +{
> +	int ret;
> +
> +	/* Turn off otg port differential receiver in suspend mode */
> +	ret = regmap_write(rphy->phy_base, 0x30, BIT(18) | 0x0000);
> +	if (ret)
> +		return ret;
> +
> +	/* Turn off host port differential receiver in suspend mode */
> +	ret = regmap_write(rphy->phy_base, 0x430, BIT(18) | 0x0000);
> +	if (ret)
> +		return ret;
> +
> +	/* Set otg port HS eye height to 400mv (default is 450mv) */
> +	ret = regmap_write(rphy->phy_base, 0x30, GENMASK(22, 20) | 0x0000);
> +	if (ret)
> +		return ret;
> +
> +	/* Set host port HS eye height to 400mv (default is 450mv) */
> +	ret = regmap_write(rphy->phy_base, 0x430, GENMASK(22, 20) | 0x0000);
> +	if (ret)
> +		return ret;
> +
> +	/* Choose the Tx fs/ls data as linestate from TX driver for otg port */
> +	ret = regmap_write(rphy->phy_base, 0x94, GENMASK(22, 19) | 0x0018);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
>   static int rk3576_usb2phy_tuning(struct rockchip_usb2phy *rphy)
>   {
>   	int ret;
> @@ -1924,6 +1956,57 @@ static const struct rockchip_usb2phy_cfg rk3399_phy_cfgs[] = {
>   	{ /* sentinel */ }
>   };
>   
> +static const struct rockchip_usb2phy_cfg rk3528_phy_cfgs[] = {
> +	{
> +		.reg = 0xffdf0000,
> +		.num_ports	= 2,
> +		.phy_tuning	= rk3528_usb2phy_tuning,
> +		.clkout_ctl_phy	= { 0x041c, 7, 2, 0, 0x27 },
> +		.port_cfgs	= {
> +			[USB2PHY_PORT_OTG] = {
> +				.phy_sus	= { 0x004c, 8, 0, 0, 0x1d1 },
> +				.bvalid_det_en	= { 0x0074, 3, 2, 0, 3 },
> +				.bvalid_det_st	= { 0x0078, 3, 2, 0, 3 },
> +				.bvalid_det_clr	= { 0x007c, 3, 2, 0, 3 },
> +				.idfall_det_en	= { 0x0074, 5, 5, 0, 1 },
> +				.idfall_det_st	= { 0x0078, 5, 5, 0, 1 },
> +				.idfall_det_clr	= { 0x007c, 5, 5, 0, 1 },
> +				.idrise_det_en	= { 0x0074, 4, 4, 0, 1 },
> +				.idrise_det_st	= { 0x0078, 4, 4, 0, 1 },
> +				.idrise_det_clr	= { 0x007c, 4, 4, 0, 1 },
> +				.ls_det_en	= { 0x0074, 0, 0, 0, 1 },
> +				.ls_det_st	= { 0x0078, 0, 0, 0, 1 },
> +				.ls_det_clr	= { 0x007c, 0, 0, 0, 1 },
> +				.utmi_avalid	= { 0x006c, 1, 1, 0, 1 },
> +				.utmi_bvalid	= { 0x006c, 0, 0, 0, 1 },
> +				.utmi_id	= { 0x006c, 6, 6, 0, 1 },
> +				.utmi_ls	= { 0x006c, 5, 4, 0, 1 },
> +			},
> +			[USB2PHY_PORT_HOST] = {
> +				.phy_sus	= { 0x005c, 8, 0, 0x1d2, 0x1d1 },
> +				.ls_det_en	= { 0x0090, 0, 0, 0, 1 },
> +				.ls_det_st	= { 0x0094, 0, 0, 0, 1 },
> +				.ls_det_clr	= { 0x0098, 0, 0, 0, 1 },
> +				.utmi_ls	= { 0x006c, 13, 12, 0, 1 },
> +				.utmi_hstdet	= { 0x006c, 15, 15, 0, 1 },
> +			}
> +		},
> +		.chg_det = {
> +			.opmode		= { 0x004c, 3, 0, 5, 1 },
> +			.cp_det		= { 0x006c, 19, 19, 0, 1 },
> +			.dcp_det	= { 0x006c, 18, 18, 0, 1 },
> +			.dp_det		= { 0x006c, 20, 20, 0, 1 },
> +			.idm_sink_en	= { 0x0058, 1, 1, 0, 1 },
> +			.idp_sink_en	= { 0x0058, 0, 0, 0, 1 },
> +			.idp_src_en	= { 0x0058, 2, 2, 0, 1 },
> +			.rdm_pdwn_en	= { 0x0058, 3, 3, 0, 1 },
> +			.vdm_src_en	= { 0x0058, 5, 5, 0, 1 },
> +			.vdp_src_en	= { 0x0058, 4, 4, 0, 1 },
> +		},
> +	},
> +	{ /* sentinel */ }
> +};
> +
>   static const struct rockchip_usb2phy_cfg rk3562_phy_cfgs[] = {
>   	{
>   		.reg = 0xff740000,
> @@ -2291,6 +2374,7 @@ static const struct of_device_id rockchip_usb2phy_dt_match[] = {
>   	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
>   	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
>   	{ .compatible = "rockchip,rk3399-usb2phy", .data = &rk3399_phy_cfgs },
> +	{ .compatible = "rockchip,rk3528-usb2phy", .data = &rk3528_phy_cfgs },
>   	{ .compatible = "rockchip,rk3562-usb2phy", .data = &rk3562_phy_cfgs },
>   	{ .compatible = "rockchip,rk3568-usb2phy", .data = &rk3568_phy_cfgs },
>   	{ .compatible = "rockchip,rk3576-usb2phy", .data = &rk3576_phy_cfgs },

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

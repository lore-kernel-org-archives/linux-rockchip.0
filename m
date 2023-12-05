Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27825C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 07:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aBgpDqC+3RFbxV4P+cEYA4Fz1jmkhwfTMzjooGqddFM=; b=RNOLH4asCJweiqk0/x8hb2PInk
	H09s9v/xnz4DG82moGOIPwmoD81A5Dft18CXqUg1Dj21r3fSp8t7T4C/tRUxOUnp3QNMdA0bSN1Ff
	vmOCl+bTO0gmCAyf6tCJ6xinHjnnwTwEKbO0d+wZ2ncauhz8wHF188t1JnR74Ck5R1HsCExHqsvoQ
	bk7ohY8SZXagq1Dq83y9DzEUKIoBI2AGR3YzjOYAPHUSMUTey12zThIgjCdyj3X/DZcI/JX5wPyKo
	wragyyPakRZ+dlPZroYZIG3/icSumHHlyOwAE33UzzSNo+bA8QQZAKnXsv0AaTBMWVe3NSOnLKEhB
	K4Hc0chA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQIi-006YyB-0h;
	Tue, 05 Dec 2023 07:57:04 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQIf-006Yx4-0t
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Dec 2023 07:57:02 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40bd5ea84d6so16837005e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Dec 2023 23:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701763020; x=1702367820; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9wKxs7xZ79jme4PTKHT6uJoUIG1TQVqgCh6CwpsPZMc=;
        b=U2OMSh9g28Yy5gTOPkImuWGSLJ4CEriTfjd3Sa0k7766LEVGX1czQZPIAWQaD+qiWw
         B9duiBr6GTWzwTee7HctX7CzKpUbicGuTUgnLOh6vhtRhQm9k2UfTZ0aYZAVZpqhnV0t
         TnELMRT2Odglnhkq3Q0cpEgjqA38OYN5bl9sK8zXYr0rtLpykqKicJk25graJaaAXdaa
         EOoLfQiuMzFv3fgYIR0dd4qoZiAHo/L+9Vnlu3+Jck1/C3vkJrpxiSgwXZ6hwoGxK9gL
         qzwGlmtgJW0UinoyGnE8DPXQ4016FRgyYMTP+BrFGQY1jYjm0PQAKZ7EdH5SqMBtX9BM
         hxQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701763020; x=1702367820;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9wKxs7xZ79jme4PTKHT6uJoUIG1TQVqgCh6CwpsPZMc=;
        b=tBd2Zb6bIJHLcstfBE0isnhaffNO7nrxh7lh6+H2KW64B7p2PlOgTOsWSSoZ6bTBEH
         qP8PfzOfbIBSY7LAFH34STncdnrwnJW7Gtu3HOcnzxAHymh85FPEq+Y9EG8i23Io+dkg
         DGCDoQOVPOd9Edc1ZMTQMGiFOvk6uEFaMGz6klNe/PrcZbOjhVuZLyjaq2Kj/hy7PifW
         zGjhwnEGKtWOW6bLuEuDh35UChO4W5YSFPmP+PUh3ln/PAuFXwW4+JNZSBKKO2V4uJ2S
         u0yYi2wGVg4ghxhev8HD/lDBOcPTT/l2qBcnnWEJkekF8D+2FGDyQohlm0Z//Kp9+e8f
         plKg==
X-Gm-Message-State: AOJu0YxnL9tuuLQ1mZa3VUoBVjxZrEEACVvDs6tt3kozEaG3GvOuewx3
	xl3i/GV4q6H28e0ryuMceaC9jg==
X-Google-Smtp-Source: AGHT+IFoJA1vRBeRLH4mvga4DYOp11YjGDr1cQTpr5rPNeAKttSMcEOvcRe388zba48daFYOKpqDkw==
X-Received: by 2002:a05:600c:1396:b0:40b:5e4a:235d with SMTP id u22-20020a05600c139600b0040b5e4a235dmr260692wmf.95.1701763019867;
        Mon, 04 Dec 2023 23:56:59 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4518:5e57:ff13:b4bb? ([2a01:e0a:982:cbb0:4518:5e57:ff13:b4bb])
        by smtp.gmail.com with ESMTPSA id fm19-20020a05600c0c1300b004060f0a0fd5sm17803498wmb.13.2023.12.04.23.56.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 23:56:59 -0800 (PST)
Message-ID: <5502597d-cb2f-4fdd-8a2d-c7b6726b18f3@linaro.org>
Date: Tue, 5 Dec 2023 08:56:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH V2 04/10] drm/panel: himax-hx8394: Add Panel Rotation
 Support
Content-Language: en-US, fr
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, javierm@redhat.com, heiko@sntech.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
 <20231204185719.569021-5-macroalpha82@gmail.com>
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
Organization: Linaro Developer Services
In-Reply-To: <20231204185719.569021-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_235701_316735_D8834F3C 
X-CRM114-Status: GOOD (  16.14  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 04/12/2023 19:57, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for setting the rotation property for the Himax HX8394
> panel.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   drivers/gpu/drm/panel/panel-himax-hx8394.c | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> index d8e590d5e1da..b68ea09f4725 100644
> --- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
> +++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
> @@ -68,6 +68,7 @@ struct hx8394 {
>   	struct gpio_desc *reset_gpio;
>   	struct regulator *vcc;
>   	struct regulator *iovcc;
> +	enum drm_panel_orientation orientation;
>   
>   	const struct hx8394_panel_desc *desc;
>   };
> @@ -324,12 +325,20 @@ static int hx8394_get_modes(struct drm_panel *panel,
>   	return 1;
>   }
>   
> +static enum drm_panel_orientation hx8394_get_orientation(struct drm_panel *panel)
> +{
> +	struct hx8394 *ctx = panel_to_hx8394(panel);
> +
> +	return ctx->orientation;
> +}
> +
>   static const struct drm_panel_funcs hx8394_drm_funcs = {
>   	.disable   = hx8394_disable,
>   	.unprepare = hx8394_unprepare,
>   	.prepare   = hx8394_prepare,
>   	.enable	   = hx8394_enable,
>   	.get_modes = hx8394_get_modes,
> +	.get_orientation = hx8394_get_orientation,
>   };
>   
>   static int hx8394_probe(struct mipi_dsi_device *dsi)
> @@ -347,6 +356,12 @@ static int hx8394_probe(struct mipi_dsi_device *dsi)
>   		return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
>   				     "Failed to get reset gpio\n");
>   
> +	ret = of_drm_get_panel_orientation(dev->of_node, &ctx->orientation);
> +	if (ret < 0) {
> +		dev_err(dev, "%pOF: failed to get orientation %d\n", dev->of_node, ret);
> +		return ret;
> +	}
> +
>   	mipi_dsi_set_drvdata(dsi, ctx);
>   
>   	ctx->dev = dev;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

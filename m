Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B7C3C7EE30
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 14:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lvociq7bS6d/I6DBNYZ5MisKDwNABD8ZpAwOaGI4MvA=; b=vFBv60Xkt6IVa8OjUSsVuSia85
	32MX2hTcuJBWkvzEOCpeUgkV134oqL5oYThCqoeb1//c+GdTC3E7CM9YM7bfhdqZ5t4aHkznaP1Z/
	czaHoWXGmgDTTs1wGEtkmMvQI3UE5ZW2h+I4hftMTI5tnu+EmK2O4TTc6CNtRrA9P8Deo8d6GP+pp
	PSs1hVA/MVbyO34piqLHFBGpWhFeEjHMWAuSf5hFSyYNQW/Dr65/PMTxXYbxHu5VtpxwQjvgWZMfn
	IImXIG/bZeuT16FHzoKk/gZRH814XhVktQPm6fL2zUeXY9FA6QQziQOvwNA/1RZml5aVHdB6tWAnU
	9uRIYejA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnTo-0000000Bu3e-0CXs;
	Thu, 26 Jun 2025 14:21:32 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnG2-0000000BrRc-31mP
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Jun 2025 14:07:20 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3a6d1369d4eso566986f8f.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Jun 2025 07:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750946837; x=1751551637; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4tyfKJ3iWwfYhEwtvlvqYH/qs9dAR1n1suyqwAjSqmI=;
        b=VbJ2GEnqm3y4btTaxDox9sImjBB91CdBsHi8b163sVkExb2LManxBCENXDK2dJqjPY
         Gysv+dx9ioXqYN/ema5wvSvD8E4dntQFeD0QIT94Y55k7bh6ZQzoxZ+XjHH6ccJdi+dn
         HpsVNbkwiiXKxvpxbuF96Ds9/uwOkJ10ws1ZaauXwNrjKh269KV7E6qfTfsox7zE3q7C
         Lo/gxxSew70GERaKtOVlTB0d3jjUkJvBi6KnhFJv/eg5PRD7/6UPC6Iac0n3z5xePKDL
         1QTg7YiQKWFcH8ksCaUDQ4JGg1eMPyP3Cl1ny2q6uqanrS7aCU0vhvYtbrySbTYfUQAZ
         szgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750946837; x=1751551637;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4tyfKJ3iWwfYhEwtvlvqYH/qs9dAR1n1suyqwAjSqmI=;
        b=tAxxx7NAQ1OgnS86JLu6h5/GTdE/94aw7tWOhQ/o7bRxIwapS8q+XaETUfoQP/D2Ne
         46EqxLp9bCmvdj6duPidWmdW3599kKjowVX+JCVG8LXNS8wxaxwfUqqlcFysdXwQlC1P
         kQymU66JcdLoWGxoi6FUnTHVWobeKDobvV9vcr8Y1I6dC4BPY7jCyZYA8N3jROxE5wUQ
         PBS8CvH++6i3BD09JNfhX/SagO0F6zo+npbfEwdxoEwYT29kr9h26ATmDTEVjZr72Uzt
         lC3jTsP3fRaDm7QtTc6jisbq8ZWQFKYXCWkw1wzcZhRjiB824tOBV4ebaA+p7iyQHbTi
         Dz3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXNCBgverFPE4IFVErEb0Ghk6wwPY8WXJybNd5hHDrnaHoIGwr13FCdnhwLMp7wRdZudkdfC4Z39bcFzErJlg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxvQpPzeZdUSPYdBC7q8DCnoHVS0vXC8OeK89OP3gdojU0skeyv
	IQNtPmZNVRz+E5lJ0LzK/IQ4KOBuaVO78ae94RrcEzXCPA5+e7O5E19sA/D9sXBZaaYF7XjILtz
	8JX2vuHw=
X-Gm-Gg: ASbGncvNy0l18md/czJdigmp0WRYRNMZoCwzyoNtTrhcKbgZlf4JaG0Wo4e5TDIqGYx
	Dsy7ZB4F9DmsObCDThxdD9d7JGy7d62zJnHDtS1aFdQElGZHmhZWfqplSG6LDzFt4PgvpD5fIMa
	AFh1mJJWonND2in8J1HXH98lBalGvk3cmZ7tKNsafWeaFt+fg6g0LSH5AbTtduOwj2gTMI7X5vp
	5Y8Jtw6pScRqH/179LSeTx3t6RJCf8nUy27tMtNnGmtcFqTiY6ftCiEMC+97Rv7LJOHDjgWZOia
	8DLKWQ9wLrTaqld6l620el2GdSgJdXYmH0/n7gzoF9T0xBO27Jju3JtCc5Zh/AMdzyqLYssr81L
	8Dc8TmO9W5nrgHMT+dmTbn14UnPCbGOjXTBqNcOM=
X-Google-Smtp-Source: AGHT+IH2o/48Q3NSxhVyfkjDMI5iDi5m1hTz1aTZlrpWBbENmqy1WfQrH0ZoXoOKjfZDADuR+Pkv4w==
X-Received: by 2002:a05:6000:420c:b0:3a6:e2d5:f161 with SMTP id ffacd0b85a97d-3a6f2e8725bmr2928225f8f.8.1750946832282;
        Thu, 26 Jun 2025 07:07:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:fa6f:b132:4858:18cc? ([2a01:e0a:3d9:2080:fa6f:b132:4858:18cc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a88c7e72c1sm18312f8f.1.2025.06.26.07.07.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 07:07:12 -0700 (PDT)
Message-ID: <f92836f5-c81a-4bfd-a77f-903e74452c59@linaro.org>
Date: Thu, 26 Jun 2025 16:07:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/5] mfd: khadas-mcu: drop unused nvmem code
To: muhammed.efecetin.67@gmail.com, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, lee@kernel.org,
 rafael@kernel.org, efectn@protonmail.com, daniel.lezcano@linaro.org
References: <cover.1746518265.git.efectn@protonmail.com>
 <1b421ddfd44d096cd3a979462ced002e2356eb21.1746518265.git.efectn@protonmail.com>
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
In-Reply-To: <1b421ddfd44d096cd3a979462ced002e2356eb21.1746518265.git.efectn@protonmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_070718_788225_F3DFF93D 
X-CRM114-Status: GOOD (  14.26  )
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

On 26/06/2025 16:04, muhammed.efecetin.67@gmail.com wrote:
> From: Muhammed Efe Cetin <efectn@protonmail.com>
> 
> Drop "khadas-mcu-user-mem" code since it is not used anywhere.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
> ---
>   drivers/mfd/khadas-mcu.c | 11 -----------
>   1 file changed, 11 deletions(-)
> 
> diff --git a/drivers/mfd/khadas-mcu.c b/drivers/mfd/khadas-mcu.c
> index ba981a788..ca4bd6cf5 100644
> --- a/drivers/mfd/khadas-mcu.c
> +++ b/drivers/mfd/khadas-mcu.c
> @@ -80,10 +80,6 @@ static struct mfd_cell khadas_mcu_fan_cells[] = {
>   	{ .name = "khadas-mcu-fan-ctrl", },
>   };
>   
> -static struct mfd_cell khadas_mcu_cells[] = {
> -	{ .name = "khadas-mcu-user-mem", },
> -};
> -
>   static int khadas_mcu_probe(struct i2c_client *client)
>   {
>   	struct device *dev = &client->dev;
> @@ -105,13 +101,6 @@ static int khadas_mcu_probe(struct i2c_client *client)
>   		return ret;
>   	}
>   
> -	ret = devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
> -				   khadas_mcu_cells,
> -				   ARRAY_SIZE(khadas_mcu_cells),
> -				   NULL, 0, NULL);
> -	if (ret)
> -		return ret;
> -
>   	if (of_property_present(dev->of_node, "#cooling-cells"))
>   		return devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
>   					    khadas_mcu_fan_cells,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

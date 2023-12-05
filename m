Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09EA2C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 08:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sdPosalwrskSPOUjz3gVXyfWi7dGj6211YDCR2CSY9Y=; b=W4LIfxKjsIQAq/
	XPDHjbB5EqN9+tSxRR/h7MMeqKTe2r/4Y5uoRmohTgR7E4iy9e4zzUTHhCEbKG36IUfjKjgi03Zf+
	b6nsJaAhtwV++MxD3N3Y3LyFrghpVDN1AL+8c6/mfcm3n2STAx3EHa1n95zXM/32n2l/8+mJTpCcF
	G9m0m7AjTfWh5BsZLYtjW6DMEoTzzwguOv0kpdY3BtDGHeE1rTLx8U0Ij6ahWwNNkBMdHhjXEgDSN
	dDuOta4qMKwn3i9gixZLbNd6OfjSN1ZHV9m+F1VA0gwWE+u1fWut6ntg/VP0l893/dshqUoIkXxZs
	qbuPiR+NtYwJgZSCl2zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQn8-006eOl-2I;
	Tue, 05 Dec 2023 08:28:30 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQn5-006eNi-1Y
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Dec 2023 08:28:29 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40bda47c489so34587385e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Dec 2023 00:28:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701764906; x=1702369706; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NFKSpKSrRWoXFYENkiq8+HWQ5Z6F7TKJoFhiU9QOe50=;
        b=g3edbW76MstXto23eFVR0/dJSB5UnEhE5Z+BKL7g+nn2+bgt7SOSKR5LrIOmgRb0TG
         Aid0eCworci8kQ4if1Sn90SdK4yvlhirOTsWiXhdUcrg135aAXW1r9PMDgmhyUB1Lx04
         MV6Vw3gLbrGR9gV0PdPl9MuC1hynuyCsTy9Xx9vUyKUcaHADeQridud1DnTbZ6Y3EeBm
         mxncBoCebCbxhjHOZ0l8+AnYmHAMjJPXW2G0TGhWJ5fe4Qd3uak480H7PHhpht6lW+Sm
         9VNWf0sNUbnKDv/WlN3DTOT0OC/Rd4lxe+JQ+Fdt6M8Z7LSOqgw1G8nAeZdZutDGBQvj
         MCaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701764906; x=1702369706;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:from:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NFKSpKSrRWoXFYENkiq8+HWQ5Z6F7TKJoFhiU9QOe50=;
        b=Z7ruzW2GqFwOKciO3GRmF6/1bj1aINyuu9LwSZXLiM0u4I4mVK7eMFpZBaXsZnPhk2
         H8OsSaadGlDRlZzyEwCGPs2RntmosEKBYkWr9dCQ5xXdBNUW/+Ua/w9OFPOuCYZCFoxy
         olAjbWzVylMI3n4IasCUHP6MSQ9MsqPVBAC82mqzflWAXSQCj2X1tzgM6nwgKmFDSgjQ
         BPmwVleTjfnNusAsPbFxPDIMwFACybZnG23pgNWz00FgjlgxSYXMZIt7qmz0f5K6h2l6
         upzDsT5a2X9z2D1K2e31y+rKtJAoerML898x/KSrkrHo+0dfvkjqRnEdG2+TgE51EmUE
         jLJQ==
X-Gm-Message-State: AOJu0Yz1bud6/qwnrkcnmdQCyHh8UQoQE0qQwXDIUXg6carZMiRyMWKw
	Pu+7M6rjUQnvvE1bMJs8+sZWW0liR5IY5xYX1s+tfY9R
X-Google-Smtp-Source: AGHT+IHYiYh03gF0HR7CFXPhKVhJzy9KsD1yiXJ0hCAKQRDxLuSaDr/vOiQCjfOHYK/99proMO0sbQ==
X-Received: by 2002:a1c:7315:0:b0:40b:5e21:d341 with SMTP id d21-20020a1c7315000000b0040b5e21d341mr254803wmb.74.1701764905895;
        Tue, 05 Dec 2023 00:28:25 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4518:5e57:ff13:b4bb? ([2a01:e0a:982:cbb0:4518:5e57:ff13:b4bb])
        by smtp.gmail.com with ESMTPSA id p7-20020a05600c358700b0040849ce7116sm21619517wmq.43.2023.12.05.00.28.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Dec 2023 00:28:25 -0800 (PST)
Message-ID: <f93acb2c-0871-469e-9744-60e52f4b9918@linaro.org>
Date: Tue, 5 Dec 2023 09:28:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 00/10] rockchip: Add Powkiddy X55
Content-Language: en-US, fr
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, javierm@redhat.com, heiko@sntech.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
 <170176481258.4073725.14793788958228896320.b4-ty@linaro.org>
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
In-Reply-To: <170176481258.4073725.14793788958228896320.b4-ty@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_002827_529005_A0A2D855 
X-CRM114-Status: GOOD (  10.49  )
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

On 05/12/2023 09:26, Neil Armstrong wrote:
> Hi,
> 
> On Mon, 04 Dec 2023 12:57:09 -0600, Chris Morgan wrote:
>> From: Chris Morgan <macromorgan@hotmail.com>
>>
>> Add support for the Rockchip RK3566 based Powkiddy X55 handheld gaming
>> console.
>>
>> Changes since V1:
>>   - Corrected a bug with the DRM mode flags for the video driver.
>>   - Adjusted panel front and back porch and pixel clock to fix
>>     issues with display that occurred after correcting DRM mode
>>     flag bug.
>>   - Add a new clk frequency for PLL_VPLL to get panel to run at ~60hz.
>>
>> [...]
> 
> Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)
> 
> [01/10] drm/panel: himax-hx8394: Drop prepare/unprepare tracking
>          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=8c2c5d1d33f0725b7995f44f87a81311d13a441d
> [02/10] drm/panel: himax-hx8394: Drop shutdown logic
>          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=e4f53a4d921eba6187a2599cf184a3beeb604fe2
> [03/10] dt-bindings: display: Document Himax HX8394 panel rotation
>          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=be478bc7ab08127473ce9ed893378cc2a8762611
> [04/10] drm/panel: himax-hx8394: Add Panel Rotation Support
>          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=a695a5009c8fd239a98d98209489997ff5397d2b
> [05/10] dt-bindings: display: himax-hx8394: Add Powkiddy X55 panel
>          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=00830a0d8f0d820335e7beb26e251069d90f2574
> [06/10] drm/panel: himax-hx8394: Add Support for Powkiddy X55 panel
>          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=38db985966d2f0f89f7e1891253489a16936fc5e
> [07/10] clk: rockchip: Mark pclk_usb as critical on rk3568
>          (no commit info)
> [08/10] clk: rockchip: rk3568: Add PLL rate for 126.4MHz
>          (no commit info)
> [09/10] dt-bindings: arm: rockchip: Add Powkiddy X55
>          (no commit info)
> [10/10] arm64: dts: rockchip: Add Powkiddy X55
>          (no commit info)
> 

To clarify, only patches 1 to 6 were applied to drm-misc-next,

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

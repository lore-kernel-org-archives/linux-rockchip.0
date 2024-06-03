Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20F04C25B75
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jun 2024 13:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d9s1B2Pvl2HuRYelgjyeY3CeDieHNogt+NvuOuDTYW4=; b=D2XYFR2eCMli/SpG7Mq5QMGUow
	A/BvVM4ADdl4OvPxeuR3a1CvTsdhbJ1m78LbomZpf5FnggnEMlYpMpYDkRAm8+TFwvxHYLXm48PiB
	f2JII9YAQmbsZiYBXRCQp+g/W+NSF9yJI7auvte5JCCH9rWKwlsKge3jZ+RbBCFLEiTGjn4csRRaC
	UL6eeMPBTaRtCEk0Cxerd0zwpRp/izLliBaW6rGbf3OTPanQHd/ZRLc0JH8cwA4SrV7Lh2Q/rOUZQ
	WDMYKSVrsUpPf7ldHTuHqMwnc+uMJz41k6nwlqW6SQmGI/ZmlwNZMnqXcyaaVyRx8RFcmXM6JHC4C
	UGZ7O/Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE7Qc-0000000Gqct-1nzT;
	Mon, 03 Jun 2024 13:08:46 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE7QZ-0000000GqaP-3SL0
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Jun 2024 13:08:45 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4213a496a81so9075305e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2024 06:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717420119; x=1718024919; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gx8F+Fp9SWNUY6Yomh+HNjqS3oRk4P5HF08WogPmZDs=;
        b=G6y/6Brg39ndV42JHBXqsJyUmCX40TH4b9JFSXbeAs6tezgCJ+XvYcW+b9fePYY0GW
         R8BPU0804Lngca7ElvesRN7IVofaekZUV8y1Jn9MrVT5psiIafJPqKd/PfrL8OpiMd+E
         ABSfX+Ay+1Qs3skhPS2RNZP7w5AeoVcXVpZTUIpmLFXJyfzcP8Qg1OSVHAD1jaoNvQl6
         P9SyM4nE77XtNbDdC+MHh+KcejPyWJvC4cuqf0S8FrwsPoWl0B3/+erUzErsa1dNjBZS
         0Lx36dARivlDENIRqf+4v2mzyTHpbICHZG3OyB9w1qzbp9hzBWQwSz0Uyduqkujwlr4s
         NBiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717420119; x=1718024919;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Gx8F+Fp9SWNUY6Yomh+HNjqS3oRk4P5HF08WogPmZDs=;
        b=Q+qsIJdrhF2st2T1dLBCy8uA3NKUO3F/EKSdICDdfLfbp62ZxQy2Dw95HwnhXr6+5J
         8rOJz2T+SgCTpSKv8rR8uYdLHwf0UbeROm1vKULVg9aQ5/IdMyWUrm4J6sr9EZSruflj
         N3kN0oKrhuOCrfhVSdX+8HZHcCswhxEZ7mTc1Z+4m16hCrgyTAmH5Dmc3TnJsgsiQQJk
         i+gJ7NEj6UV010CER5KWpNq3ngIMyzwYPPhKv3OuF+5KZ25dXEMRJwH4E/aSWbKag64R
         t2Npe/13Ut1oao6AUNcMlfonxuqfSNStPfkvq9OKKgUd6m5pRUIBz0+7wY3BhYzqilRQ
         gVtQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/AP/me6JThvyIZXYt61ATHPinCBH3BTUtinSdGSTpDIW54vOBjHNzqH2dkxIKtNg43jze0nTWfr286+bgTG5WGgwkoU5qChSMXtvnfcytdOBn
X-Gm-Message-State: AOJu0Ywb3rdll7Hf8s8h5vic9Ip0IYX52+2pibUfcmB8/xl47sm6QMA2
	WLBsojGT71d2XXu9R5gcDaMLhgbTLiXWEOziA3hAkQqFKh+TDQS0/4PXkMRlb9g=
X-Google-Smtp-Source: AGHT+IGk0uTd6E9uGLIil4o8K0nvJynzZnkSYzkdwscvLlhumYGzjCi6eNdCTeQ3QEO7F5aMBDsE0Q==
X-Received: by 2002:a05:600c:1550:b0:420:1fd2:e611 with SMTP id 5b1f17b1804b1-4212e0adf99mr54609955e9.27.1717420119183;
        Mon, 03 Jun 2024 06:08:39 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:79fe:b764:2b06:ab4b? ([2a01:e0a:982:cbb0:79fe:b764:2b06:ab4b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4212b8b76f3sm115776355e9.47.2024.06.03.06.08.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jun 2024 06:08:38 -0700 (PDT)
Message-ID: <ef60403f-078f-411a-867b-9b551e863f56@linaro.org>
Date: Mon, 3 Jun 2024 15:08:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
To: Heiko Stuebner <heiko@sntech.de>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <a4b22708-e85d-448a-8145-244b49bca053@linaro.org>
 <ab0a6372-091b-4293-8907-a4b3ff4845c0@rock-chips.com>
 <11359776.NyiUUSuA9g@phil>
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
In-Reply-To: <11359776.NyiUUSuA9g@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_060843_914485_82334481 
X-CRM114-Status: GOOD (  19.33  )
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

Hi,

On 03/06/2024 15:03, Heiko Stuebner wrote:
> Am Montag, 3. Juni 2024, 14:14:17 CEST schrieb Andy Yan:
>> Hi Neil:
>>
>> On 6/3/24 16:55, Neil Armstrong wrote:
>>> Hi Christian,
>>>
>>> On 01/06/2024 15:12, Cristian Ciocaltea wrote:
>>>> The RK3588 SoC family integrates a Quad-Pixel (QP) variant of the
>>>> Synopsys DesignWare HDMI TX controller used in the previous SoCs.
>>>>
>>>> It is HDMI 2.1 compliant and supports the following features, among
>>>> others:
>>>>
>>> .
>>>
>>> ..
>>>
>>>> * SCDC I2C DDC access
>>>> * TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
>>>> * YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
>>>> * Multi-stream audio
>>>> * Enhanced Audio Return Channel (EARC)
>>> -> Those features were already supported by the HDMI 2.0a compliant HW, just
>>> list the _new_ features for HDMI 2.1
>>>
>>> I did a quick review of your patchset and I don't understand why you need
>>> to add a separate dw-hdmi-qp.c since you only need simple variants of the I2C
>>> bus, infoframe and bridge setup.
>>>
>>> Can you elaborate further ? isn't this Quad-Pixel (QP) TX controller version
>>> detectable at runtime ?
>>>
>>> I would prefer to keep a single dw-hdmi driver if possible.
>>
>>
>>
>> The QP HDMI controller is a completely different variant with totally different
>> registers layout, see PATCH 13/14.
>> I think make it a separate driver will be easier for development and maintenance.
> 
> I'm with Andy here. Trying to navigate a driver for two IP blocks really
> sounds taxing especially when both are so different.

I agree, I just wanted more details than "variant of the
Synopsys DesignWare HDMI TX controller", if the register mapping is 100%
different, and does not match at all with the old IP, then it's indeed time
to make a brand new driver, but instead of doing a mix up, it's time to extract
the dw-hdmi code that could be common helpers into a dw-hdmi-common module
and use them.

As I see, no "driver" code can be shared, only DRM plumbings, so perhaps those
plumbing code should go into the DRM core ?

In any case, please add more details on the cover letter, including the detailed
HW differrence and the design you chose so support this new IP.

Neil

> 
> Synopsis also created a new dsi controller for the DSI2 standard, with
> a vastly different registers layout.
> 
> I guess at some point there is time to say this really is a new IP ;-) .
> 
> 
> Though while on that thought, I don't fully understand why both a compiled
> under the dw_hdmi kconfig symbol. People going for a minimal kernel might
> want one or the other, but not both for their specific board.
> 
> 
> Heiko
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B1D6FA372B
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 08:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fGPDWgtpaPxtcKxfqkF1KnhI0h8CuTELkAoP+4jSkAE=; b=iG//a0wsJwXgCqGb0XIt6Zcr95
	aSIRjUKdel0CIAqXI32bDRqIQbXCveWQK/BxwQNwjeGwISvYMOVe1ac90/4iSE/Wt0vDWrEc6qeKu
	csi6CQrfd04g727CYESTIPzhoPkQPZC5Aun2TD5Me5TAVP5H571g3pyQNwA2Z1v35yvQBmaMWX6Kn
	ckxioouKAFuwsd1nVQSMACMwzzV1Nwq1T8uKg0QMXbKv/XMYMr2L4hVh60HNBBbk6DH8eMO71UP1N
	z3L1KxNN03rG72P1FKd1+kvc3wYmMYBQ/rFoQQtAhXu16LJY++mjvHrlBtKIVOsvQ/kDTMiTbdl1J
	cA6SiW+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1Lh-0000000FIB6-3FKi;
	Fri, 13 Sep 2024 08:08:13 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1IX-0000000FHPg-07A1
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 08:04:58 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-42bbffe38e6so14913055e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2024 01:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726214695; x=1726819495; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tN0f5KnLz0Fgv6Uw4PEqovbRdCu6k+vdYOILHvBPqH8=;
        b=xaExewPr2+7+3pUk1moKdM1sWekGCk6IGLc4oIzMhEgHrI7PqMfx7/8bgYfbplwDkB
         9ceGlo/6SqvZxQfI3aWO88hg3RVKBsKkQjwSwpucdKtTROewpEEx9ckwqQv4s4jzFzB0
         RJC4MwpF3h9CLqqlErwPHp38gAo5yFTd1rQJ8VUVKfssV3eqhYyEqfcXDNspK1iz8nd5
         7Jpo17JWpmgppfTFss8gMog9PFcoGlFf6Dd5EnDCUxVZdDrDMCzkq9PCh/2ucWliBDm4
         rS5X6GlUthc5bh5wlVT+M1P2sQ8ZYm+g2UBxAGrR0sBiPKJAptKugeX79oLYsDCRpT6A
         E9vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726214695; x=1726819495;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tN0f5KnLz0Fgv6Uw4PEqovbRdCu6k+vdYOILHvBPqH8=;
        b=XAuzod0FIJcMadbHtsCF/HjC9e6CusY1nwNyBmMCKgUoeSGllrSrSod1mk+JRGl94p
         RaETGeiTDr40akAe6KPF2YzT6Q5wDCxmv20xQqhcYXJIcoxz3e3G0H73v0YpO6/WA45z
         2z6wTv0/2hFRQ410rl3kK7kzdbDriH+6s6Q2cqmUspmOqonSpncWUwyA1YUna2UFT8S6
         SeJ4ANgycF33bsLN5NjbIBh7Fk7hqWaIIZmxWhPmrh3wTyWHuZwCzXXLwNGQ500wF0Pd
         4S396Ddv6xA8jST9Ro4RgM829M+FOLDvF8KwKHf617g3zOHC86a8BtNevSXqeRuipRpf
         bbhQ==
X-Forwarded-Encrypted: i=1; AJvYcCX81TqRC16w5Tyv4wn2mVQK/CD+Pe5hhb3s+2CZc09cQgGZATB8Q/I4zGY2LJCS85lT5igmV8n+ZTL/mX/YUQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7o5iZcX7t4n4VzuChJU0rRzQeMhEuc7BqAtV4ZTYwuTOYyp7o
	krxvs3HLOjDyIANn5XZzvuGYdxKR1K4nL/fSuMvdiW2EwAnSBWRXt7vz7zEmCrw=
X-Google-Smtp-Source: AGHT+IE+/EPYZj8Jxd7YCIShYfXbXYbbomxByU1YjyiDIlF9V+tx4J8IWT7k674TkMxeicqzdjvskg==
X-Received: by 2002:a05:600c:3b1d:b0:42a:a6aa:4135 with SMTP id 5b1f17b1804b1-42cdb53fab7mr35348055e9.20.1726214694972;
        Fri, 13 Sep 2024 01:04:54 -0700 (PDT)
Received: from [192.168.7.202] ([212.114.21.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42d9b181ecasm14927755e9.43.2024.09.13.01.04.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Sep 2024 01:04:54 -0700 (PDT)
Message-ID: <b28e86f1-3730-4739-9499-24bed32c16b9@linaro.org>
Date: Fri, 13 Sep 2024 10:04:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 04/10] drm: bridge: dw_hdmi: Use passed mode instead of
 stored previous_mode
To: Jonas Karlman <jonas@kwiboo.se>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Christopher Obbard <chris.obbard@collabora.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240908132823.3308029-1-jonas@kwiboo.se>
 <20240908132823.3308029-5-jonas@kwiboo.se>
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
In-Reply-To: <20240908132823.3308029-5-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_010457_107277_24458799 
X-CRM114-Status: GOOD (  14.16  )
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

On 08/09/2024 15:28, Jonas Karlman wrote:
> Use the passed mode instead of mixing use of passed mode and the stored
> previous_mode. The passed mode is currenly always the previous_mode.
> 
> Also fix a small typo and add a variable to help shorten a code line.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v2: Update commit message, s/type/typo/
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 9 ++++-----
>   1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 5b67640b1d0a..87fb6fd5cffd 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -2240,6 +2240,7 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi,
>   			 const struct drm_connector *connector,
>   			 const struct drm_display_mode *mode)
>   {
> +	const struct drm_display_info *display = &connector->display_info;
>   	int ret;
>   
>   	hdmi_disable_overflow_interrupts(hdmi);
> @@ -2285,12 +2286,10 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi,
>   	hdmi->hdmi_data.video_mode.mdataenablepolarity = true;
>   
>   	/* HDMI Initialization Step B.1 */
> -	hdmi_av_composer(hdmi, &connector->display_info, mode);
> +	hdmi_av_composer(hdmi, display, mode);
>   
> -	/* HDMI Initializateion Step B.2 */
> -	ret = hdmi->phy.ops->init(hdmi, hdmi->phy.data,
> -				  &connector->display_info,
> -				  &hdmi->previous_mode);
> +	/* HDMI Initialization Step B.2 */
> +	ret = hdmi->phy.ops->init(hdmi, hdmi->phy.data, display, mode);
>   	if (ret)
>   		return ret;
>   	hdmi->phy.enabled = true;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDEAACD4F5B
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 May 2026 07:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W18aPDthaXtWfo7QoU8qH0V+vuqv7NrSaIl+gZivy1I=; b=hG8JNThDuD2CeuUTz6CbFmcdMf
	aVSIOg/wN2OCnUOde1/C1AA3MXBKid0qhdvi3xUFidjHEkWYKyLz0eahcpFdPZ4dcICsx93SfsUCq
	GoPlsYiuaJvHbRylo+pB7eamVEPPEmitY0CjiJd+y+c5VxlFq9lYK3hQRYqUS0wdQGEz9H9t02cUt
	vc2WKd5ibEXhlnUNrtTxD2udJl0mZzmf1Tl/D8o0qICMx7BasbiZVeD/mWg8diyXcCC/MjfCKO68X
	cl6rjCCmxPzpmf7s1Y7OdNF+lp8wLeYGk22sZMfeSm0Y07dPLObWAiDwXAmiyh5RL+jG99mpJOF9s
	29mRjIHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEnl-00000000Txa-0C11;
	Tue, 19 May 2026 07:23:41 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPEni-00000000TvZ-3jBf
	for linux-rockchip@lists.infradead.org;
	Tue, 19 May 2026 07:23:40 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-44e1ebb3122so1816419f8f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 19 May 2026 00:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779175417; x=1779780217; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sARt/XEtoBYHi4fyCJzLGB+SNU2tjajyLFXV5tLDUL0=;
        b=pCYzEu4zEE11B5mER+krfy1JrG8s5xbgYbvnk6zXbwQBgGo4l3NYzMU53BjYPcD/SK
         3ZvvZI0ufYQ4bkZEGcImat30P7t6/rS5bNjxG90QbwQr9Q7Madd+HfRgRW8SnmPnh5Kd
         fBEg+v6fELAbohQYkdJ3fTbkQagRYW5HDu3BNK1hyj60QZDEIuJvOX90skd0Vp/K1Jyl
         O3b2k3gjPyJJEU4Ze6aZ8dS55C32aiUJXhS1gVP9Z8y7gQxFjotd9cBI9QCNInwj8vkB
         bIYqpOymcuJvH7+lzf7QaY4mFN7V5u8DPWmcbOYhmoACfiIGZWaWKbABuGnWIkMCW8dW
         YxJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779175417; x=1779780217;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sARt/XEtoBYHi4fyCJzLGB+SNU2tjajyLFXV5tLDUL0=;
        b=fx4tpyekasqbFSZ6FHkPIg1EK7aUeJHAsQFPmETxqM0M5n8MvHZWTeTqmgDwaWKiUz
         UKJ1Dq6jg98xWZlWik+0v+Bs9/cIyjWfX6296ku7dsloOMhsxjOEZqlqH15/ZlnOEy9z
         V/f3UiShjszHCrkufnQXf2XeaoT/q6dSaslNXxQeXr5zW4ws4zQMw1dNJUEcmqVPG8rw
         PhL5bEYnHxnj43F8nJ9uLyBp9Qcr4vksJ4Ldp0UcUgsqjoFdRMWRCZRyIev2QGXDr3OC
         yKPXfWw8DKLFf6FgDLQXnDwSdxc0kDSkKDxZOVUgonTpJMpk9wioO+xPCbZMiloc2zx2
         cQFA==
X-Forwarded-Encrypted: i=1; AFNElJ9leOlGMWuRIkocGaVfC8jRLrnR3kM/sBQP6byuXqldVKu9+IeS4Kq6XDOyy40UieRbQbzySjav99CHW5cQQw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxSyMnDwxgLziMOVNDsQT38wVgagWbpzT58STstBjMOI3r3t2kw
	jE588EN11HrumFXQQCtJXfH3EHzxvJ8Fd+JyqUhYLRwgmxZL0LHxZOIKbQRBSTZ7Oag=
X-Gm-Gg: Acq92OGepP1PFzIt2mb/fcY/0lFwj/0CIXjpQC0iq+BJm3VdMOy9WzSNKGioaF3AwBF
	/+FieVlpmqSHBVPYTbdR4GJchqqhfCyDzA8l0+N8i89W6sy4zFMIk4xo2iyofQeDUgxyb/Hgx7t
	nfvkdpiUbf24TfIrZcCeW2FjKsMpALMAQkuN+0l7NZWOp8tofSc/ow7uqqdCQFrplmrJLEWOK89
	LkR9eXiXNSAclahQNvqpuZ8e3jfCkrqfmZiUq1Hvso/6hSi/2hcFyPYTnzecMeP+QBAd4IRtn6F
	KKRmKbu6LLj0seBoE4j3ZldubG25Dj3dhAEM726JE2WxSCZgOvOkV7KsL6bOPDE69gHfXu7GpBx
	5H6vfBBocRKj8Uesg03DC0Nu3/YBadBJUhtjRF9R38g//2LOp6R4Nm7zQ/8OWMErMUhTD4C7rrm
	IfPQsNrneaESWxc0E/iWxAdhm2y/av+pMwb3UpczrHa6105jI/gyUC+63LcPVeix63GjEHBxpV9
	i7ETN5Hkouemcc=
X-Received: by 2002:a05:6000:40df:b0:45d:b14b:2409 with SMTP id ffacd0b85a97d-45e5c35dd7bmr29424483f8f.2.1779175416876;
        Tue, 19 May 2026 00:23:36 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:1d4b:274c:94d:a69f? ([2a01:e0a:106d:1080:1d4b:274c:94d:a69f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da15a5653sm43847302f8f.35.2026.05.19.00.23.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2026 00:23:36 -0700 (PDT)
Message-ID: <6db86d54-b463-49bb-ae7f-35c694e624bc@linaro.org>
Date: Tue, 19 May 2026 09:23:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 02/13] drm/meson: dw-hdmi: Protect from possible NULL
 pointer dereference
To: Jonas Karlman <jonas@kwiboo.se>, Kevin Hilman <khilman@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20260518194744.2483580-1-jonas@kwiboo.se>
 <20260518194744.2483580-3-jonas@kwiboo.se>
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
In-Reply-To: <20260518194744.2483580-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_002338_958766_51E6FF98 
X-CRM114-Status: GOOD (  19.03  )
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

On 5/18/26 21:47, Jonas Karlman wrote:
> The IRQ handler can be called at any time after the call to
> devm_request_threaded_irq() completes, even before dw_hdmi->bridge has
> been assigned later in meson_dw_hdmi_bind().
> 
> Protect from a possible NULL pointer dereference in IRQ handler by only
> calling drm_helper_hpd_irq_event() when bridge has been assigned.
> 
> Fixes: e67f6037ae1b ("drm/meson: split out encoder from meson_dw_hdmi")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> I only observed this NULL pointer dereference one time, without being
> able to reliably re-create a similar timing scenario. I still think this
> is an issue that possible could happen and likely should be fixed.
> 
> Note that patches later in this series will fully replace this change.
> ---
>   drivers/gpu/drm/meson/meson_dw_hdmi.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> index 993f6d5d4b29..eafe7daf6ff1 100644
> --- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
> +++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> @@ -520,7 +520,8 @@ static irqreturn_t dw_hdmi_top_thread_irq(int irq, void *dev_id)
>   	u32 stat = dw_hdmi->irq_stat;
>   
>   	/* HPD Events */
> -	if (stat & (HDMITX_TOP_INTR_HPD_RISE | HDMITX_TOP_INTR_HPD_FALL)) {
> +	if (stat & (HDMITX_TOP_INTR_HPD_RISE | HDMITX_TOP_INTR_HPD_FALL) &&
> +	    dw_hdmi->bridge) {
>   		bool hpd_connected = false;
>   
>   		if (stat & HDMITX_TOP_INTR_HPD_RISE)

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

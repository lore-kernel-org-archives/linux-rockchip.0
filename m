Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDBA4CD4F57
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 May 2026 07:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1L+8PTDP+V0jIsA5lTd9Joj6hykYQ5QMixS6BwviL8o=; b=E+mjF1W9AxV0OWmTLyiGH3QTaU
	FHGNOwvTX6oAPCd5xrao7yza0uJyAAIZ03v7pFURvLN7OvBdFhaQjjPoAslSesSpRBHCUkNOtjN3J
	I304cIe2gUMYJHMg9VNiHUxkqyp1rUucQV8wbC9O3+UbMjdXtQkdY2wxDmwsRWphIv0jDeJXg+B1W
	p0YtFAhydiO4JeXQ+naY+fC6nY7BWvYclli59THptHuyrzGbHLOqIsKbCAU7MzcB55ZGhviYKfkV/
	z0P2lVzhqICyljFyV5TLZkGbmLNXqiuUJ2kHGvyt7czy2lhQQK8KIIOd3zvm27HVG0yRXtfGyUzXU
	EymJNcCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPExE-00000000Vxq-13En;
	Tue, 19 May 2026 07:33:28 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPExB-00000000Vvy-1LB2
	for linux-rockchip@lists.infradead.org;
	Tue, 19 May 2026 07:33:27 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-488b0e1b870so47062955e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 19 May 2026 00:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779176003; x=1779780803; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CptfMWX/OnKpQAZK1ljSyYDr+otcGVWKuHyIusA7+I4=;
        b=UqeDWTtyLT88yGGCyyIWWibMKHBrzrXzm/9kwhHdlIw27bVbt1JnVJNrOpGGiGHIQR
         HAfw1BEvF6SR85W+wJMDQzqi5yza7QFB0oBP3q5q9r3eYQl4NkRAWV1gMEFYp26xseUs
         VAzEkRZMv6JukWzFhkRuPsosoJISep4e0+hIdxcAI4tdkwW6kmIkXHiugzYTf0ZWVpPX
         5xEJJfHuk+bLOIt5P9LyW+S057Wdoy6elseaS+tvLmNv816s31toSbVX/oTYlcvcNKPq
         zYE00zElTGCU8dPNi8Q4b+vBpjIqwoXTfkvmHfU2B5yMdYjyIvjEVgIZFXKjVJHS8cAC
         GV/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779176003; x=1779780803;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CptfMWX/OnKpQAZK1ljSyYDr+otcGVWKuHyIusA7+I4=;
        b=qvh4UiJuF3tOUzAnPkmU7enrZ+NtlclHue5bKl14xHJeaOpnI2px32cbLl3Zv+lDY+
         SwUibSknSR+o2jDsenFeZqbfBOG4BN0fbQ4hrjxvdqbMJ6gxam+xLNchTiBskKzY1VX+
         A26TwbozvksyK7Cfqzw7Z+Sf1Z+hl4Yjn3TCbbskUC+GTOasE6mKx4Pfld7uOs6w9qOC
         D5mUn8E6vsCaa9ANVF4daHu/l9nAZEeVom1pOYnEORcQ5b9MEqB5LQcegemNQ2lGLmW8
         /icKMMdD45BD1o6McVr/QqNGTvgQOun1U6lMbT4i7NSVIjKq08WzfJc3ISrj9jgQgsOF
         uw0w==
X-Forwarded-Encrypted: i=1; AFNElJ8P6dRYMNF00UzALC1zhsk4UvwRz5iIXImFa7yqDLxyR/qkuLvcVH5l5g+L2bysyaNZS2z/Ju7X9trm/vOukQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YydPztfDue1ZZW6vSS4WiPl5mYn5ljfnhnPfH7fphys080BHghC
	qBEhbAWL3yadNP2gi/wUJKCG5vRqzL4vJucYgiAILtAxSxdFS2o2ljTAIu8oNBgPDcM=
X-Gm-Gg: Acq92OG3bznfpuCIVSKaApk1xa7Jf+bzIxVhZaVkDlvy/jOwX7IAQreV5HlMXVlAeTU
	jSpQBJBIWNEozcYdSw2ktO8nZvvXiNalQvKokPH9lAbyjUmk/JgXcJgCmCE0GNlq2KBiHGnU9Bq
	OxlO71pF45AaqhzRQoaEt8AdpjGl+WxVFsCmfJ5/fOy97YyoL/fVCSp8GZTR87THO5Ip/rdMcF+
	I5qbvH9+M8d63ydrS48CJ71/75+8EDfMJRGPI0552rVzIC3t/7lhDvRPF0h2yfrz1bdGkELM0bX
	CNUV7KuO5alGUqwcmv7EAD1U4UphywjLBQ0dao4nvHSZ5wz0PM/hr/SDuV/dp+MlqquECxqQwer
	yzNAVzTto6l/3YtS92sYFaNm0wOkpjRtQUD0rNLjGrLQx1ReCm9PTaiyPCOhbRr72afaTV8wKL0
	ybVDwSXuV9TYWEoTYHpQ5vokcl2ha6QmmcOLQw2yAxgFlGVVLKMH2VNrLtTKXs336gyBoqqXHHD
	hG/
X-Received: by 2002:a05:600c:a406:b0:48a:9540:1a3a with SMTP id 5b1f17b1804b1-48fe60e56abmr233108995e9.8.1779176003502;
        Tue, 19 May 2026 00:33:23 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:1d4b:274c:94d:a69f? ([2a01:e0a:106d:1080:1d4b:274c:94d:a69f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe537ccf5sm301918365e9.14.2026.05.19.00.33.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2026 00:33:23 -0700 (PDT)
Message-ID: <59760925-a19d-460e-afc9-015dd210f193@linaro.org>
Date: Tue, 19 May 2026 09:33:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 09/13] drm/meson: dw-hdmi: Use devm_clk_get_enabled()
 helper
To: Jonas Karlman <jonas@kwiboo.se>, Kevin Hilman <khilman@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20260518194744.2483580-1-jonas@kwiboo.se>
 <20260518194744.2483580-10-jonas@kwiboo.se>
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
In-Reply-To: <20260518194744.2483580-10-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_003325_391976_73472A98 
X-CRM114-Status: GOOD (  16.65  )
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
> Change to use the devm_clk_get_enabled() helper instead of using an
> open-coded variant.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>   drivers/gpu/drm/meson/meson_dw_hdmi.c | 48 +++++++++------------------
>   1 file changed, 16 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> index fcd2426af9fc..d0cf2042d41c 100644
> --- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
> +++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> @@ -634,29 +634,6 @@ static void meson_dw_hdmi_init(struct meson_dw_hdmi *meson_dw_hdmi)
>   
>   }
>   
> -static void meson_disable_clk(void *data)
> -{
> -	clk_disable_unprepare(data);
> -}
> -
> -static int meson_enable_clk(struct device *dev, char *name)
> -{
> -	struct clk *clk;
> -	int ret;
> -
> -	clk = devm_clk_get(dev, name);
> -	if (IS_ERR(clk)) {
> -		dev_err(dev, "Unable to get %s pclk\n", name);
> -		return PTR_ERR(clk);
> -	}
> -
> -	ret = clk_prepare_enable(clk);
> -	if (!ret)
> -		ret = devm_add_action_or_reset(dev, meson_disable_clk, clk);
> -
> -	return ret;
> -}
> -
>   static int meson_dw_hdmi_bind(struct device *dev, struct device *master,
>   				void *data)
>   {
> @@ -666,6 +643,7 @@ static int meson_dw_hdmi_bind(struct device *dev, struct device *master,
>   	struct drm_device *drm = data;
>   	struct meson_drm *priv = drm->dev_private;
>   	struct dw_hdmi_plat_data *dw_plat_data;
> +	struct clk *clk;
>   	int irq;
>   	int ret;
>   
> @@ -716,17 +694,23 @@ static int meson_dw_hdmi_bind(struct device *dev, struct device *master,
>   	if (IS_ERR(meson_dw_hdmi->hdmitx))
>   		return PTR_ERR(meson_dw_hdmi->hdmitx);
>   
> -	ret = meson_enable_clk(dev, "isfr");
> -	if (ret)
> -		return ret;
> +	clk = devm_clk_get_enabled(dev, "isfr");
> +	if (IS_ERR(clk)) {
> +		dev_err(dev, "Unable to get isfr pclk\n");
> +		return PTR_ERR(clk);
> +	}
>   
> -	ret = meson_enable_clk(dev, "iahb");
> -	if (ret)
> -		return ret;
> +	clk = devm_clk_get_enabled(dev, "iahb");
> +	if (IS_ERR(clk)) {
> +		dev_err(dev, "Unable to get iahb pclk\n");
> +		return PTR_ERR(clk);
> +	}
>   
> -	ret = meson_enable_clk(dev, "venci");
> -	if (ret)
> -		return ret;
> +	clk = devm_clk_get_enabled(dev, "venci");
> +	if (IS_ERR(clk)) {
> +		dev_err(dev, "Unable to get venci pclk\n");
> +		return PTR_ERR(clk);
> +	}
>   
>   	dw_plat_data->regm = devm_regmap_init(dev, NULL, meson_dw_hdmi,
>   					      &meson_dw_hdmi_regmap_config);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31FC0ECE57A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 13:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/BtW81bGh/Jst9MrhfZ2XtvQgPR5TZ7w7Wpl2Tbd3B8=; b=FecpY3KYhqC89fI+VLhiP3NcY0
	HKxPS75Bngd9mJvMVRPkIbZwy56wDP4gzeMDOXxejdpVfqfzKAdOruz8/io4GYmLtF7QoLa5WV5DZ
	JR5ZI/g+eUEQbek1/XZxejLM2s/15/4NGKJ9BPcYJuJqDzwB0JDKy2a+rL1oETu0vAQP5rxjFx8H2
	8VRiWjcP8oxnn44U+KXANa3UwxnHCkBSlC3AigSSkbgSL+ctMp+RE88oeMwnyzIz5uIkRhgCmwS/I
	Nr/z/v9CmuYTQoHJzaNPoKsR1d56dcXeLNGNs6Pv5c8mSbDAcHLBtvWA/Q9q46wRhbKK3j5ksB0bp
	b1X7dw2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sneGQ-000000021nD-0cYu;
	Mon, 09 Sep 2024 13:17:06 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sneGJ-000000021ks-39sy
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Sep 2024 13:17:01 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-42cb60aff1eso10845985e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Sep 2024 06:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725887818; x=1726492618; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sg3XnbABoZRPJGRGcZWLT0fiHtFn27fHJD7M1+IXq9Y=;
        b=zs/fUgsR6JXaz4aLin8r0su1WsxZao3bb3M96Ptu2HLwv0GMqNH6HXogoYi6hMI71h
         c88qSONJ8xPDk9JnLZtI1Xk6oOCZYpG0tmF0RGtVT/Ye6jfUzh/0uQapxB/Pki+9VZzB
         hXMPB7fO+ygTE/m0EDPx5XHIwA+EPLdiWiofDIzsK2e4MzjgCn82Kp3vf0ucCb80Jxa8
         AaQA6y7HwMccDLtb7S5z80MWGswvJro449g93VC0VSpwSA9A+YkxiwHAHGFAUDlbkU6s
         vcJulLwWfm+438pCpKlLtEorHnr2RyBeeCR5G5JvVP2cn0jky9TWZ0SkXlLwKjKYpfBj
         ajDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725887818; x=1726492618;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Sg3XnbABoZRPJGRGcZWLT0fiHtFn27fHJD7M1+IXq9Y=;
        b=qsdoEcv9sLMysxRlSvAg/NvUkZtw4KAHyX8K6Oala1h8WFsoCER7kWsydsELOZRO5Z
         V0jsuR8f0es52vIjuUJD+c2/zaHiQKD1yqUXCln5YV6SEppP4//dx37GQpbh6G8Twf9+
         Pitb3suah37TieiBMZDXu10JthkQ1B9Fx8+tJ1zN6Jrf8lQrzGa3jPXp0/ntOsoRZZUR
         pXI6A5Z7Vaw9T9ELfZOwJiTuuQsRidLZY3I00IwLhycx8mXycOiXw/Fq1pnFZArN3mQk
         ROSvMdP8zK0BJ6VhWZz+/fE46fJdkD3+Ga5rzz1nQz8YYY7jJTc4+rs5vecOi+3Nm1xx
         h+gA==
X-Forwarded-Encrypted: i=1; AJvYcCWIrCyYTbiEHPT2ut6Y932o32/tfDpd02Gi04SYyF+LliLuhYMxSO3+V+51JjAOUM/aZQnuD3QK++32sn4lmA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+lTRGsaGgtLwrNYPkqWualJILL20xAl+qoM5tE9bEX5WgzYzY
	ICcJUctg/mBRcTcLoBmLLOd0ktW5VT7NQonZva8WJ+PHZMKaJTP99LyzyrTPz6M=
X-Google-Smtp-Source: AGHT+IHLaFRmjXq7bnm5y4AJSqSjgdR4U2OGsCo8bfREbnp9ZgT2lMllHdorREM+yqOr4qBpHp+aLQ==
X-Received: by 2002:a05:600c:548a:b0:42c:bae0:f057 with SMTP id 5b1f17b1804b1-42cbae0f29fmr9879275e9.8.1725887817701;
        Mon, 09 Sep 2024 06:16:57 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:63a3:6883:a358:b850? ([2a01:e0a:982:cbb0:63a3:6883:a358:b850])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ca05c2656sm109292335e9.7.2024.09.09.06.16.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2024 06:16:57 -0700 (PDT)
Message-ID: <bc0b47d9-ad8d-4beb-aad4-6dff79f48842@linaro.org>
Date: Mon, 9 Sep 2024 15:16:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 02/10] drm: bridge: dw_hdmi: Only notify connected
 status on HPD interrupt
To: Jonas Karlman <jonas@kwiboo.se>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Lucas Stach <l.stach@pengutronix.de>
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Christopher Obbard <chris.obbard@collabora.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240908132823.3308029-1-jonas@kwiboo.se>
 <20240908132823.3308029-3-jonas@kwiboo.se>
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
In-Reply-To: <20240908132823.3308029-3-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_061659_843726_03C8BDBE 
X-CRM114-Status: GOOD (  18.26  )
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
> drm_helper_hpd_irq_event() and drm_bridge_hpd_notify() may incorrectly
> be called with a connected status when HPD is high and RX sense is
> changed. This typically happen when the HDMI cable is unplugged, shortly
> before the HPD is changed to low.
> 
> Fix this by only notify connected status on the HPD interrupt when HPD
> is going high, not on the RX sense interrupt when RX sense is changed.
> 
> Fixes: da09daf88108 ("drm: bridge: dw_hdmi: only trigger hotplug event on link change")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v2: New patch
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 9e7f86a0bf5c..055fc9848df4 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -3123,7 +3123,8 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
>   			mutex_unlock(&hdmi->cec_notifier_mutex);
>   		}
>   
> -		if (phy_stat & HDMI_PHY_HPD)
> +		if ((intr_stat & HDMI_IH_PHY_STAT0_HPD) &&
> +		    (phy_stat & HDMI_PHY_HPD))
>   			status = connector_status_connected;
>   
>   		if (!(phy_stat & (HDMI_PHY_HPD | HDMI_PHY_RX_SENSE)))

Perhaps this should be also checked for the other lines checking HDMI_PHY_HPD ?

Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41D0BECE57E
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 13:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8/ech5NHXC9kSoeDV2+/s24M6w8A/EW8sLQh63Og5x0=; b=4E32wzQj+uV5eUjvUqG2ii2s40
	BUvvsbAeqFcIeE5h8QpSmv2d34ZzqJUU+cvtbTAISYCK1K+uBW6gU8de7IqDtloH/iFkWFFFcayVK
	Sb7+LYJOROAmW40kMyRbAr+oSZy1a9KlWSBYomPc/TC+SH+EQmMLwkwXg/WcTH+mXt2HXa5w4kxRw
	8Bc1XsolDrO4jhcETajE0xFWtSRFEuSxnpNRKKalwff0RqmZx7I7R1j3BHS2JJ/Th1CEtqg1hV8LC
	XAA4aZjWjEKhuoxzu+bX9Q6YcA+WaMDEFsAMnui7eghXYDeL7/F1FTTtMLI5u6Q/rSR/QyjX9/0X8
	mTQmuu0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sneGP-000000021n3-2JOR;
	Mon, 09 Sep 2024 13:17:05 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sneEr-000000021QX-14mH
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Sep 2024 13:15:30 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-374bb08d011so2501993f8f.3
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Sep 2024 06:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725887728; x=1726492528; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B95ObHJpdojG5xYgPYvRks8MDbQVxroVTSkoySW7Ido=;
        b=swcteDjWwaDDsRciAqfQ/Ov+Glnw35/9EPWXdfekMBX59ek7XGHEZwcwi71Et5mw+d
         KBItMvT87fSDTBw66keqc1V6AhgQI5S7WeTw94RCkUbRcjsU+exOXCgLlKULIFKWls71
         9oS5fpof/rYuA+7DuIdAMxbPZMddYZUa3CkqTQF2IobqYicr6zSI7rsJlI+0ayIWB40g
         zhcyMtZ8SQjcUJxxP+6Q5vOL4JNEX9fSonD03xaXgWLkesZDF8RudXemtdwIhtOVJLdR
         kc6+hzoPvCS8cobCryYd9QxundaznzUVG8+veJvXc2n1/pj5OGZi/HYiK8apu6btZr+v
         PNhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725887728; x=1726492528;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B95ObHJpdojG5xYgPYvRks8MDbQVxroVTSkoySW7Ido=;
        b=mLJEwGadDIYGR3P98nxtGHD0ULkN0ZWnz6jKVoBOWuNGuSId/QnBlcEJouvEwGnFGc
         6yjKFXO7yzcs+wC2JoYNwBA0s7Kf08Twsvp2PlxVec9zKDcRj5nXwc3S6ojw5X+s2WwA
         E9jZY+J/jmZQ6zG5jvxWnbaU0sDhCd7mg4d8JMdIbMEuflofm0VvDS8usGqZZK9KYyNK
         lxsOHEdwC2bSnCpCLFqWmWJzs5TUGhP5ivR6pe9afOiwPNiqvZ5sDdNqFOmDzhIZ2XTy
         47KgDw0z6Wpbb36zvUB4gQ2YdskY7IJevWyz+6DkW55BevSN35PYvazdIS/MTfX+SLfU
         ivVQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1vzt3UX5moq6wuHkTNVrPMBspYtP8dgKIGjnpwyUeUmyrtdrDBUe/s006wJnsBLAlFerTu3DXYekvj/oGMQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzXmltr9TL9/ENTtt8OVPK1hzvY4gAGiD4cRxQNdMetvw74Ulfq
	g68NWX87CbftMaMuyNVmo5154N+VAXo8eFelpndf3MlonYWv434pOX//lvzFYwQ=
X-Google-Smtp-Source: AGHT+IEU43fgBZkJDiu5N74vNjtuUNPxSdgWTgzbyhk1oykhQZa3fOmHlH6jxK/DCxOHnZ+0No77XA==
X-Received: by 2002:adf:f74b:0:b0:36b:b297:1419 with SMTP id ffacd0b85a97d-378895ca68dmr7209193f8f.20.1725887726980;
        Mon, 09 Sep 2024 06:15:26 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:63a3:6883:a358:b850? ([2a01:e0a:982:cbb0:63a3:6883:a358:b850])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378956653d1sm6002863f8f.33.2024.09.09.06.15.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2024 06:15:26 -0700 (PDT)
Message-ID: <8cdfa4f1-3acd-4839-a490-9152174e3136@linaro.org>
Date: Mon, 9 Sep 2024 15:15:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 01/10] drm: bridge: dw_hdmi: Disable scrambler feature
 when not supported
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
 <20240908132823.3308029-2-jonas@kwiboo.se>
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
In-Reply-To: <20240908132823.3308029-2-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_061529_351228_228DB2E8 
X-CRM114-Status: GOOD (  16.80  )
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
> The scrambler feature can be left enabled when hotplugging from a sink
> and mode that require scrambling to a sink that does not support SCDC or
> scrambling.
> 
> Typically a blank screen or 'no signal' message can be observed after
> using a HDMI 2.0 4K@60Hz mode and then hotplugging to a sink that only
> support HDMI 1.4.
> 
> Fix this by disabling the scrambler feature when SCDC is not supported.
> 
> Fixes: 264fce6cc2c1 ("drm/bridge: dw-hdmi: Add SCDC and TMDS Scrambling support")
> Reported-by: Christopher Obbard <chris.obbard@collabora.com>
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v2: New patch
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 0031f3c54882..9e7f86a0bf5c 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -2117,6 +2117,8 @@ static void hdmi_av_composer(struct dw_hdmi *hdmi,
>   				    HDMI_MC_SWRSTZ);
>   			drm_scdc_set_scrambling(hdmi->curr_conn, 0);
>   		}
> +	} else if (hdmi->version >= 0x200a) {
> +		hdmi_writeb(hdmi, 0, HDMI_FC_SCRAMBLER_CTRL);
>   	}
>   
>   	/* Set up horizontal active pixel width */

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

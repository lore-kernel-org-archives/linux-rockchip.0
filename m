Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B228ACD4F3C
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 09:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9WsGRnuoJk8VhCs05t/65oDbCn2RKXftPF7Wqo+zxyk=; b=juMnDoQFo5rr9+4ardmM9F8+Ir
	SW6u5yqhYjPHPC2ttFbRn0oqKE77KsUwLpxyKrPwAXnMI8BqTLZ+HIirsG7PtIoqDRS0phUwEwyzp
	uM5NidXXeW655Y5BKthpv/I6I2E/hOzkvviOWkMbpQ/eD7BkrD8VGTDGKQ0pP/BbdzsdpNq3tbqzx
	Yl38Ee4qNjcgC9vWncFwhFWaB2jRqOyb8OmjupebxuImjbXyWbu7uXfAoDV3+Uqjlil5sMsDrd6o4
	CPv4StdT15RPmAuWR1yejTTgBRfJX3lFbRkyvDoy5x/nOUqtjcImfCYGvo/MZPX42eBXfi9OMaA8i
	RYPbeLpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPdhs-00000004Fbr-47B3;
	Wed, 20 May 2026 09:59:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPdhq-00000004FaZ-3uTj
	for linux-rockchip@bombadil.infradead.org;
	Wed, 20 May 2026 09:59:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Cc:To:Subject:Reply-To:From:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description;
	bh=fdECDhsPbmxIQbhRIxq+WIlDy168HO+dUwyzYZe+8DA=; b=ngDYGV/4h1ScIsfNizGNIHpixI
	EN+t2iCySs/elzBB7qFxF1s0ApPHrY2d0ru8LSmmiwy/YjWnTFRfCuq3zrPT318mcK/itfwmXAlGU
	AT1KHqPTqF9IWz5jZBNDS0FW/RoSK8qMO+t9709iKQSiCjjIAVxTTB42qIh/73xv5ifOh7R6lYuG7
	u8vzzC11+ANYjnUFSfhSkGwsSw4zSY0zsp4RV3QDS7r+XRQZuocB/FYWCa+QY+fmoNn8At55VS+8Q
	TvAkqaE1kHJhCZFlSyi5RWY1QjekhfIaCtXL6jRj58tXGyELnBTK6NKQVHFKXqYreQr4+iyJeUoTZ
	sN6MDrXg==;
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPdhU-0000000GQrS-1QW2
	for linux-rockchip@lists.infradead.org;
	Wed, 20 May 2026 09:59:12 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-488a88aeec9so55100395e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 20 May 2026 02:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779271109; x=1779875909; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fdECDhsPbmxIQbhRIxq+WIlDy168HO+dUwyzYZe+8DA=;
        b=op5bF3e51dAd90cYMN70G3/UT1eeVObbQROGPtbIu6sRCaaZhK51hVoGe/TGtzRPtV
         nNqlxE68kjstgpqToZ89jmtQepukLIfZSio4bq9FussSXRvf1YXWnZC0FgEheLpCeN/X
         lCqXKNpNPJduwGucNKefiUU8+geDXHRSc/x1iAK6ODFy8XID5WusD3HHCGR3rVXpjNEG
         eAHcLRThXBaTTIuk8wFx+nDReM+oc9n5IpoWoJp8WDzzi1Bd7vbl4A3EbYFASnAw+zZW
         ioKRPGZ59C/5oM5lPg3nnUZta1Hqw/siakuPQt/SJrY0pZctw1nGHNXbLshGFqndA2Nw
         FyTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779271109; x=1779875909;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fdECDhsPbmxIQbhRIxq+WIlDy168HO+dUwyzYZe+8DA=;
        b=rOLU82AunjCAQ6rg59JuVfktzCUIELM9V/A/wQvGShwLnhlu5R6xNW/SIXk8K0iYIb
         GOvMzc0koPB719ARbbJUsKjN2cIaMUHXlEcgo4phbzysGlqIF3XjeQGouLtwCBN3qFMv
         mbpBh624pwniK+IY4uiP/+eMk4FAHVtoQ5Z6u/ETGZLuDJRz7R4n9EXG9ay6tDAVisHd
         QRcJZ9JayAmFPkNzhGAVoEIxG0Oj0j2yDt1nZcQW0Q2PJB55x8kSI2x8mP30BUCe8W1p
         2nnIDajjfRBIQqWPXTO5/2wd/RXsOWCA6Hey9i2ZX402Hg576ro9nQ3tu3GDPYdJHYva
         vEAw==
X-Forwarded-Encrypted: i=1; AFNElJ9SLhHAbR7snrb5OJKtl9U57vltpbJQAcsaNUJIMbAOAXKfR0RWH6cls/aqv2Riivi/rC6zzLU9Jd+kzW/AMw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyy999dpMsyVOjrNDYcRftTq620+fWf9jOsJMS/t8o8/oLOfMid
	niK9Tbz2gPyEluJucMb6idvGuGre9A+Q7e41dylsYUo3rLGv1of2AHZE22g/uWsPC/w=
X-Gm-Gg: Acq92OH8iVjagh8rJLXTvH6fUjB7cqFtKSolSmIoj+Uteh0l9q8ARptdC09EfLt2M16
	CWA+4nTdccccbJ2wMVBQnlnORFMaBTslZIt2sjuVB76tBbUwo4UrqJbO1107YaT5mmOap+2tYxv
	BtAa9f+HSAwrpNH+M2QKF0YcEAUeKSs1uPiPMFgo3V1puMo+fSFK/qpTC1Sb7ahqhsNVRWgLdCY
	GBvWB3nVugSUfpTcmlHeHaTwyVVzwhD1ZdeYJPZfhwLeLenK3nQ8Ga0+m8D+mAGmbp6T64Ovzhl
	kzJoV8EVC6RsMj+ne0bKfvHNdvtkLScxKxgXMDSDHd5l6PyxcqMZBMz3E9YtyGbDIr3xZM+0qMT
	buvrL2udXQ3TjKm4q2q7HIV6+YjGjhkCyYQTWHKELrJGoN4/A37ENTXp8cSxR4vmL/kFhPRoEZN
	bk88TdLqEUB64aGCEtPJpS2LQIqWLYorDNQSgQQIwIhS6gPoFzqf/ayoiK5tfboGPpLqv2qy0O9
	yWvcN1atrlvyGg=
X-Received: by 2002:a05:600c:6206:b0:489:5022:39a4 with SMTP id 5b1f17b1804b1-48fe60e79fdmr368845595e9.9.1779271108519;
        Wed, 20 May 2026 02:58:28 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5dda:3751:f88e:6ff? ([2a01:e0a:106d:1080:5dda:3751:f88e:6ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48febe83ba2sm126159225e9.35.2026.05.20.02.58.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2026 02:58:28 -0700 (PDT)
Message-ID: <e584ab2b-677d-4893-95c9-7b68165633c6@linaro.org>
Date: Wed, 20 May 2026 11:58:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v7 19/23] drm: bridge: dw_hdmi: Use delayed_work to
 debounce hotplug event
To: Jonas Karlman <jonas@kwiboo.se>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Robert Foss <rfoss@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: Liu Ying <victor.liu@nxp.com>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@kernel.org>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <diederik@cknow-tech.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20260518180206.2480119-1-jonas@kwiboo.se>
 <20260518180206.2480119-20-jonas@kwiboo.se>
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
In-Reply-To: <20260518180206.2480119-20-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_105853_628233_2C55A844 
X-CRM114-Status: GOOD (  41.90  )
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

Hi,

On 5/18/26 20:01, Jonas Karlman wrote:
> HDMI Specification Version 1.4b chapter 8.5 mentions:
> 
>    An HDMI Sink shall not assert high voltage level on its Hot Plug
>    Detect pin when the E-EDID is not available for reading.
> 
>    A Source may use a high voltage level Hot Plug Detect signal to
>    initiate the reading of E-EDID data.
> 
>    An HDMI Sink shall indicate any change to the contents of the E-EDID
>    by driving a low voltage level pulse on the Hot Plug Detect pin. This
>    pulse shall be at least 100 msec.
> 
> Use a delayed work to debounce reacting on HPD events to improve
> handling of a HPD low voltage level pulse when a sink changes the EDID.
> 
> The delayed work is only enabled between enable_hpd()/hpd_enable() and
> disable_hpd()/hpd_disable() calls from core, i.e. enabled after
> attach/bind/resume and disabled before detach/unbind/suspend.
> 
> The 1100 msec hotplug debounce timeout was arbitrarily picked to match
> other drivers using same const, and testing using a Raspberry Pi Monitor
> seem to use a 200-300 msec pulse when going from standby to power on
> state.

The logic looks ok, but I'm puzzled by the 1.1 sec debounce, which after
plugging in a monitor will only send an irq event after 1.1s which is very long.

Since the spec says 100ms and the real worls values are more like 200-300ms,
I would first reduce this to 500ms.

But as I understand the code right now, on the first HPD front the irq work
is programmed to run after the debounce time, but if it's a pulse the irq would
also trigger on the second HPD front and then delay again the work after the
debounce time.

My understanding of a debounce was that we "ignore" the pulse by only generating
a single irq event when the pulse is finished.

The current code does that, we will only have a single irq event and the HPD
will return as connected state, good. But this delays the irq event 1.1s _after_
the end of the pulse, which I would expect the event to be send at tht debounce
time after the start of the pulse.

Like, program the work at the beginning of the pulse, if somehow the pulse ends before
the debounce time, send the irq event immediately, otherwise let the debounce
work run after the debounce time which will trigger a disconnect event.

But the delay is too high, 1.1s could be a manual unplug/plug or bad connector
with false contact on the hpd pin.

I would rather reduce this to something more realistic like 500ms or less and
try to better handle the pulse somehow. But I don't have any idea if the scheme
I described is doable.

Neil

> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v7: Change to free irq before mute and clear using IH regs, also include
>      clear of STAT0_RX_SENSE
> v6: Change back to disable_delayed_work_sync() in hpd disable ops,
>      Ensure HPD interrupt is masked and IRQ handler is disabled early
>      in dw_hdmi_remove() to prevent any irq re-arming of delayed work,
>      Drop use of suspend helper
> v5: Change to none-sync disable_delayed_work() in hpd disable ops,
>      Change to cancel_delayed_work_sync() in remove,
>      Add cancel_delayed_work_sync() to new suspend helper
> v4: Disable/mask delayed_work until enable_hpd()/hpd_enable(),
>      Read connector status directly from HW regs in hpd_work
> v3: New patch
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 80 +++++++++++++++++++++--
>   1 file changed, 75 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 8afc9d240121..270db58a0e7c 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -50,6 +50,8 @@
>   
>   #define HDMI14_MAX_TMDSCLK	340000000
>   
> +#define HOTPLUG_DEBOUNCE_MS	1100
> +
>   static const u16 csc_coeff_default[3][4] = {
>   	{ 0x2000, 0x0000, 0x0000, 0x0000 },
>   	{ 0x0000, 0x2000, 0x0000, 0x0000 },
> @@ -185,6 +187,7 @@ struct dw_hdmi {
>   	hdmi_codec_plugged_cb plugged_cb;
>   	struct device *codec_dev;
>   	enum drm_connector_status last_connector_result;
> +	struct delayed_work hpd_work;
>   };
>   
>   const struct dw_hdmi_plat_data *dw_hdmi_to_plat_data(struct dw_hdmi *hdmi)
> @@ -2517,6 +2520,20 @@ static void dw_hdmi_connector_force(struct drm_connector *connector)
>   	dw_hdmi_connector_status_update(hdmi, connector, connector->status);
>   }
>   
> +static void dw_hdmi_connector_enable_hpd(struct drm_connector *connector)
> +{
> +	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
> +
> +	enable_delayed_work(&hdmi->hpd_work);
> +}
> +
> +static void dw_hdmi_connector_disable_hpd(struct drm_connector *connector)
> +{
> +	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
> +
> +	disable_delayed_work_sync(&hdmi->hpd_work);
> +}
> +
>   static void dw_hdmi_connector_destroy(struct drm_connector *connector)
>   {
>   	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
> @@ -2538,6 +2555,8 @@ static const struct drm_connector_funcs dw_hdmi_connector_funcs = {
>   static const struct drm_connector_helper_funcs dw_hdmi_connector_helper_funcs = {
>   	.get_modes = dw_hdmi_connector_get_modes,
>   	.atomic_check = dw_hdmi_connector_atomic_check,
> +	.enable_hpd = dw_hdmi_connector_enable_hpd,
> +	.disable_hpd = dw_hdmi_connector_disable_hpd,
>   };
>   
>   static int dw_hdmi_connector_create(struct dw_hdmi *hdmi)
> @@ -2968,6 +2987,20 @@ static const struct drm_edid *dw_hdmi_bridge_edid_read(struct drm_bridge *bridge
>   	return dw_hdmi_edid_read(hdmi, connector);
>   }
>   
> +static void dw_hdmi_bridge_hpd_enable(struct drm_bridge *bridge)
> +{
> +	struct dw_hdmi *hdmi = bridge->driver_private;
> +
> +	enable_delayed_work(&hdmi->hpd_work);
> +}
> +
> +static void dw_hdmi_bridge_hpd_disable(struct drm_bridge *bridge)
> +{
> +	struct dw_hdmi *hdmi = bridge->driver_private;
> +
> +	disable_delayed_work_sync(&hdmi->hpd_work);
> +}
> +
>   static const struct drm_bridge_funcs dw_hdmi_bridge_funcs = {
>   	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
>   	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
> @@ -2981,6 +3014,8 @@ static const struct drm_bridge_funcs dw_hdmi_bridge_funcs = {
>   	.mode_valid = dw_hdmi_bridge_mode_valid,
>   	.detect = dw_hdmi_bridge_detect,
>   	.edid_read = dw_hdmi_bridge_edid_read,
> +	.hpd_enable = dw_hdmi_bridge_hpd_enable,
> +	.hpd_disable = dw_hdmi_bridge_hpd_disable,
>   };
>   
>   /* -----------------------------------------------------------------------------
> @@ -3101,8 +3136,8 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
>   			status == connector_status_connected ?
>   			"plugin" : "plugout");
>   
> -		if (hdmi->bridge.dev)
> -			drm_helper_hpd_irq_event(hdmi->bridge.dev);
> +		mod_delayed_work(system_percpu_wq, &hdmi->hpd_work,
> +				 msecs_to_jiffies(HOTPLUG_DEBOUNCE_MS));
>   	}
>   
>   	hdmi_writeb(hdmi, intr_stat, HDMI_IH_PHY_STAT0);
> @@ -3112,6 +3147,29 @@ static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
>   	return IRQ_HANDLED;
>   }
>   
> +static void dw_hdmi_hpd_work(struct work_struct *work)
> +{
> +	struct dw_hdmi *hdmi = container_of(work, struct dw_hdmi, hpd_work.work);
> +	struct drm_device *dev = hdmi->bridge.dev;
> +
> +	if (WARN_ON(!dev))
> +		return;
> +
> +	/*
> +	 * Notify the DRM core of the HPD event using drm_helper_hpd_irq_event()
> +	 * instead of drm_bridge_hpd_notify(). This will cause the DRM function
> +	 * check_connector_changed() to be called, which in turn calls the
> +	 * connector detect()/force() funcs to detect any connection status or
> +	 * epoch changes. The bridge connector detect() func also ensures that
> +	 * any hpd_notify() funcs are called for all bridges in the chain.
> +	 *
> +	 * drm_bridge_hpd_notify() shares a mutex with drm_bridge_hpd_disable(),
> +	 * and can result in a deadlock due to the disable_delayed_work_sync()
> +	 * call to wait on work to complete in dw_hdmi_bridge_hpd_disable().
> +	 */
> +	drm_helper_hpd_irq_event(dev);
> +}
> +
>   static const struct dw_hdmi_phy_data dw_hdmi_phys[] = {
>   	{
>   		.type = DW_HDMI_PHY_DWC_HDMI_TX_PHY,
> @@ -3396,6 +3454,9 @@ struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
>   		goto err_res;
>   	}
>   
> +	INIT_DELAYED_WORK(&hdmi->hpd_work, dw_hdmi_hpd_work);
> +	disable_delayed_work(&hdmi->hpd_work);
> +
>   	ret = devm_request_threaded_irq(dev, irq, dw_hdmi_hardirq,
>   					dw_hdmi_irq, IRQF_SHARED,
>   					dev_name(dev), hdmi);
> @@ -3532,6 +3593,18 @@ EXPORT_SYMBOL_GPL(dw_hdmi_probe);
>   
>   void dw_hdmi_remove(struct dw_hdmi *hdmi)
>   {
> +	struct platform_device *pdev = to_platform_device(hdmi->dev);
> +	int irq = platform_get_irq(pdev, 0);
> +
> +	/* Free, mute and clear phy interrupts */
> +	devm_free_irq(hdmi->dev, irq, hdmi);
> +	hdmi_writeb(hdmi, ~0, HDMI_IH_MUTE_PHY_STAT0);
> +	hdmi_writeb(hdmi, HDMI_IH_PHY_STAT0_HPD | HDMI_IH_PHY_STAT0_RX_SENSE,
> +		    HDMI_IH_PHY_STAT0);
> +
> +	/* Cancel any pending hot plug work */
> +	cancel_delayed_work_sync(&hdmi->hpd_work);
> +
>   	drm_bridge_remove(&hdmi->bridge);
>   
>   	if (hdmi->audio && !IS_ERR(hdmi->audio))
> @@ -3539,9 +3612,6 @@ void dw_hdmi_remove(struct dw_hdmi *hdmi)
>   	if (!IS_ERR(hdmi->cec))
>   		platform_device_unregister(hdmi->cec);
>   
> -	/* Disable all interrupts */
> -	hdmi_writeb(hdmi, ~0, HDMI_IH_MUTE_PHY_STAT0);
> -
>   	if (hdmi->i2c)
>   		i2c_del_adapter(&hdmi->i2c->adap);
>   	else


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

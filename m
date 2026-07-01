Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12DFBC43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 10:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ue9AUWaFfQaezVgQhNes90PyxndKErF42NtaFZRDmGw=; b=Yodsw8OQgfDDHa
	QZD6mi6nNM8VGX6GPqKVR8hWZaNUqFJrzVZ7jhlm3GpSGHcladHtvtWVAIEoMoArxHDNooN9nk/c9
	3kfJojTJjwjt7JArgKh595C24GX7ZD7kgzliAwSyfo5+qaT/Ah9m/UNKwHRjFJrDZLkqYdubveU5z
	htefscOU9aAR0AadNJw8gvlCm2FyEf34kQ5KgqzuGP7Wcc97i9BsaB0c4t9JDpBSwlHxEEa1PueZK
	6JUjV5FW99NbhyDBeMPhfLwd7th2W/BcOmL9lARifJAdhauJv41/ARSEi4iAmhNhU2IZq89tmlU7P
	YWMxgHmGhoGfVBTDR51Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wesRk-00000001LPy-0fJt;
	Wed, 01 Jul 2026 10:45:36 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wesRh-00000001LPK-04Dx
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 10:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1782902731;
 bh=d2IWXZq6Dmau8UfTNk+TACUN3QluuzDtTFgWgtgZaB0=;
 b=CokLCXHTEBA8Z+6YCs2P8g0mYvQch028wq4YkMkcH7sX1UNQO9X7E3dYIOXPYS2hV8EAW3P4b
 gJ01r9FyoRStT6QQjIZ3oh2B0QYWW2R0YWv87+daPFU85J4xjCr9ppHvDN2fa9IYAq1V+N715ke
 ErYHWfdAj+D/7OaIcJ5V/J6DciFXTETo6FKsMc8JqhphZPw3Zr3kiY8x9t3wsqwsod1j9/qfIFU
 9eGmZf4Lmx1jaHW1G3qkNcL/w8vJGcwE/iicfTRpW/jHuDTxbP1Gj7fWpkN8YcAvLdBCxUycU+Q
 6zD9N6eMzCE0RpiZKZOC34x7nymx3gDgR08RmlgcUH0w==
X-Forward-Email-ID: 6a44efc46e27ac04145a5a04
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.9.1
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <35572b83-0e1e-4b2d-932e-47818fc815a4@kwiboo.se>
Date: Wed, 1 Jul 2026 12:45:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: dw_hdmi: Fix error handling for
 drm_atomic_get_bridge_state()
To: Chen Ni <nichen@iscas.ac.cn>, heiko@sntech.de
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
References: <20260701030835.2662123-1-nichen@iscas.ac.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260701030835.2662123-1-nichen@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_034533_363074_61A00AA0 
X-CRM114-Status: GOOD (  12.52  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On 7/1/2026 5:08 AM, Chen Ni wrote:
> The drm_atomic_get_bridge_state() function returns an error pointer on
> failure, not NULL. Fix the check to use IS_ERR() to correctly handle
> allocation failures.
> 
> Fixes: dc70272cc184 ("drm/rockchip: dw_hdmi: Propagate bus format to display driver")
> Signed-off-by: Chen Ni <nichen@iscas.ac.cn>

Thanks, I missed similar change in v15 of 'Add new general DRM property
"color format"' series.

Reviewed-by: Jonas Karlman <jonas@kwiboo.se>

Regards,
Jonas

> ---
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index cffc0af5190f..766cf21a4be7 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -287,7 +287,7 @@ static u32 dw_hdmi_rockchip_get_bus_format(struct drm_encoder *encoder,
>  		return 0;
>  
>  	bridge_state = drm_atomic_get_bridge_state(conn_state->state, bridge);
> -	if (!bridge_state)
> +	if (IS_ERR(bridge_state))
>  		return 0;
>  
>  	if (bridge_state->input_bus_cfg.format != MEDIA_BUS_FMT_FIXED)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

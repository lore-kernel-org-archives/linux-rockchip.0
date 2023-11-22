Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D70DAC61D9C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 22:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UbSTwPCluVsSekDozoFYtZ6DwYx6X5S+wzTZnneub1c=; b=2DL2K9TEhnKhHm
	/rrQT+j+/B7vlMMw0cwB5urIoXN5YZIkisZcw/MGwP6R/fExZSRbLCndW2yIM4a0gPFtZKOU7LT9w
	OGQpR6r/m7UCXfW/q32CqHrQ3fPmQAYKNISOR5hYiRQHvwhDG9Xz+Gsx4Sm0E5YdzjeP1FDxZb5NF
	+qxn2mTnQRmR0VuPLFwvxUHlSOyrZqH5A0oq9U2FAFzW7domhcuDPyN452IJSqsZuAd6sHmG02qIy
	vK4T44ZuxviQT2NRAQgYngh3tuRrTOoEklsVN5uzeHhz8OEnerwlj1gXZmVSjn4IvnjTRdNMJRBhV
	ZSUP8GisNzqq9nBbVv0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5vkG-003D6s-21;
	Wed, 22 Nov 2023 22:30:56 +0000
Received: from [50.53.46.231] (helo=[192.168.254.15])
	by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
	id 1r5vkD-003D6K-34;
	Wed, 22 Nov 2023 22:30:53 +0000
Message-ID: <a194eb9e-c11e-4bc2-a1b3-d43122973368@infradead.org>
Date: Wed, 22 Nov 2023 14:30:53 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: rk3066_hdmi: include drm/drm_atomic.h
Content-Language: en-US
To: Arnd Bergmann <arnd@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Johan Jonker <jbx6244@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
 Douglas Anderson <dianders@chromium.org>,
 Azeem Shaikh <azeemshaikh38@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231122221838.3164349-1-arnd@kernel.org>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20231122221838.3164349-1-arnd@kernel.org>
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



On 11/22/23 14:18, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Without this header, the newly added code fails to build:
> 
> drivers/gpu/drm/rockchip/rk3066_hdmi.c: In function 'rk3066_hdmi_encoder_enable':
> drivers/gpu/drm/rockchip/rk3066_hdmi.c:397:22: error: implicit declaration of function 'drm_atomic_get_new_connector_state'; did you mean 'drm_atomic_helper_connector_reset'? [-Werror=implicit-function-declaration]
>   397 |         conn_state = drm_atomic_get_new_connector_state(state, &hdmi->connector);
>       |                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>       |                      drm_atomic_helper_connector_reset
> drivers/gpu/drm/rockchip/rk3066_hdmi.c:397:20: error: assignment to 'struct drm_connector_state *' from 'int' makes pointer from integer without a cast [-Werror=int-conversion]
>   397 |         conn_state = drm_atomic_get_new_connector_state(state, &hdmi->connector);
>       |                    ^
> drivers/gpu/drm/rockchip/rk3066_hdmi.c:401:22: error: implicit declaration of function 'drm_atomic_get_new_crtc_state'; did you mean 'drm_atomic_helper_swap_state'? [-Werror=implicit-function-declaration]
>   401 |         crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
>       |                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>       |                      drm_atomic_helper_swap_state
> drivers/gpu/drm/rockchip/rk3066_hdmi.c:401:20: error: assignment to 'struct drm_crtc_state *' from 'int' makes pointer from integer without a cast [-Werror=int-conversion]
>   401 |         crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
>       |                    ^
> 
> Fixes: ae3436a5e7c2 ("drm/rockchip: rk3066_hdmi: Switch encoder hooks to atomic")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Randy Dunlap <rdunlap@infradead.org>
Tested-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

Thanks.

> ---
>  drivers/gpu/drm/rockchip/rk3066_hdmi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> index 0e7aae341960..7d561c5a650f 100644
> --- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> +++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> @@ -4,6 +4,7 @@
>   *    Zheng Yang <zhengyang@rock-chips.com>
>   */
>  
> +#include <drm/drm_atomic.h>
>  #include <drm/drm_edid.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_probe_helper.h>

-- 
~Randy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

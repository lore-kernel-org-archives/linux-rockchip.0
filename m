From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v2 20/43] drm/bridge: analogix_dp: Extend hpd check time
 to 100ms
Date: Mon, 29 Jan 2018 16:02:46 -0500
Message-ID: <20180129210245.cpalhgdzjkvdwehn@art_vandelay>
References: <20180126131710.7622-1-thierry.escande@collabora.com>
 <20180126131710.7622-21-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20180126131710.7622-21-thierry.escande@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Thierry Escande <thierry.escande@collabora.com>
Cc: Archit Taneja <architt@codeaurora.org>, Inki Dae <inki.dae@samsung.com>, Thierry Reding <thierry.reding@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, Tomasz Figa <tfiga@chromium.org>, Haixia Shi <hshi@chromium.org>, =?iso-8859-1?Q?=D8rjan?= Eide <orjan.eide@arm.com>, Zain Wang <wzz@rock-chips.com>, Yakir Yang <ykk@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Mark Yao <mark.yao@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jan 26, 2018 at 02:16:47PM +0100, Thierry Escande wrote:
> From: Lin Huang <hl@rock-chips.com>
> 
> There was a 1ms delay to detect the hpd signal, which is too short to
> detect a short pulse. This patch extends this delay to 100ms.

The commit message doesn't align with the code here. The code below matches the
code in the CrOS tree, so let's just fix up the commit message.


> 
> Cc: Stéphane Marchesin <marcheu@chromium.org>
> Cc: 征增 王 <wzz@rock-chips.com>
> Signed-off-by: Lin Huang <hl@rock-chips.com>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
> Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index fa4ef28e286f..9df92dc54dbe 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -76,7 +76,7 @@ static int analogix_dp_detect_hpd(struct analogix_dp_device *dp)
>  			return 0;
>  
>  		timeout_loop++;
> -		usleep_range(10, 11);
> +		usleep_range(1000, 1100);
>  	}
>  
>  	/*
> -- 
> 2.14.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

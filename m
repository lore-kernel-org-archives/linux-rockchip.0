From: Francesco Lavra <francescolavra.fl-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 3/3] drm/panel: add panel driver for Elida KD35T133 panels
Date: Tue, 25 Feb 2020 11:49:13 +0100
Message-ID: <026a2176-cded-d6ea-7fab-d1425ab3dd5d@gmail.com>
References: <20200223150711.194482-1-heiko@sntech.de>
 <20200223150711.194482-3-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200223150711.194482-3-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, robin.murphy-5wv7dgnIgG8@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org, christoph.muellner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 2/23/20 4:07 PM, Heiko Stuebner wrote:
> +static int kd35t133_unprepare(struct drm_panel *panel)
> +{
> +	struct kd35t133 *ctx = panel_to_kd35t133(panel);
> +	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
> +	int ret;
> +
> +	if (!ctx->prepared)
> +		return 0;
> +
> +	ret = mipi_dsi_dcs_set_display_off(dsi);
> +	if (ret < 0)
> +		DRM_DEV_ERROR(ctx->dev, "failed to set display off: %d\n",
> +			      ret);
> +
> +	mipi_dsi_dcs_enter_sleep_mode(dsi);
> +	if (ret < 0) {
> +		DRM_DEV_ERROR(ctx->dev, "failed to enter sleep mode: %d\n",
> +			      ret);

It looks like you forgot to assign the return value from 
mipi_dsi_dcs_enter_sleep_mode() to ret.

> +		return ret;
> +	}
> +
> +	regulator_disable(ctx->iovcc);
> +	regulator_disable(ctx->vdd);
> +
> +	ctx->prepared = false;
> +
> +	return 0;
> +}

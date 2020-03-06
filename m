From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v3 3/3] drm/panel: add panel driver for Elida KD35T133 panels
Date: Fri, 06 Mar 2020 02:41:32 +0100
Message-ID: <63369158.4qoTV4tKva@phil>
References: <20200229151506.750242-1-heiko@sntech.de> <20200229151506.750242-3-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200229151506.750242-3-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
Cc: thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, christoph.muellner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, robin.murphy-5wv7dgnIgG8@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, francescolavra.fl-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 29. Februar 2020, 16:15:06 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> 
> Panel driver for the KD35T133 display from Elida, used for example
> in the rk3326-based Odroid Go Advance handheld.
> 
> changes in v3:
> - add missing return value assignment (Francesco)
> - re-sort header includes (Sam)
> changes in v2:
> - rename dsi_generic_write_seq macro to dsi_dcs_write_seq to honor
>   the underlying mipi_dsi_dcs_write (Robin)
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> Reviewed-by: Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>

applied to drm-misc-next with Sam's Review

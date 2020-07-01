From: Adrian Ratiu <adrian.ratiu-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v9 00/11] Genericize DW MIPI DSI bridge and add i.MX 6
 driver
Date: Wed, 01 Jul 2020 23:32:18 +0300
Message-ID: <87imf7j7sd.fsf@collabora.com>
References: <20200609174959.955926-1-adrian.ratiu@collabora.com>
 <6400388.H4HLtoO0Qf@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <6400388.H4HLtoO0Qf@diego>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Laurent Pinchart <Laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Philippe CORNU <philippe.cornu-qxv4g6HH51o@public.gmane.org>, Yannick FERTRE <yannick.fertre-qxv4g6HH51o@public.gmane.org>, Jernej Skrabec <jernej.skrabec-gGgVlfcn5nU@public.gmane.org>, Andrzej Hajda <a.hajda-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, linux-imx-3arQi8VN3Tc@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-stm32-XDFAJ8BFU24N7RejjzZ/Li2xQDfSxrLKVpNB7YpNyf8@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On Wed, 01 Jul 2020, Heiko Stübner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> Hi Adrian, 
> 
> Am Dienstag, 9. Juni 2020, 19:49:48 CEST schrieb Adrian Ratiu: 
>> [Re-submitting to cc dri-devel, sorry about the noise]  Hello 
>> all,  v9 cleanly applies on top of latest next-20200609 tree. 
> 
> at least it doesn't apply on top of current drm-misc-next for me 
> which I really don't understand. 
> 
> Like patch 2/11 does 
> 
> @@ -31,6 +31,7 @@ 
>  #include <drm/drm_probe_helper.h> 
> . 
>  #define HWVER_131<----><------><------>0x31333100<---->/* IP 
>  version 1.31 */ 
> +#define HWVER_130<----><------><------>0x31333000<---->/* IP 
> version 1.30 */ . 
>  #define DSI_VERSION<--><------><------>0x00 #define 
>  VERSION<------><------><------><------>GENMASK(31, 8) 
> 
> where the file currently looks like 
> 
> #include <drm/drm_atomic_helper.h> #include <drm/drm_bridge.h> 
> #include <drm/drm_crtc.h> #include <drm/drm_mipi_dsi.h> #include 
> <drm/drm_modes.h> #include <drm/drm_of.h> #include 
> <drm/drm_print.h> 
> 
> #define HWVER_131			0x31333100	/* IP 
> version 1.31 */ 
> 
> #define DSI_VERSION			0x00 #define VERSION 
> GENMASK(31, 8) 
>  
> even in Linux-next 
>  
> So I guess ideally rebase on top of drm-misc-next

I will send a rebase on top of drm-misc-next soon (with the last 
DTS nitpick fixed and the latest acks and reviewed-by tags added).

In the meantime I also found someone within Collabora who has a RK 
with a DSI panel and found a bug (likely clock is not enabled 
early enough to access the cfg registers to get the version for 
regmap).

I'm super happy this is getting tested on RK, thank you!

>
>
> Thanks
> Heiko

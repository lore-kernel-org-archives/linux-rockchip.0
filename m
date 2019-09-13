From: Tony McKahan <tonymckahan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [U-Boot] rk3288: HDMI out causing boot hang
Date: Thu, 12 Sep 2019 23:21:22 -0400
Message-ID: <CAERgokkJiuGZ2aoWthA+eFQ5r_Vsv2mp1FGdEghGsu2MaC1Nvg@mail.gmail.com>
References: <CAMty3ZDo6Hk9swGcaZ0RNC-4KeQ=EJS9gu_-+ewmM618GHhO+w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAMty3ZDo6Hk9swGcaZ0RNC-4KeQ=EJS9gu_-+ewmM618GHhO+w-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Anatolij Gustschin <agust-ynQEQJNshbs@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hello Jagan,

On Thu, Sep 12, 2019 at 10:50 PM Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> wrote:
>
> Hi All,
>
> Did anyone tried HDMI out on rk3288? Enabling HDMI out causing boot
> hang, during stdout initialization from console.c
>
> Enabled below configs and stdin/out/err environment to probe the
> DM_VIDEO, seems like the console initialization hangs during stdout
> initialization.
>
> Log:
> Model: Tinker-RK3288
> DRAM:  2 GiB
> MMC:   dwmmc@ff0c0000: 1
> Loading Environment from MMC... OK
> 1. console_init_r
> 2. console_init_r
> 2.1 console_init_r
> rk3288_vop_probe
> vop@ff930000: probing regulator 'vcc18_lcd'
> vop@ff930000: probing regulator 'VCC18_LCD'
> vop@ff930000: probing regulator 'vdd10_lcd_pwren_h'
> vop@ff930000: probing regulator 'vdd10_lcd'
> vop@ff930000: probing regulator 'VDD10_LCD'
> vop@ff930000: probing regulator 'vcc33_lcd'
> rk_display_init(vop@ff930000, 2139095040, endpoint@0)
> vop_id=0
> remote vop_id=0
> rk_display_init(vop@ff930000): no UCLASS_DISPLAY for remote-endpoint
> Device failed: ret=-22
> rk_display_init(vop@ff930000, 2139095040, endpoint@1)
> vop_id=1
> remote vop_id=0
> Found device 'hdmi@ff980000', disp_uc_priv=7cf71710
> rk3288_hdmi_probe
> hdmi@ff980000: probing regulator 'vcc50_hdmi'
> rk_hdmi_probe: 1
> rk_hdmi_probe: 2
> rk_hdmi_probe: done!
> fb=7f800000, size=2560 1440
> rk3288_vop_probe done!
>
> Changes:
> +CONFIG_DM_VIDEO=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> +CONFIG_CONSOLE_SCROLL_LINES=10
>
> +#define ROCKCHIP_DEVICE_SETTINGS \
> +               "stdout=serial,vidconsole\0" \
> +               "stderr=serial,vidconsole\0"
>
> Any inputs?

I saw this some time ago with Armbian with ASUS Tinker Board, but
thought I had somehow misconfigured it, and simply disabled it.  I can
confirm it hangs for me though.

>
> Jagan.
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
